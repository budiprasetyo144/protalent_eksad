import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: Colors.green,
    ),
  );
}

void showSnackBarError(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: Colors.red,
    ),
  );
}

void showAlert(BuildContext context, String isiAlert) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          isiAlert,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ));
}

void showAlertError(BuildContext context, String isiAlert) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(
              isiAlert,
              style: TextStyle(color: Colors.yellow),
            ),
            backgroundColor: Colors.red,
          ));
}
