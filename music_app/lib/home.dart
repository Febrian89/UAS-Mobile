import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var kWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xfff6f8fd),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          FontAwesomeIcons.angleLeft,
          color: Colors.black,
        ),
        title: const Text(
          'Music',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Align(
            child: Badge(
              alignment: Alignment.topRight,
              smallSize: 10.0,
              child: Icon(
                FontAwesomeIcons.solidBell,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Icon(
            FontAwesomeIcons.basketShopping,
            color: Colors.black,
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: ListView(
        children: [
          musicAlbum(kWidth),
          title(kWidth),
          product(kWidth),
        ],
      ),
    );
  }

  Widget musicAlbumItem(kWidth) {
    return SizedBox(
      width: kWidth / 1.1,
      height: kWidth / 1.1,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
            child: Image.asset(
              'assets/dj_music.jpg',
              scale: .83,
            ),
          ),
          SizedBox(
            height: kWidth / 20,
          ),
          Text(
            "\$125",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: kWidth / 20),
          )
        ],
      ),
    );
  }

  Widget musicAlbum(kWidth) {
    return Padding(
      padding: EdgeInsets.only(
        top: kWidth / 20,
      ),
      child: CarouselSlider(
        items: [
          musicAlbumItem(kWidth),
          musicAlbumItem(kWidth),
        ],
        options: CarouselOptions(
          viewportFraction: .949,
          padEnds: true,
          enableInfiniteScroll: false,
          height: kWidth * 1.1,
          disableCenter: true,
        ),
      ),
    );
  }

  Widget title(kWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Music Album',
          style: TextStyle(fontSize: kWidth / 11),
        ),
        SizedBox(
          height: kWidth / 20,
        ),
        Text(
          'Rock music is a genre of popular music.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: kWidth / 23,
            color: Colors.grey,
          ),
        ),
        Text(
          'It developed during and after ther 1960s in the United Kingdom.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: kWidth / 23,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget productItem(kWidth, image, title, price) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(kWidth / 20),
              bottomLeft: Radius.circular(kWidth / 20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: kWidth / 3,
            height: kWidth / 3.4,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kWidth / 50),
                topRight: Radius.circular(kWidth / 50),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(kWidth / 30),
            child: SizedBox(
              width: kWidth / 2,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: kWidth / 24,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(kWidth / 30, 0, kWidth / 30, 0),
            child: Text(
              price,
              style: TextStyle(
                fontSize: kWidth / 27,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget product(kWidth) {
    return Padding(
      padding: EdgeInsets.all(kWidth / 20),
      child: GridView.count(
        childAspectRatio: .75,
        crossAxisCount: 2,
        primary: true,
        shrinkWrap: true,
        crossAxisSpacing: kWidth / 20,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          productItem(kWidth, 'assets/post3.jpg',
              "Queen's Concert | Buy Ticket", "\$ 125"),
          productItem(kWidth, 'assets/post4.jpg',
              "Blue Jazz Concert | Buy Ticket", "\$ 199"),
        ],
      ),
    );
  }
}
