import 'package:flutter/material.dart';

class FurnitureDetailScreen extends StatelessWidget {
  const FurnitureDetailScreen({
    super.key,
    required this.data,
  });

  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Image.asset('assets/icons/arrow_back.png'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Transform.scale(
              scale: 1.1,
              child: Image.asset(
                'assets/icons/empty_heart.png',
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Hero(
            tag: data['id'],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Image.asset(
                data['image'],
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data['title'],
                style: const TextStyle(
                  fontFamily: 'Hauora',
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(231, 231, 231, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/icons/minus.png'),
                    const SizedBox(width: 20),
                    const Text(
                      '1',
                      style: TextStyle(
                        fontFamily: 'Hauora',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset('assets/icons/plus.png'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
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
          const SizedBox(height: 16),
          const Text(
            'Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused ue to the furniture help us relax for a longer time. ',
            style: TextStyle(
              fontFamily: 'Hauora',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '¥${data['price']}',
                style: const TextStyle(
                  fontFamily: 'Hauora',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 38,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(121, 147, 174, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Add to cart',
                  style: TextStyle(
                    fontFamily: 'Hauora',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
