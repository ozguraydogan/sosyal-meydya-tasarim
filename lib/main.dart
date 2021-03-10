import 'package:flutter/material.dart';
import 'package:sosyalmedya/shippingcard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
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
              onPressed: () {}),
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
                profilCard("Özgür Aydoğan",
                    "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_1280.jpg"),
                profilCard("İsa As",
                    "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg"),
                profilCard("Murat Erdem",
                    "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_1280.jpg"),
                profilCard("Recep Dell",
                    "https://cdn.pixabay.com/photo/2014/11/02/09/15/man-513529_1280.jpg"),
                profilCard("Mert Un",
                    "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_1280.jpg"),
                profilCard("Hacıvat ka",
                    "https://cdn.pixabay.com/photo/2020/11/10/01/34/pet-5728249_1280.jpg"),
                profilCard("Dilara Deniz",
                    "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_1280.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 10,

          ),
          ShippingCard(),
          ShippingCard(),
          ShippingCard(),
        ],
      ),
    );
  }



  Widget profilCard(String userName, String imageLink) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageLink), fit: BoxFit.cover),
                    color: Colors.white,
                    border: Border.all(width: 2.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(35.0)),
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 2.0, color: Colors.white)),
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
    );
  }
}
