import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShippingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(20),
          child: Container(
              padding: EdgeInsets.all(15.0),
              width: double.infinity,
              height: 400.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.indigo,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_1280.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 13.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "İsim Soyad",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text("1 saat sonra"),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "Resim açıklaması.",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Image.network(
                    "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_1280.jpg",
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      iconButon(
                        ikonum: Icons.favorite,
                        yazi: "Beğen",
                        fonksiyonum: () {
                          print("Beğen");
                        },
                      ),
                      // fonksiyonlar içerisine butonların yapıcağı işlemler yazılacak.
                      iconButon(
                          ikonum: Icons.message,
                          yazi: "Yorum yap",
                          fonksiyonum: () {
                            print("Yorum Yap");
                          }),
                      // ignore: deprecated_member_use
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            color: Colors.grey,
                          ),
                          label: Text(
                            "Paylaş",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ))),
    );
  }
}

class iconButon extends StatelessWidget {
  final IconData ikonum;

  final String yazi;

  final fonksiyonum;

  iconButon({this.ikonum, this.yazi, this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {},
        // Beğen butonuna basıldığında yapılacaklar
        child: Container(
          padding: EdgeInsets.all(1.0),
          child: Row(
            children: [
              Icon(ikonum, color: Colors.grey),
              SizedBox(
                width: 8.0,
              ),
              Text(
                yazi,
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
