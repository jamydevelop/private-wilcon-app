import "package:flutter/material.dart";

class ModalCloseButtonWidget extends StatelessWidget {
  const ModalCloseButtonWidget({super.key, this.onPress});
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: const Icon(Icons.close_outlined),
    );
  }
}
