import 'package:flutter/material.dart';
import 'package:flutter_basic_web/views/home/home_content_desktop.dart';
import 'package:flutter_basic_web/views/home/home_content_mobile.dart';
//import 'package:flutter_basic_web/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_basic_web/widgets/centered_view/centered_view.dart';
//import 'package:flutter_basic_web/widgets/course_details/course_details.dart';
import "package:flutter_basic_web/widgets/navigation_bar/navigation_bar.dart";
import 'package:flutter_basic_web/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
