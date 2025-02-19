import 'package:flutter/material.dart';
import 'package:furniture_app/screens/furniture_detail_screen.dart';

class FurnitureCard extends StatelessWidget {
  const FurnitureCard({
    super.key,
    required this.data,
  });

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 68) / 2;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => FurnitureDetailScreen(data: data),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: 220,
            width: width,
            margin: const EdgeInsets.only(top: 28),
            padding: const EdgeInsets.only(left: 10, bottom: 19),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, right: 5),
                  child: Image.asset(
                    'assets/icons/${data['is_liked'] ? 'filled' : 'empty'}_heart.png',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['title'],
                      style: const TextStyle(
                        fontFamily: 'Hauora',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        ...data['colors'].map(
                          (color) {
                            return Container(
                              width: 15,
                              height: 15,
                              margin: const EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                color: color,
                                shape: BoxShape.circle,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '¥${data['price']}',
                          style: const TextStyle(
                            fontFamily: 'Hauora',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(121, 147, 174, 1),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/icons/big_plus.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Hero(
              tag: data['id'],
              child: Image.asset(data['image']),
            ),
          ),
        ],
      ),
    );
  }
}
