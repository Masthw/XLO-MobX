import 'package:flutter/material.dart';

class ErrorBox extends StatelessWidget {
  const ErrorBox({super.key, this.message});

  final String? message;
  @override
  Widget build(BuildContext context) {
    if (message == null) {
      return Container();
    } else {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          color: Colors.red,
          child: Row(
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Text(
                'Oops! $message. Por favor, tente novamente.',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ))
            ],
          ),
        ),
      );
    }
  }
}
