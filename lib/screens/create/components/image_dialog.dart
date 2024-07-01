import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  const ImageDialog({super.key, required this.image, required this.onDelete});

  final dynamic image;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.file(image),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                onDelete();
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              child: const Text(
                'Excluir',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
