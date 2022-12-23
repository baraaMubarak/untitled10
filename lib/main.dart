import 'package:flutter/material.dart';
import 'package:untitled10/screens/product_details.dart';

void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'product_details' : (context) => ProductDetails(),
      },
      initialRoute: 'product_details',
    );
  }
}
