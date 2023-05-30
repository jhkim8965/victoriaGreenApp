import 'package:flutter/material.dart';
import 'package:victoria_green_app/widgets/custom_button.dart';

class MessageDialog extends StatelessWidget {
  final Text title, message;

  const MessageDialog({
    super.key,
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      //Dialog Main Title
      title: Column(
        children: [
          title,
        ],
      ),
      //
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          message,
        ],
      ),
      actions: [
        CustomButton(
          text: const Text('Button'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
