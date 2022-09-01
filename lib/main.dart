import 'package:anan/anan/anan.dart';
import 'package:anan/detay.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(modaApp());
}

class modaApp extends StatelessWidget {
  const modaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: anaSayfa(),
    );
  }
}

class anaSayfa extends StatefulWidget {
  const anaSayfa({Key? key}) : super(key: key);

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.black,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Moda Uygulamasi', style: sabitler.titleText),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.red.shade700,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.blue,
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: <Widget>[
          Expanded(
            child: Container(
              // üst taraftaki profil listesi
              color: Colors.blue,
              height: 130,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                  SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                  SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                  SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              // color: Colors.red.shade700,
              child: Container(
                height: 600,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'İrem',
                              style: sabitler.userNameText,
                            ),
                            Text(
                              '34 mins ago',
                              style: sabitler.timeText,
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.blue,
                        size: 22,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Her sey bitermiş zamanla içinde kalmasin söyle bilelim unuttum artik herkes gibisin',
                    style: sabitler.commentText,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Detay(imgPath:'assets/modelgrid1.jpeg')));
                        },
                        child: Hero(
                          tag:'assets/modelgrid1.jpeg' ,
                          child: Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage('assets/modelgrid1.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Detay(imgPath:'assets/modelgrid2.jpeg')));
                            },
                            child: Hero(
                              tag:'assets/modelgrid2.jpeg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage('assets/modelgrid2.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Detay(imgPath:'assets/modelgrid3.jpeg')));
                            },
                            child: Hero(
                              tag:'assets/modelgrid3.jpeg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage('assets/modelgrid3.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2)),
                        child: Center(
                          child: Text(
                            '# Chloe',
                            style: sabitler.subtitleText,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2)),
                        child: Center(
                          child: Text(
                            'Louis Vuitton',
                            style: sabitler.subtitleText,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.reply_rounded,
                        color: Colors.red.withOpacity(0.4),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('1.7k'),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.red.withOpacity(0.4),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('1.7k'),
                      Container(
                        width: MediaQuery.of(context).size.width - 185,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.heart_broken,
                              color: Colors.red,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('2.3k'),
                          ],
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text('Follow', style: sabitler.followButton),
          ),
        ),
      ],
    );
  }
}
