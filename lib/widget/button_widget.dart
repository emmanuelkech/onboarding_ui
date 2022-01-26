import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  final String text;
  final VoidCallback onClicked;

  ButtonWidget({required this.text, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onClicked,
      color: Theme.of(context).primaryColor,
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
