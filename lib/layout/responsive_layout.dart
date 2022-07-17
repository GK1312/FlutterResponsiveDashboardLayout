import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopScaffold;
  final Widget tabletScaffold;
  final Widget mobileScaffold;
  const ResponsiveLayout({
    Key? key,
    required this.desktopScaffold,
    required this.tabletScaffold,
    required this.mobileScaffold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
