import 'package:custom_selectable_text/custom_selectable_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomSelectableText(
          "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
          textAlign: TextAlign.center,
          items: [
            CustomSelectableTextItem(controlType: SelectionControlType.copy),
            CustomSelectableTextItem(
                controlType: SelectionControlType.selectAll),
            CustomSelectableTextItem(
                label: "Share",
                controlType: SelectionControlType.other,
                onPressed: (text) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$text is successfully shared"),
                  ));
                }),
          ],
        ),
      ),
    );
  }
}
