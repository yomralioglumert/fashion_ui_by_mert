import 'package:fashion_ui_by_mert/detay.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
              controller: tabController,
              indicatorColor: Colors.black,
              tabs: const [
                Tab(
                  icon: Icon(Icons.more, color: Colors.grey, size: 22),
                ),
                Tab(
                  icon: Icon(Icons.play_arrow, color: Colors.grey, size: 22),
                ),
                Tab(
                  icon: Icon(Icons.navigation, color: Colors.grey, size: 22),
                ),
                Tab(
                  icon: Icon(Icons.supervised_user_circle,
                      color: Colors.grey, size: 22),
                ),
              ])),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: Icon(Icons.camera_alt))
        ],
        backgroundColor: Colors.transparent,
        elevation: 4,
        title: const Text(
          'FASION APP',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          Container(
            color: Colors.transparent,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/images/model2.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/images/model3.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/images/model2.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/images/model3.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue,
              child: Container(
                height: 550,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/model1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Daisy',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5),
                              Text(
                                '34 mins ago',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.more_vert, color: Colors.grey, size: 22),
                      ],
                    ),
                    SizedBox(height: 15),
                    const Text(
                      "This official website features a ribbed knit zipper jacket that is"
                      "model and styliesh it looks very temparament and is recomend to friends",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detay(
                                    imgPath: 'assets/images/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'assets/images/modelgrid1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/modelgrid1.jpeg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath:
                                            'assets/images/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid2.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/modelgrid2.jpeg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath:
                                            'assets/images/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid3.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/modelgrid3.jpeg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              '# Louis wuitton ',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              '# Chloe ',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.reply,
                            color: Colors.brown.withOpacity(0.2), size: 30),
                        const SizedBox(width: 10),
                        const Text("1.7k",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Colors.grey)),
                        const SizedBox(width: 25),
                        Icon(Icons.comment,
                            color: Colors.brown.withOpacity(0.2), size: 30),
                        const SizedBox(width: 10),
                        const Text(
                          "325",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 235,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.favorite, color: Colors.red, size: 30),
                              SizedBox(width: 5),
                              Text(
                                "2.3k",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagesPath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagesPath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
