import 'package:flutter/material.dart';
import 'package:webdashboard/helpers/responsiveness.dart';
import 'package:webdashboard/widgets/large_sceen.dart';
import 'package:webdashboard/widgets/small_screen.dart';
import 'package:webdashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  // const SiteLayout({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),

      body: ResponsiveWidget(largeScreen: LargeSceen(),smallScreen: SmallScreen(),)
    );
  }
}