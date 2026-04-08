import 'package:flutter/material.dart';
import 'second_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //membuat data produk
  final String name = "Product A";
  final int price = 20000;
  final String imageUrl = "https://picsum.photos/id/2/5000/3333";
  final String description = "Deskripsi produk Pertama";
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //inisialisasi route
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(
          name: name,
          price: price,
          imageUrl: imageUrl,
          
        ),
        '/second' : (context) => SecondPage(),
      },
    );
  }
}