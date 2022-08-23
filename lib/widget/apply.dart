import 'package:flutter/material.dart';

class ApplyButton extends StatefulWidget {
  const ApplyButton({Key? key}) : super(key: key);

  @override
  State<ApplyButton> createState() => _ApplyButtonState();
}

class _ApplyButtonState extends State<ApplyButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.black,
              backgroundColor: Colors.blue,
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: () {},
            child: const Text("Apply"),
          ),
        ],
      ),
    );
  }
}
