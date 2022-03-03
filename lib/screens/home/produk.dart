import 'package:flutter/material.dart';

class Produk extends StatefulWidget {
  @override
  _ProdukState createState() => new _ProdukState();
}

class _ProdukState extends State<Produk> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SafeArea(
      child: new Container(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Produk'),
                ]),
          )),
    ));
  }
}