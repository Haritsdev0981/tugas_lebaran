import 'package:flutter/material.dart';
import 'package:tugas_lebaran/detail.dart';

void main() =>
    runApp(
        MaterialApp(debugShowCheckedModeBanner: false, home: lebaran())
    );

class lebaran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "Aplikasi Resep Makanan",
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,),
          textAlign: TextAlign.center,
        ),
      ),
      body: _PageList(),
    );
  }
}
// buat semua text
final baseTextStyle = const TextStyle(
    color: Colors.white, fontFamily: 'Product sans');
// ini buat judul
final bigHeaderTextStyle = baseTextStyle.copyWith(
    fontSize: 20.0, fontWeight: FontWeight.bold);
// buat dekripsi
final descTextStyle = baseTextStyle.copyWith(fontSize: 12.0);

class _PageList extends StatefulWidget {
  @override
  __PageListState createState() => __PageListState();
}

class __PageListState extends State<_PageList> {

  List<String> title = [
    'Bakso Saya Bulat',
    'Pecelele Mas Nabih',
    'Nasi Goreng basah',
    'Soto Lamongan',
    'Soto Babat Tebel',
  ];
  List<String> subTitle = [
    'Bakso yang dibuat dengat hari yang tulus sehinga menjadi bulat',
    'Pecel lele mas nabih asli terkenal sampe 1 Rw',
    'Nasi Goreng basah Nasi yang di gorang tapi basah',
    'Soto Lamongan gurih, asin, manis, hambar, ada semuanya di situ',
    'Soto babat tebel enak tebel banget, tebel banget',
  ];
  List<String> bahan = [
    'Daging (Terserah kambing, sapi, bisa & juga ayamn\n garem\n gula (bisa gula pasir, gula tanah, dan gula lainnya)\n belender(buat giling)\n aer/ air(Masak air biar mateng))',
    'Ikan lele(bisa ikan pari ikan yang lainnya, tpi itu namanya bkn pecel lele)\n garem\n cabe buat sambel\n minyak\n kompor & gas \n Spatula (yg punya sponsbob biar rasanya kyk krabypaty)',
    'Nasi\n kecap \n garem & gula \n aer(Kan namanya nasi goreng basah)\n cabe cabe cabe cabe cabe',
    'Dagin sapi atau kambin atau ayam\n garem \n gula \n Air buat kuah soto \n bawang goreng',
    'Dagin sapi atau kambin atau ayam\n garem \n gula \n Air buat kuah soto \n bawang goreng',
  ];
  List<String> cara = [
    'Daging digiling di blender, trus kasih aer biar mateng giling dagin, kasih garem kasih gula, udah digiling dibentuk, di masak... makan',
    'Ikan lele masukin ke pengorenagn trus di goreng make minyak bimoli(SPONSOR), Trus angkat klo kira kira daj mateng, kasih sampel... makan',
    'Nasi masukin ke penggorengan kasih kecap kasih cabe kasih bawah trus goreng abis itu kasih air klo mau basah trus angkat.... makan',
    'Daging sapi, tomat cabe, kentang siapin. klo udah masukin ke kuah soto nya trus jangan lupa kasih garem biar enak trus cobain....makan',
    'Daging sapi, tomat cabe, kentang siapin. klo udah masukin ke kuah soto nya trus jangan lupa kasih garem biar enak trus cobain....makan',

  ];
  List<String> img = [
    'assets/images/bakso.jpg',
    'assets/images/pecellele.jpeg',
    'assets/images/nasigoreng.jpg',
    'assets/images/sotolamongan.jpg',
    'assets/images/sotobabat.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: title.length,
          itemBuilder: (BuildContext context, int index){
            final nama = title[index].toString();
            final deskripsi = subTitle[index].toString();
            final bhn = bahan[index].toString();
            final tips = cara[index].toString();
            final gambar = img[index].toString();
            return Container(
              height: 200.0,
              // untuk padding dari kartu ke kartu
              padding: EdgeInsets.all(5.0),
              child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    backgroundImage(gambar),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: topContent(nama, deskripsi),
                      ),
                    )
                  ],
                ),

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailMenu(
                      //item yang ingin kita tampilkan saat kita mengklik
                      itemJudul: nama,
                      itemSubJudul: deskripsi,
                      itemBahan: bhn,
                      itemCara: tips,
                      itemImage: gambar,
                    )
                  ));
                },

              ),
            );
          }
      ),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
      decoration: BoxDecoration(
        //Untuk border radius
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.luminosity),
          image: AssetImage(gambar))
      ),
    );
  }

  topContent(String nama, String dekripsi){
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 2.0,
            width: 200.0,
            color: Colors.redAccent,
            padding: EdgeInsets.symmetric(horizontal: 90.0),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            dekripsi,
            style: descTextStyle,
          ),
        ],
      ),
    );
  }

}


