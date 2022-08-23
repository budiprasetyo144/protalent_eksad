import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class sendEmail extends StatelessWidget {
  sendEmail({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: const Color(0xff151534),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              final response = await SendEmail(
                  emailController.value.text, messageController.value.text);
              ScaffoldMessenger.of(context).showSnackBar(
                response == 200
                    ? const SnackBar(
                        content: Text('Message Sent!'),
                        backgroundColor: Colors.green)
                    : const SnackBar(
                        content: Text('Failed to send message!'),
                        backgroundColor: Colors.red),
              );
              emailController.clear();
              messageController.clear();
            }
          },
          child: const Text('Send', style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}

Future SendEmail(String email, String message) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  const serviceId = 'service_wava70j';
  const templateId = 'template_koc73cj';
  const userId = 'h4BmDnyWlm3OziBDx';
  final response = await http.post(url,
      headers: {
        'Content-Type': 'application/json'
      }, //This line makes sure it works for all platforms.
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {'to_email': email, 'message': message}
      }));
  return response.statusCode;
}
