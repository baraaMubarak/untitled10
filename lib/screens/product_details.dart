import 'dart:ui';

import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late PageController _pageController;
  int index = 2;
  int counter = 0;
  late Widget selected, unSelected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: 2,
      viewportFraction: 0.8,
    );

    selected = SizedBox(
      height: 10,
      width: 10,
      child: Container(
        decoration: BoxDecoration(color: Colors.pinkAccent.shade100, borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
    unSelected = SizedBox(
      height: 10,
      width: 10,
      child: Container(
        decoration: BoxDecoration(color: Colors.pinkAccent.withOpacity(0.1), borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.shade100,
        title: Text('Product Details'),
        centerTitle: true,
        elevation: 0,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0))),
        titleTextStyle: const TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.w700),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black54,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_rounded,
              color: Colors.black54,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 200,
                  child: PageView(
                    onPageChanged: (index) {
                      setState(() {
                        this.index = index;
                      });
                    },
                    controller: _pageController,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    index == 0 ? selected : unSelected,
                    const SizedBox(
                      width: 5,
                    ),
                    index == 1 ? selected : unSelected,
                    const SizedBox(
                      width: 5,
                    ),
                    index == 2 ? selected : unSelected,
                    const SizedBox(
                      width: 5,
                    ),
                    index == 3 ? selected : unSelected,
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'The Eath Ceramic Coffee Mug',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '280 Kwd',
                  style: TextStyle(fontSize: 18, color: Colors.amber.shade800, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(30)), boxShadow: [
                    BoxShadow(offset: Offset(5, 5), color: Colors.black12.withOpacity(0.08), blurRadius: 15, spreadRadius: 2),
                    BoxShadow(offset: Offset(-5, -5), color: Colors.white, blurRadius: 30),
                  ]),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (counter != 0) counter--;
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.black38,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text('$counter'),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          },
                          icon: Icon(
                            Icons.add,
                            color: Colors.black38,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'About product',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of \nletters, as opposed to using \'Content here, content here\', making it look like readable English.\n Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    child: Text('ADD TO CART',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),),
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:  Colors.pinkAccent.shade100,
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                  ),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
