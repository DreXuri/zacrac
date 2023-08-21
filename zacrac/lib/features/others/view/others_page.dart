import 'package:flutter/material.dart';

import '../../../core/widgets/my_text.dart';

class Others extends StatefulWidget {
  static const String route = '/others_screen';

  const Others({super.key});

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> with TickerProviderStateMixin {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomText(
            data: 'Others Page',
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center),
      ),
    );
  }
}
