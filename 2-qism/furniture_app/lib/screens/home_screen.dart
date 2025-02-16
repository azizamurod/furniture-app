import 'package:flutter/material.dart';

import '/widgets/bottom_nav_bar.dart';
import '/widgets/furniture_card.dart';
import '/widgets/furniture_types_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color.fromRGBO(246, 246, 246, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            const SizedBox(height: 80),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Flexible(
                  child: Text(
                    'Find the home furniture',
                    style: TextStyle(
                      fontFamily: 'Hauora',
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(40, 40, 40, 1),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset('assets/icons/menu.png'),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const FurnitureTypesSection(),
            const SizedBox(height: 29),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                ...[
                  {
                    'id': 1,
                    'image': 'assets/images/furn_img1.png',
                    'title': 'Room Sofa',
                    'price': 2500,
                    'is_liked': true,
                    'colors': const [
                      Color.fromRGBO(121, 147, 174, 1),
                      Color.fromRGBO(201, 168, 131, 1),
                      Color.fromRGBO(40, 40, 40, 1),
                    ],
                  },
                  {
                    'id': 2,
                    'image': 'assets/images/furn_img2.png',
                    'title': 'Toshiba Tv',
                    'price': 35250,
                    'is_liked': false,
                    'colors': const [
                      Color.fromRGBO(65, 65, 66, 1),
                      Color.fromRGBO(113, 113, 114, 1),
                      Color.fromRGBO(40, 40, 40, 1),
                    ],
                  },
                  {
                    'id': 3,
                    'image': 'assets/images/furn_img3.png',
                    'title': 'Table Lamp',
                    'price': 2500,
                    'is_liked': false,
                    'colors': const [
                      Color.fromRGBO(50, 50, 50, 1),
                      Color.fromRGBO(201, 168, 133, 1),
                      Color.fromRGBO(160, 90, 63, 1),
                    ],
                  },
                  {
                    'id': 4,
                    'image': 'assets/images/furn_img4.png',
                    'title': 'Wood Table',
                    'price': 2500,
                    'is_liked': false,
                    'colors': const [
                      Color.fromRGBO(148, 113, 70, 1),
                      Color.fromRGBO(201, 168, 133, 1),
                      Color.fromRGBO(40, 40, 40, 1),
                    ],
                  },
                ].map(
                  (el) {
                    return FurnitureCard(
                      image: el['image'] as String,
                      title: el['title'] as String,
                      price: el['price'] as int,
                      isLiked: el['is_liked'] as bool,
                      colors: el['colors'] as List<Color>,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            shape: const CircleBorder(),
            elevation: 0,
            backgroundColor: const Color.fromRGBO(121, 147, 174, 1),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset('assets/icons/nav/qr.png'),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
