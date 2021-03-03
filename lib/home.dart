import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color favcolor;

  @override
  void initState() {
    super.initState();
    favcolor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Assignment"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [Colors.white, Colors.blue])),
              child: Column(
                children: <Widget>[
                  Flexible(
                      flex: 2,
                      child: Container(
                          width: 500,
                          child: Image(
                            image: AssetImage("images/wall.jpeg"),
                            fit: BoxFit.fill,
                          ))),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Container(
                                width: 150,
                                margin: EdgeInsets.all(5),
                                child: Image(
                                  image: AssetImage("images/test1.png"),
                                ))),
                        Flexible(
                            flex: 1,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                width: 150,
                                child: Image(
                                  image: AssetImage("images/test2.jpg"),
                                ))),
                        Flexible(
                            flex: 1,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                width: 150,
                                child: Image(
                                  image: AssetImage("images/test3.jpg"),
                                ))),
                        Flexible(
                            flex: 1,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                width: 150,
                                child: Image(
                                  image: AssetImage("images/test4.jpg"),
                                ))),
                      ],
                    ),
                  ),
                  // Flexible(
                  //     flex: 4,
                  //     child: Container(
                  //       child: Center(
                  //         child: Text("Travis Scott"),
                  //       ),
                  //       color: Colors.red,
                  //     )),
                  Text(
                    'TRAVIS SCOTT',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Flexible(
                      flex: 4,
                      child: ListView(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(""),
                              Text(
                                  "A Houston-born hip-hop artist and producer affiliated with Kanye West's GOOD Music and T.I.'s Grand Hustle, Travis Scott became known during the early 2010s for his heavily Auto-Tuned half-sung/half-rapped vocal style. Within seven years of his mainstream arrival via West's Cruel Summer compilation (2012), on which he served as co-producer and featured artist, Scott attained numerous platinum singles as a lead artist, including a streak of four that began with Antidote, a track off his number three hit debut album, Rodeo (2015). He followed with a pair of number one full-lengths, Birds in the Trap Sing McKnight (2016) and Astroworld (2018), all the while assisting in platinum singles headlined by the likes of Rihanna (Bitch Better Have My Money), SZA (Love Galore), and Drake (Portland), and working extensively with Quavo as Huncho Jack. Whether leading or supporting, Scott's presence was unmistakable, almost always colored with an array of ad-lib trills including but not limited to ..It's lit, Yeah, yeah, and Straight up.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                  textAlign: TextAlign.left),
                              Text(""),
                              Text(""),
                              Text(
                                  "Born Jacques Webster, Travis Scott grew up in a suburb of Houston and began making music as a teenager. He formed a duo called the Graduates with Chris Holloway, and they released an EP in 2009. The following year, he formed another duo, the Classmates, with OG Chess. Scott produced the pair's two full-lengths, Buddy Rich and Cruis'n USA, but they broke up near the end of 2011. After dropping out of college, Scott moved to Los Angeles and began recording music on his own. He met T.I. and eventually Kanye West. Scott was hired as an in-house producer for GOOD Music, and appeared on the label's Cruel Summer compilation in 2012. Scott's debut, Owl Pharaoh, was originally scheduled to be released as a free mixtape in 2012, but as his profile grew (including a placement in XXL Magazine's Freshman Class of 2013), and sample clearance issues, the album wasn't released until May 2013. Featuring guest appearances by T.I. and 2 Chainz (on the single Upper Echelon) as well as Toro y Moi and Justin Vernon of Bon Iver, Owl Pharaoh eventually garnered a nomination for Best Mixtape at the 2013 BET Hip Hop Awards.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                  textAlign: TextAlign.left),
                              Text("")
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (favcolor == Colors.white) {
                        favcolor = Colors.red;
                      } else if (favcolor == Colors.red) {
                        favcolor = Colors.white;
                      }
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: favcolor,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
