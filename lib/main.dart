import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Netflix clone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List shows = ["Money Heist", "Dark", "Sherlock", "Never Have I Ever"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                // ignore: sized_box_for_whitespace
                Container(
                    width: double.infinity,
                    height: 350.0,
                    child: Image.network(
                      //"https://akm-img-a-in.tosshub.com/indiatoday/images/story/202108/Money-Heist-Season-5.jpg?pgFYOwq6GKSxn534Bmq6r5YwsPDMQsir&size=770:433",
                      "https://cdn.thetealmango.com/wp-content/uploads/2021/06/se-1.jpg",
                      fit: BoxFit.fill,
                      
                      
                    )),
                    Container(
                      height: 350.0,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xCC000000),
                            Color(0x00000000),
                            Color(0x00000000),
                            Color(0xCC000000),
                          ],
                        ),
                      ),
                    ),
                Positioned(
                    top: 0.0,
                    left: 0.0,
                    child: Container(
                      margin: EdgeInsets.all(14.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 55.0,
                              height: 55.0,
                              child: Image.network(
                                "https://1000logos.net/wp-content/uploads/2017/05/Netflix-Logo-2006.png",
                              ),
                            ),

                          ]),
                    )),
                    Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: Container(
                      margin: EdgeInsets.all(14.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  label: const Text(
                                    "",
                                  )),
                            
                          ]),
                    )),
                    Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: 0.0,
                  child: Container(
                    margin: EdgeInsets.all(70.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                         const Text(
                                "TV Shows",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 30.0,),
                          const Text(
                                "Movies",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 30.0,),
                          const Text(
                                "My List",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                          
                         
                        ]),
                  ),
                ),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  bottom: 0.0,
                  child: Container(
                    margin: EdgeInsets.all(14.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: [
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                  label: const Text(
                                    "",
                                  )),
                              const Text(
                                "My List",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.all(5),
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                label: const Text(
                                  'Play',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                icon: const Icon(Icons.play_arrow,
                                    color: Colors.black),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                ),
                              )),
                          Column(
                            children: [
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.info_outline_rounded,
                                    color: Colors.white,
                                  ),
                                  label: const Text(
                                    "",
                                  )),
                              const Text(
                                "Info",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ]),
              SizedBox(height: 20.0,),
              //const Text("Popular on Netflix",style:TextStyle(color: Colors.white,fontSize: 20.0,),),
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        "Popular on Netflix",style:TextStyle(color: Colors.white,fontSize: 20.0,),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 120.0,
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtNS0SjBp4HzHzvf1ko7I_c8v_pA3DruVHRy3YiifDXG2RrEHDD2ryjlDdaO7hEy5fIyA&usqp=CAU",
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 120.0,
                      child: Image.network(
                        "https://jmagonline.com/wp-content/uploads/2020/05/Never-Have-I-Ever.jpg",
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 120.0,
                      child: Image.network(
                        "https://www.tjtoday.org/wp-content/uploads/2018/02/c245fb206fecea20e4f18e26dc8fa74aae6f80b5.jpg",
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 120.0,
                      child: Image.network(
                        "https://m.media-amazon.com/images/M/MV5BMjhiMzgxZTctNDc1Ni00OTIxLTlhMTYtZTA3ZWFkODRkNmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_FMjpg_UX1000_.jpg",
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 120.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 120.0,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 120.0,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 120.0,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 120.0,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 120.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
        // body: Container(
        //   child: Column(
        //     children: [
        //       // Container(
        //       //   width: double.infinity,
        //       //   height: 450.0,
        //       //   child: Image.network("https://akm-img-a-in.tosshub.com/indiatoday/images/story/202108/Money-Heist-Season-5.jpg?pgFYOwq6GKSxn534Bmq6r5YwsPDMQsir&size=770:433",width: double.infinity,height: 450.0,)),

        //       Text("Popular on Netflix"),

        //     ],
        //   ),
        // ),
        );
  }
}
