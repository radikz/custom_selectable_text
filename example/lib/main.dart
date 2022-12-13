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
          "Lorem Ipsum",
          textAlign: TextAlign.center,
          items: [
            CustomSelectableTextItem.icon(
                icon: const Icon(Icons.copy),
                controlType: SelectionControlType.copy,
                onPressed: (text) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Copied $text text"),
                  ));
                }),
            CustomSelectableTextItem.icon(
              controlType: SelectionControlType.selectAll,
              icon: const Icon(Icons.select_all),
            ),
            CustomSelectableTextItem.icon(
                icon: const Icon(Icons.share),
                onPressed: (text) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Shared $text text"),
                  ));
                }),
            CustomSelectableTextItem.popUpMenuButton(
                child: PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text("Text 1"),
                ),
                const PopupMenuItem(
                  child: Text("Text 2"),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
