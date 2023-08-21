import 'package:flutter/material.dart';
import 'package:zacrac/core/widgets/my_text.dart';


class Overview extends StatefulWidget {
  static const String route = '/home';
  const Overview({Key? key}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomText(
            data: 'Overview Page',
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center),
      ),
    );
  }
}
