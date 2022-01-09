import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;
  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/dress.jpg'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'LAMINATED',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Louis vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                  fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 150,
                              child: const Text(
                                'One button V-neck sling long-sleeved waist female stictching dress',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 30, 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$6500',
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 20)),
                          FloatingActionButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            backgroundColor: Colors.brown,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 330,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Center(
                    child: Text('LAMINATED',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
