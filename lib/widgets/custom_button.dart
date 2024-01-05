import 'package:flutter/material.dart';
import 'package:madeena_curry_house/presentation/pdf_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.menuPage});

  final String menuPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PdfScreen(
                menuPage: menuPage,
              ),
            ));
          },
          child: const Text("Menu")),
    );
  }
}
