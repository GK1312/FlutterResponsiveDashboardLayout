import 'package:dashboard_res_ui/layout/desktop_scaffold.dart';
import 'package:dashboard_res_ui/layout/mobile_scaffold.dart';
import 'package:dashboard_res_ui/layout/responsive_layout.dart';
import 'package:dashboard_res_ui/layout/tablet_scaffold.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      desktopScaffold: DesktopScaffold(),
      tabletScaffold: TabletScaffold(),
      mobileScaffold: MobileScaffold(),
    );
  }
}
