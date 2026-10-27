import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(height: 200, color: Color(0xFF252E48)),

            SingleChildScrollView(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:Row(
                    children: [
                      SizedBox(height: 60,),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hint: Text("Search for an item",style: TextStyle(color: Colors.grey),),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey
                                ),
                              ),
                             focusedBorder: border,
                            enabledBorder: border,
                          ),
                        ),
                      ),

                      SizedBox(width: 15,),
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.deepOrangeAccent,
                        child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                      )
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
                        child: Image.network("https://atlance.in/cdn/shop/articles/blog_banner_38.webp?v=1768290540&width=1100",fit: BoxFit.cover,height: 200,width: 500,)),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
