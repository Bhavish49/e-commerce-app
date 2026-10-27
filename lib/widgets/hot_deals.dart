import 'package:flutter/material.dart';

class HotDeals extends StatelessWidget {
  final String name;
  final String price;
  final String? oldPrice;
  final String image;

  const HotDeals({
    super.key,
    required this.image,
    required this.price,
    required this.name,
    this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 140,
                width: 120,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(image, fit: BoxFit.cover),
                ),
              ),

              Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(width: 10),
                  Text(
                    oldPrice!,
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),

              Text(
                name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
