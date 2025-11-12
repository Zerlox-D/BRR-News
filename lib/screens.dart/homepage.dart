import 'package:flutter/material.dart';
import 'package:newsapp/screens.dart/secondpage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<List<dynamic>> news = [
    [
      "assets/bengaluru.png",
      "After Bengaluru, Water Crisis Hits Ghaziabad: City Declared ‘Red Zone’ As Groundwater Level Declines",
      "Ghaziabad Water Crisis: After Bengaluru, now water crisis is hitting Ghaziabad city in Uttar Pradesh. The whole city has been declared a ‘Red Zone’ after the groundwater level has reached alarming levels. It is not just Ghaziabad, the groundwater level in other districts such as Bundelkhand, Mahoba, Lalitpur, Jhansi, Banda, and Hamirpur have also shown significant declines."
    ],
    [
      "assets/apple.png",
      "Apple to pay 490 million to settle allegations that it misled investors about iPhone sales in China",
      "Apple has agreed to pay 490 million to settle a class-action lawsuit alleging CEO Tim Cook misled investors about a steep downturn in iPhone’s sales in China that culminated in a jarring revision to the company’s revenue forecast. The preliminary settlement filed Friday in Oakland, California, federal court stems from a shareholder lawsuit focused on the way Apple relayed information about how iPhone models released in September 2018 were performing in China, one of the company's biggest markets."
    ],
    [
      "assets/NASA.png",
      "NASA finds clues that could help solve issues with ‘struggling’ Voyager 1",
      "NASA’s Voyager 1 spacecraft, the farthest man-made object in space, has been sending back “incoherent” data back to mission controllers since November 2023. The space agency on Thursday said it identified what issue is causing the pioneering spacecraft to send back “nonsense” to Earth.According to NASA, the issue seems to be with the flight data subsystem, (FDS) one of the three onboard computers, which packages science and engineering data before it is sent back to our planet by the telemetry modulation unit."
    ],
    [
      "assets/UCL.png",
      "Champions League quarter-finals: Arsenal face Bayern Munich and Manchester City play Real Madrid",
      "Arsenal and Man City will meet in the Champions League semi-final if successful in their last-eight ties; former Spurs star Harry Kane returns to north London to face Arsenal; PSG play Barcelona, Borussia Dortmund meet Atletico Madrid; quarter-final ties on April 9/10 and April 16/17Manchester City will face Real Madrid in the Champions League quarter-final while Arsenal were drawn against Bayern Munich."
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Colors.white),
                height: 43,
                width: 400,
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Text(
                      " Search for news",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )),
            backgroundColor: Colors.indigo),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Secondscreen(broadcast: news, index: index),
                  ));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          color: Colors.white,
                        ),
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(news[index][0]),
                              Text(
                                news[index][1],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.justify,
                              )
                            ]))
                  ],
                ),
              ),
            );
          },
          itemCount: news.length,
        ));
  }
}
