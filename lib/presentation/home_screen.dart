import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:madeena_curry_house/widgets/custom_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 72, 136),
        body: Column(
          children: [
            SizedBox(
              height: size.height * 0.4,
              child: Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: size.height * 0.3,
                        autoPlay: true,
                        viewportFraction: 1),
                    items: [
                      "assets/selection-various-cocktails-table.jpg",
                      "assets/top-view-composition-delicious-indonesian-bakso.jpg",
                      "assets/traditional-nasi-lemak-meal-assortment.jpg"
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: size.width,
                              margin: const EdgeInsets.symmetric(horizontal: 0),
                              decoration:
                                  const BoxDecoration(color: Colors.amber),
                              child: Image.asset(
                                i,
                                fit: BoxFit.cover,
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      top: 190,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white,
                        child: Container(
                          height: 150,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 22, 35, 82),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/photo_6107315282004523877_m.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Madeena Curry House",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Text(
              "Menu",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const MenuType(
              foodType: "Cool Drinks Section",
              menuPage: "assets/menu 1.pdf",
            ),
            const MenuType(
              foodType: "Coffee & Tea Section",
              menuPage: "assets/menu 2.pdf",
            ),
            const MenuType(
              foodType: "Goreng Section",
              menuPage: "assets/menu 3.pdf",
            ),
            const MenuType(
              foodType: "Nasi Goreng Section",
              menuPage: "assets/menu 5.pdf",
            ),
            const MenuType(
              foodType: "Nasi Lemak Section",
              menuPage: "assets/menu 6.pdf",
            ),
            const MenuType(
              foodType: "Tosie & Roti Section",
              menuPage: "assets/menu 4.pdf",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
