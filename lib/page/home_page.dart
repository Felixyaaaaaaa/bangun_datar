import 'package:bangun_datar_felix_c/page/lingkaran_page.dart';
import 'package:bangun_datar_felix_c/page/persegi_page.dart';
import 'package:bangun_datar_felix_c/page/persegi_panjang_page.dart';
import 'package:bangun_datar_felix_c/page/segitiga_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: InkWell( onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPanjangPage()));
                      },
                      child: CustomMenu(title: "Persegi Panjang", imageAsset: "assets/persegi_panjang.jpg"),)),
              Expanded(
                  child: InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage()));
                },
                  child: CustomMenu(title: "Persegi", imageAsset: "assets/persegi.png"),)),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LingkaranPage()));
                  },
                    child: CustomMenu(
                        title: "Lingkaran", imageAsset: "assets/lingkaran.png"),
                  )),
              Expanded(
                  child: InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SegitigaPage()));
                  },
                    child: CustomMenu(
                        title: "Segitiga", imageAsset: "assets/segitiga.jpg"),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      margin: EdgeInsets.symmetric(horizontal: 23, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageAsset, width: 150),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
