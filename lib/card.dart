import 'package:flutter/material.dart';
import 'package:trackingisoman/listpeopleb.dart';
import 'listpeoplea.dart';
import 'listpeopleb.dart';
import 'listpeoplec.dart';
import 'listpeopled.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardRegional extends StatefulWidget {
  const CardRegional({Key? key}) : super(key: key);

  @override
  State<CardRegional> createState() => _CardRegionalState();
}

class _CardRegionalState extends State<CardRegional> {

  final int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    'assets/slider1.png',
    'assets/slider2.png',
    'assets/slider3.png',
    'assets/slider4.png',
    'assets/slider5.png',
    'assets/slider6.png',
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                      top: 8),
                  child: Center(
                    child: Text(
                      "Selamat Datang",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 18),
                  child: Center(
                    child: Text(
                      "Tracking banyaknya orang yang isoman",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imgList
                        .map((item) => Container(
                          margin: const EdgeInsets.all(5.0),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(200, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 20.0),
                                      child: const Text(
                                        'Berita kini\nKota tangerang',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ))
                        .toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Wrap(
                      spacing:20,
                      runSpacing: 20.0,
                      children: <Widget>[
                        SizedBox(
                          width:150.0,
                          height: 170.0,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: (){Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=>const PeopleListA()
                                ));},
                            child: Card(
                              color: const Color.fromARGB(255,21, 21, 21),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Icon(Icons.location_on,
                                        color: Colors.red,size: 64,),
                                    ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "Cikupa",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "15 Orang",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:150.0,
                          height: 170.0,
                          child: InkWell(
                            child: Card(
                              color: const Color.fromARGB(255,21, 21, 21),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: const <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Icon(Icons.my_location,
                                          color: Colors.blueAccent,size: 64,),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "Kronjo",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "9 Orang",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                            ),
                            splashColor: Colors.white,
                            onTap: (){Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=>const PeopleListB()
                                ));},
                          ),
                        ),
                        SizedBox(
                          width:150.0,
                          height: 170.0,
                          child: InkWell(
                            child: Card(
                              color: const Color.fromARGB(255,21, 21, 21),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: const <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                        child: Icon(Icons.account_balance,
                                          color: Colors.white60,size: 64,),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "Curug",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "12 Orang",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                            ),
                            splashColor: Colors.white,
                            onTap: (){Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=>const PeopleListC()
                                ));},
                          ),
                        ),
                        SizedBox(
                          width:150.0,
                          height: 170.0,
                          child: InkWell(
                            child: Card(
                              color: const Color.fromARGB(255,21, 21, 21),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: const <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.0),
                                          child: Icon(Icons.location_city,
                                            color: Colors.white,size: 64,),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "Cisoka",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "20 Orang",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                            ),
                            splashColor: Colors.white,
                            onTap: (){Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=>const PeopleListD()
                                ));},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}