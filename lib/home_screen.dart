import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_app/product_list.dart';
import 'package:shopping_app/widgets/weekly_top_and_Trendy.dart';
import 'package:shopping_app/widgets/hot_deals.dart';
import 'package:shopping_app/widgets/type_name.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(height: 200, color: Color(0xFF252E48)),
          
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(height: 60),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hint: Text(
                                  "Search for an item",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: border,
                                enabledBorder: border,
                              ),
                            ),
                          ),
          
                          SizedBox(width: 15),
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.deepOrangeAccent,
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
          
                    Card(
                      margin: EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: SizedBox(
                        child: Image.network(
                          "https://atlance.in/cdn/shop/articles/blog_banner_38.webp?v=1768290540&width=1100",
                          fit: BoxFit.cover,
                          height: 200,
                          width: 500,
                        ),
                      ),
                    ),




                    // hot deals



          
                    TypeName(heading: "Hot deals"),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           HotDeals(image: hotDeals[0].image, price: hotDeals[0].price, name: hotDeals[0].name, oldPrice: hotDeals[0].oldPrice),
                            HotDeals(image: hotDeals[1].image, price: hotDeals[1].price, name: hotDeals[1].name, oldPrice: hotDeals[1].oldPrice),
                            HotDeals(image: hotDeals[2].image, price: hotDeals[2].price, name: hotDeals[2].name, oldPrice: hotDeals[2].oldPrice)
                          ],
                        ),
                      ),
                    ),



                    //weekly top


                    TypeName(heading: "Weekly top"),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(

                          children: [
                            WeeklyTopAndTrendy(image: weeklyTop[0].image, price: weeklyTop[0].price, name: weeklyTop[0].name),
                            WeeklyTopAndTrendy(image: weeklyTop[1].image, price: weeklyTop[1].price, name: weeklyTop[1].name),
                            WeeklyTopAndTrendy(image: weeklyTop[2].image, price: weeklyTop[2].price, name: weeklyTop[1].name)
                             ],
                        ),
                      ),
                    ),


                    //trendy
          

                    TypeName(heading: "Trendy"),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WeeklyTopAndTrendy(image: trendy[0].image, price: trendy[0].price, name:trendy[0].name),
                            WeeklyTopAndTrendy(image: trendy[1].image, price: trendy[1].price, name:trendy[1].name),
                            WeeklyTopAndTrendy(image: trendy[2].image, price: trendy[2].price, name:trendy[2].name),
                          ],
                        ),
                      ),
                    ),
          
          
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
