import "package:flutter/material.dart";

import "../buttons_widget/filled_button_widget.dart";
import "../buttons_widget/outlined_button_widget.dart";

class WarehouseDialogWidget extends StatefulWidget {
  const WarehouseDialogWidget({super.key});

  @override
  State<WarehouseDialogWidget> createState() => _WarehouseDialogWidgetState();
}

class _WarehouseDialogWidgetState extends State<WarehouseDialogWidget> {
  String? selectedManager = "Kevin Hilandro";
  List<String> managers = <String>["Kevin Hilandro", "Another Manager"];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 500,
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicWidth(
          // Adjust width based on content
          child: Column(
            mainAxisSize: MainAxisSize.min, // Adjust height based on content
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Warehouse Manager",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Text(
                "Select store or warehouse manager.",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: selectedManager,
                decoration: InputDecoration(
                  labelText: "Manager-In-Charge",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 14.0),
                ),
                items: managers.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedManager = newValue;
                  });
                },
              ),
              const SizedBox(height: 24.0),
              FilledButtonWidget(
                titleText: "Select",
                onPress: () {
                  Navigator.pop(context);
                  //handle logic here
                },
              ),
              const SizedBox(height: 16.0),
              OutlinedButtonWidget(
                titleText: "Back",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
