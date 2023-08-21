import 'package:flutter/material.dart';
import 'package:zacrac/core/widgets/my_text.dart';
class Settings extends StatefulWidget {
  static const String route = '/settings';
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomText(
            data: 'Settings Page',
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center),
      ),
    );
  }
}
