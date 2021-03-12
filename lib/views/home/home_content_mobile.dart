import 'package:flutter/material.dart';
import 'package:flutter_basic_web/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_basic_web/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  //const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        SizedBox(
          height: 50,
        ),
        CallToAction('Join Course'),
      ],
    );
  }
}
