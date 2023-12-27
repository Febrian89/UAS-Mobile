import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/home.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var kWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          backgroundGradient(kWidth),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              appBar(kWidth, context),
              backgroundProfile(kWidth),
            ],
          ),
        ],
      ),
    );
  }

  Widget backgroundGradient(kWidth) {
    return Container(
      width: kWidth,
      height: kWidth * 1.2,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff422895),
            Color(0xffc983d9),
          ],
        ),
      ),
    );
  }

  Widget appBar(kWidth, context) {
    return Padding(
      padding: EdgeInsets.only(
        left: kWidth / 20,
        right: kWidth / 20,
        top: kWidth / 7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: kWidth / 18,
              ),
              SizedBox(
                width: kWidth / 20,
              ),
              Text(
                "Profile",
                style: TextStyle(
                  fontSize: kWidth / 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Align(
                child: Badge(
                  alignment: Alignment.topRight,
                  smallSize: 10.0,
                  child: Icon(
                    FontAwesomeIcons.solidBell,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: kWidth / 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Home();
                  }));
                },
                child: Icon(
                  FontAwesomeIcons.basketShopping,
                  color: Colors.white,
                  size: kWidth / 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget backgroundProfile(kWidth) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kWidth / 20, vertical: kWidth / 4),
          child: Container(
            width: kWidth,
            padding: EdgeInsets.symmetric(
              vertical: kWidth / 5,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50))),
            child: Column(
              children: [
                buttons(kWidth),
                summaryAccount(kWidth),
                nameAccount(kWidth),
                Padding(
                  padding: EdgeInsets.only(
                    left: kWidth / 20,
                    right: kWidth / 20,
                    top: kWidth / 10,
                  ),
                  child: const Divider(
                    thickness: 2.0,
                  ),
                ),
                bioAccount(kWidth),
                album(kWidth),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: kWidth / 15),
            child: Container(
              width: kWidth / 3,
              height: kWidth / 3,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: ClipOval(child: Image.asset("assets/profil.jpg")),
            ),
          ),
        ),
      ],
    );
  }

  Widget buttons(kWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kWidth / 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff00cef0),
            ),
            onPressed: () {},
            child: const Text("CONNECT"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff0c2a48),
            ),
            onPressed: () {},
            child: const Text("MESSAGE"),
          )
        ],
      ),
    );
  }

  Widget summaryAccount(kWidth) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: kWidth / 15, vertical: kWidth / 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                "2k",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: kWidth / 20,
                ),
              ),
              Text(
                "Friends",
                style: TextStyle(
                  fontSize: kWidth / 25,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "10",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: kWidth / 20,
                ),
              ),
              Text(
                "Photos",
                style: TextStyle(
                  fontSize: kWidth / 25,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "89",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: kWidth / 20,
                ),
              ),
              Text(
                "Comments",
                style: TextStyle(
                  fontSize: kWidth / 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget nameAccount(kWidth) {
    return Column(
      children: [
        Text(
          "Jessica Jones, 27",
          style: TextStyle(
            fontSize: kWidth / 12,
          ),
        ),
        Text(
          "San Francisco, USA",
          style: TextStyle(
            fontSize: kWidth / 20,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget bioAccount(kWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kWidth / 10),
      child: Column(
        children: [
          SizedBox(
            height: kWidth / 30,
          ),
          Text(
            "An artist of considerable range, Jessica name taken by Melbourne ...",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: kWidth / 26,
              color: Colors.black.withOpacity(.5),
            ),
          ),
          SizedBox(
            height: kWidth / 30,
          ),
          Text(
            "Show more",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: kWidth / 24,
              fontWeight: FontWeight.bold,
              color: const Color(0xff868cae),
            ),
          ),
        ],
      ),
    );
  }

  Widget album(kWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kWidth / 20),
      child: Column(
        children: [
          SizedBox(
            height: kWidth / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Album",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: kWidth / 20,
                  color: const Color(0xff737b87),
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                  fontSize: kWidth / 25,
                  color: const Color(0xff868cae),
                ),
              ),
            ],
          ),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: kWidth / 20,
            mainAxisSpacing: kWidth / 20,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                child: Image.asset(
                  "assets/post1.jpg",
                  fit: BoxFit.fitHeight,
                  width: kWidth / 10,
                  height: kWidth / 10,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                child: Image.asset(
                  "assets/post2.jpg",
                  fit: BoxFit.fitHeight,
                  width: kWidth / 10,
                  height: kWidth / 10,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                child: Image.asset(
                  "assets/post3.jpg",
                  fit: BoxFit.fitHeight,
                  width: kWidth / 10,
                  height: kWidth / 10,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                child: Image.asset(
                  "assets/post4.jpg",
                  fit: BoxFit.fitHeight,
                  width: kWidth / 10,
                  height: kWidth / 10,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                child: Image.asset(
                  "assets/post5.jpg",
                  fit: BoxFit.fitHeight,
                  width: kWidth / 10,
                  height: kWidth / 10,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                child: Image.asset(
                  "assets/post6.jpg",
                  fit: BoxFit.fitHeight,
                  width: kWidth / 10,
                  height: kWidth / 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
