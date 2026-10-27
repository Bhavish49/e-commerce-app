import 'package:flutter/material.dart';


class HotDeals extends StatelessWidget {
  const HotDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 160,
                width: 150,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    "https://maresijewelry.com/cdn/shop/articles/Italian_Men_s_Fashion_with_Linen_Shirt_and_White_Trousers.webp?v=1787500569&width=1200",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Row(
                children: [
                  Text(
                    "\$120",
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(width: 10,),
                  Text(
                    "\$160",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 13
                    ),
                  ),
                ],
              ),

              Text("Mens trousers",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
            ],
          ),
        ],
      ),
    );
  }
}
