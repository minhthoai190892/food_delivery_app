import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({
    Key? key,
    required this.title,
    required this.function, this.textStyle,
  }) : super(key: key);
  final String title;
  Function() function;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(title,style:textStyle ,),
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).primaryColor,
      ),
    );
  }
}
