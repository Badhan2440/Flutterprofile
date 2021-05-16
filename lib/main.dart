import 'package:myprofile/Animations/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/paul.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                          ]
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(1, Text("Badhan Paul", style: 
                              TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40)
                            ,)),
                            SizedBox(height: 20,),
                            Row(
                              children: <Widget>[
                                FadeAnimation(1.2, 
                                  Text("Age: 22", style: TextStyle(color: Colors.grey, fontSize: 16),)
                                ),
                                SizedBox(width: 50,),
                                FadeAnimation(1.3, Text("Graphic Designer", style: 
                                  TextStyle(color: Colors.grey, fontSize: 16)
                                ,))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(1.6, Text("I was born in Chittagong, Bangladesh, to Bangladeshi parents parents, Amor Paul and Joyanti Paul, both service holder. I moved to Dhaka when I was seventeeen , where I attended the Higher Secondary College.", 
                        style: TextStyle(color: Colors.grey, height: 1.4),)),
                        SizedBox(height: 40,),
                        FadeAnimation(1.6, 
                          Text("Born", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),
                        SizedBox(height: 10,),
                        FadeAnimation(1.6, 
                          Text("October, 2nd 1998, Chittagong, Bangladesh", style: TextStyle(color: Colors.grey),)
                        ),
                        SizedBox(height: 20,),
                        FadeAnimation(1.6, 
                          Text("Nationality", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),
                        SizedBox(height: 10,),
                        FadeAnimation(1.6, 
                          Text("Bangladeshi", style: TextStyle(color: Colors.grey),)
                        ),
                        SizedBox(height: 20,),

                        SizedBox(height: 20,),
                        FadeAnimation(1.8, Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            
                          ),
                        )),
                        SizedBox(height: 120,)
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(2,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow[700]
                    ),
                    child: Align(child: Text("Follow Me", style: TextStyle(color: Colors.black),)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  
}