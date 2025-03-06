import 'package:flutter/material.dart';

import '../../../../../core/framework/utils/spacings.dart';
import '../components/app_bar_component.dart';

class ScreenPageWrapper extends StatelessWidget {
  const ScreenPageWrapper({
    super.key,
    required this.body,
    this.expandedFooter,
    this.header,
    this.wrapperColor,
    this.wrapperPadding,
    this.safeAreaBottom,
    this.staticFooter,
    this.appBarTitle = '',
    this.scrollable = true,
  });

  final Widget? header;
  final List<Widget> body;
  final List<Widget>? expandedFooter;
  final Color? wrapperColor;
  final EdgeInsets? wrapperPadding;
  final bool? safeAreaBottom;
  final List<Widget>? staticFooter;
  final String appBarTitle;
  final bool scrollable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wrapperColor,
      appBar: appBarTitle.isNotEmpty
          ? PreferredSize(
              preferredSize: Size.fromHeight(Spacings.spacing80),
              child: MaterialAppBarComponent(title: appBarTitle),
            )
          : null,
      bottomNavigationBar: staticFooter != null
          ? Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Spacings.spacing26,
              ),
              child: Wrap(
                direction: Axis.vertical,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                children: staticFooter ?? [],
              ),
            )
          : null,
      body: Padding(
        padding: wrapperPadding ??
            const EdgeInsets.symmetric(
              horizontal: 24,
            ),
        child: SafeArea(
          bottom: safeAreaBottom ?? true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (header != null) SingleChildScrollView(child: header!),
              if (scrollable)
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: body,
                    ),
                  ),
                )
              else
                Expanded(
                  child: Column(
                    children: body,
                  ),
                ),
              if (expandedFooter != null)
                Padding(
                  padding: EdgeInsets.only(
                    bottom: Spacings.spacing8,
                  ),
                  child: Column(children: expandedFooter!),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
