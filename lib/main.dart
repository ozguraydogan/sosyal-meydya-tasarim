import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sosyalmedya/profilsayfasi.dart';
import 'package:sosyalmedya/shippingcard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32,
            ),
            onPressed: () {}),
        title: Text("OZGURAPP",
            style: TextStyle(fontSize: 18.0, color: Colors.grey)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.red[400],
                size: 32,
              ),
              onPressed: () {
                showModalBottomSheet(context: context, builder:(BuildContext context){
                  return Column(
                    children: [
                      duyuru("Kamil seni takip etti.","3 dakika önce"),
                      duyuru("Recep seni takip etti.","1 hafta önce"),
                      duyuru("Elon Musk gönderine yorum yaptı.","10 saat önce"),
                    ],
                  );
                });
              }),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(0, 4), blurRadius: 5.0)
            ]),
            width: 200.0,
            height: 100.0,
            alignment: Alignment.center,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilCard(
                  "Özgür",
                  "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_1280.jpg",
                  context,"Özgür Aydoğan","https://cdn.pixabay.com/photo/2015/10/30/20/13/boat-1014711_1280.jpg"
                ),
                profilCard(
                  "As",
                  "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg",
                  context,"İsa As","https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_1280.jpg"
                ),
                profilCard(
                  "moncaps",
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_1280.jpg",
                  context,"Murat Erdem","https://cdn.pixabay.com/photo/2015/03/16/10/59/sunset-675847_1280.jpg"
                ),
                profilCard(
                  "Gaming",
                  "https://cdn.pixabay.com/photo/2014/11/02/09/15/man-513529_1280.jpg",
                  context,"Recep Den","https://cdn.pixabay.com/photo/2014/10/26/17/19/fisherman-504098_1280.jpg"
                ),
                profilCard(
                  "Un",
                  "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_1280.jpg",
                  context,"Mert Un","https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_1280.jpg"
                ),
                profilCard(
                  "Karagoz",
                  "https://cdn.pixabay.com/photo/2020/11/10/01/34/pet-5728249_1280.jpg",
                  context,"Hacıvat Karagöz","https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ShippingCard(
            profilResmLinki:
                "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_1280.jpg",
            aciklama: "Geçen yaz çekildim.",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_1280.jpg",
            isimSoyad: "Murat Erdem",
            gecenSure: "1 saat Sonra",
          ),
          ShippingCard(
              profilResmLinki:
                  "https://cdn.pixabay.com/photo/2020/11/10/01/34/pet-5728249_1280.jpg",
              aciklama: "İlk Story.",
              gonderiResimLinki:
                  "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_1280.jpg",
              isimSoyad: "Murat Erdem",
              gecenSure: "3saat Sonra"),
          ShippingCard(
              profilResmLinki:
                  "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_1280.jpg",
              aciklama: "Artık valorant oynamiycam.",
              gonderiResimLinki:
                  "https://cdn.pixabay.com/photo/2020/11/10/01/34/pet-5728249_1280.jpg",
              isimSoyad: "Ela",
              gecenSure: "2 saat Sonra"),
        ],
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: null,
        backgroundColor: Colors.green[500],
        child: Icon(Icons.add_a_photo,color: Colors.white,size: 25.0,)
      ),
    );
  }

  Padding duyuru(String mesaj,String gecenSure) {
    return Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(mesaj,style: TextStyle(
                            fontSize: 15.0
                          ),),
                          Text(gecenSure),
                        ],
                      ),
                    );
  }

  Widget profilCard(String userName, String imageLink, BuildContext context,
      String isimSoyad, String kapakResim) {
    return Material(
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProfilSayfasi(
                            profilResimLinki: imageLink,
                            kullaniciAdi: userName,
                            isimSoyad: isimSoyad,
                            kapakResimLink: kapakResim,
                          )));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Hero(tag: userName,
                        child: Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(imageLink),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              border: Border.all(width: 2.0, color: Colors.grey),
                              borderRadius: BorderRadius.circular(35.0)),
                        ),
                      ),
                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25),
                            border:
                                Border.all(width: 2.0, color: Colors.white)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7,
                    width: 5,
                  ),
                  Text(
                    userName,
                    style: TextStyle(fontSize: 15.0, color: Colors.black),
                  )
                ],
              ),
            )));
  }
}
