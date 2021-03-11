import 'package:flutter/material.dart';
import 'package:sosyalmedya/shippingcard.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResimLink;
  final String profilResimLinki;

  const ProfilSayfasi({Key key, this.isimSoyad, this.kullaniciAdi, this.kapakResimLink, this.profilResimLinki}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 230.0,
                  //color: Colors.yellow,
                ),
                Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      image: DecorationImage(
                          image: NetworkImage(
                              kapakResimLink),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 0.0,
                  child: Hero(tag: kullaniciAdi,
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(width: 2.0, color: Colors.white),
                          image: DecorationImage(
                              image: NetworkImage(
                                  profilResimLinki),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  top: 185.0,
                  left: 150.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isimSoyad,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        kullaniciAdi,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 130.0,
                  right: 20.0,
                  child: Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200],
                      border: Border.all(width: 2.0, color: Colors.white),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle,
                          size: 18.0,
                        ),
                        Text(
                          "Takip et",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  color: Colors.white,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 75,
              color: Colors.grey.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sayac("Takipçi","20K"),
                  sayac("Takip","500"),
                  sayac("Paylaşım","75")

                ],
              ),
            ),
            ShippingCard(
                profilResmLinki:
                "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_1280.jpg",
                aciklama: "Artık valorant oynamiycam.",
                gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2020/11/10/01/34/pet-5728249_1280.jpg",
                isimSoyad: "Ela",
                gecenSure: "2 saat Sonra")
          ],
        ));
  }

  Column sayac(String baslik,String sayi) {
    return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sayi,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    Text(
                      baslik,
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]),
                    ),
                  ],
                );
  }
}
