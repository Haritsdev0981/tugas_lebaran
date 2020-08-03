import 'package:flutter/material.dart';

class DetailMenu extends StatelessWidget {

  final String itemJudul;
  final String itemSubJudul;
  final String itemBahan;
  final String itemCara;
  final String itemImage;

  const DetailMenu(
      {Key key,
      this.itemJudul,
      this.itemSubJudul,
      this.itemBahan,
      this.itemCara,
      this.itemImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
            'Detail Resep'
        ),
      ),
      body: SingleChildScrollView( //SinghleChildScrollView itu untuk scroll, cara nya alt + enter = widget
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Center(
                child: Image.asset(itemImage,
                  height: 200.0,
                  width: 500.0,
                  fit: BoxFit.fitWidth,),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Text(
                  itemJudul,
                  style: TextStyle(
                      color: Colors.deepOrangeAccent, fontSize: 24.0),
                ),
              ),
              Text('Resep ' + itemSubJudul + ' Mudah dan Praktis'
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                child: Container(
                  height: 3.0, width: 400.0, color: Colors.deepOrange,),
              ),
              Text('Bahan-bahan', style: TextStyle(color: Colors.orange,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
              ),
              Text(itemBahan
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text('Cara Memasak', style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
                ),
              ),
              Text(itemCara
              ),
            ],
          ),
        ),
      ),
    );
  }
}
