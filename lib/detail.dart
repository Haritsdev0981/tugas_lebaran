import 'package:flutter/material.dart';

class DetailMenu extends StatelessWidget {

  final String itemJudul;
  final String itemSubJudul;
  final String itemBahan;
  final String itemCara;
  final String itemImage;

  const DetailMenu({Key key, this.itemJudul, this.itemSubJudul, this.itemBahan, this.itemCara, this.itemImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Resep'
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            itemImage,
            width: 500.0,
            height: 250.0,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Cara Memasak",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              itemBahan,
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
          ),
        ],
      ),

    );
  }
}
