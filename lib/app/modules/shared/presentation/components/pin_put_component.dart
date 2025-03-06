import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assessment/core/framework/utils/colors.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/framework/utils/spacings.dart';

class PinPutComponent extends StatefulWidget {
  final Function(String)? onPinSubmitted;
  final int pinCount;
  final Function(String)? onChanged;

  const PinPutComponent({
    super.key,
    this.onPinSubmitted,
    this.pinCount = 6,
    this.onChanged,
  });

  @override
  State<PinPutComponent> createState() => _PinPutComponentState();
}

class _PinPutComponentState extends State<PinPutComponent> {
  final focusNode = FocusNode();
  final controller = TextEditingController();
  List<String> _pin = []; // To store the pin characters
  List<Timer?> _timers = []; // To control character visibility timers

  @override
  void initState() {
    super.initState();
    _pin =
        List<String>.filled(widget.pinCount, '•'); // Initialize pin with dots
    _timers =
        List<Timer?>.filled(widget.pinCount, null); // Initialize timers list
  }

  @override
  void dispose() {
    // Dispose timers and other resources
    for (var timer in _timers) {
      timer?.cancel();
    }
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  void _onPinChanged(String value) {
    // Clear any existing timers for all indexes greater than the current input length
    for (int i = value.length; i < widget.pinCount; i++) {
      _timers[i]?.cancel();
      _pin[i] =
          '•'; // Obscure characters for indices greater than current input
    }

    setState(() {
      // Show each typed character for 500ms before obscuring
      for (int i = 0; i < value.length; i++) {
        _showCharacterTemporarily(i, value[i]);
      }
    });

    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }
  }

  void _showCharacterTemporarily(int index, String character) {
    setState(() {
      _pin[index] = character; // Show typed character
    });

    // Cancel any existing timer for this index
    _timers[index]?.cancel();

    // Set a timer to replace the character with a dot after 500ms
    _timers[index] = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        _pin[index] = '•'; // Replace with dot after 500ms
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: Spacings.spacing54,
      height: Spacings.spacing60,
      textStyle: const TextStyle(
        fontSize: Spacings.spacing28,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      decoration: BoxDecoration(
        color: AppColors.colorF6F6F7,
        borderRadius: BorderRadius.circular(
          Spacings.spacing10,
        ),
        border: Border.all(
          color: AppColors.colorF6F6F7,
        ),
        shape: BoxShape.rectangle,
      ),
    );

    return Column(
      children: [
        Pinput(
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          length: widget.pinCount,
          controller: controller,
          focusNode: focusNode,
          defaultPinTheme: defaultPinTheme,
          obscureText: true,
          obscuringWidget: const CircleAvatar(
            backgroundColor: Colors.black,
            radius: Spacings.spacing8,
          ),
          onChanged: _onPinChanged,
          // Handle pin changes
          onCompleted: widget.onPinSubmitted,
          hapticFeedbackType: HapticFeedbackType.lightImpact,
          cursor: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: Spacings.spacing8),
                width: Spacings.spacing20,
              ),
            ],
          ),

          focusedPinTheme: defaultPinTheme.copyWith(
            decoration: defaultPinTheme.decoration!.copyWith(
              borderRadius: BorderRadius.circular(
                Spacings.spacing10,
              ),
              color: AppColors.colorF6F6F7,
              border: Border.all(
                width: 1,
                color: AppColors.color43B888,
              ),
            ),
          ),

          submittedPinTheme: defaultPinTheme.copyWith(
            decoration: defaultPinTheme.decoration!.copyWith(
              color: AppColors.colorF6F6F7,
              borderRadius: BorderRadius.circular(
                Spacings.spacing10,
              ),
              border: Border.all(
                width: 1,
                color: AppColors.colorF6F6F7,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
