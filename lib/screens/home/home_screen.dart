import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';

import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';
import 'components/search_form.dart';
import './beranda.dart';
import './produk.dart';
import './akun.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


int _currentIndex =0 ;

List _pages = [
  Beranda(),
  Produk(),
  ProfilePage(),
];

  //fungtion
void onTabTapped(int index){
  setState(() {
    _currentIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
        Image.asset("assets/images/logoApp1.png",
          height: 99.0,
          width: 120.0,
        ),
         ]
          ),
        ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(),
              child: SearchForm(),
            ),
            Image.asset('assets/images/Banner.png'),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap:
          onTabTapped,
          currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
            ),
        ],
      ),
    );
  }
}
