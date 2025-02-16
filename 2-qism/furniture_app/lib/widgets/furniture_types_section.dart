import 'package:flutter/material.dart';

class FurnitureTypesSection extends StatelessWidget {
  const FurnitureTypesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 103,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          AllCard(),
          FurnitureTypeCard(icon: 'assets/icons/furn_1.png'),
          FurnitureTypeCard(icon: 'assets/icons/furn_2.png'),
          FurnitureTypeCard(icon: 'assets/icons/furn_3.png'),
          FurnitureTypeCard(icon: 'assets/icons/furn_1.png'),
          FurnitureTypeCard(icon: 'assets/icons/furn_2.png'),
          FurnitureTypeCard(icon: 'assets/icons/furn_3.png'),
        ],
      ),
    );
  }
}

class AllCard extends StatelessWidget {
  const AllCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      width: 72,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(121, 147, 174, 1),
        borderRadius: BorderRadius.circular(13),
      ),
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      child: const Text(
        'All',
        style: TextStyle(
          fontFamily: 'Hauora',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}

class FurnitureTypeCard extends StatelessWidget {
  const FurnitureTypeCard({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 81,
      margin: const EdgeInsets.only(
        right: 20,
        top: 11,
        bottom: 11,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: const Color.fromRGBO(207, 207, 207, 1),
      ),
      child: Image.asset(icon),
    );
  }
}
