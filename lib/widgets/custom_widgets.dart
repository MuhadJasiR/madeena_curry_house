import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:madeena_curry_house/widgets/custom_button.dart';

class MenuType extends StatelessWidget {
  const MenuType({
    super.key,
    required this.foodType,
    required this.menuPage,
  });

  final String foodType;
  final String menuPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$foodType    -->",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.italic),
                ),
                CustomButton(
                  menuPage: menuPage,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
