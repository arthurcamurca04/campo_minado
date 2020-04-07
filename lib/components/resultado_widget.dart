import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool venceu;
  final Function onReiniciar;

  ResultadoWidget({
    @required this.venceu,
    @required this.onReiniciar,
  });

  Color _getColor() {
    if (venceu == true) {
      return Colors.green[300];
    } else if (venceu == false) {
      return Colors.red[300];
    } else {
      return Colors.yellow;
    }
  }

  IconData _getIcon() {
    if (venceu == true) {
      return Icons.sentiment_very_satisfied;
    } else if (venceu == false) {
      return Icons.sentiment_dissatisfied;
    } else {
      return Icons.sentiment_satisfied;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
          child: Container(
        padding: EdgeInsets.all(10),
        child: CircleAvatar(
          backgroundColor: _getColor(),
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              _getIcon(),
              size: 35,
              color: Colors.black,
            ),
            onPressed: onReiniciar,
          ),
        ),
      )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120);
}
