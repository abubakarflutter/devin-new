// @dart=2.9
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';




class BusinessProfile extends StatefulWidget {
  const BusinessProfile({ Key key }) : super(key: key);

  @override
  _BusinessProfileState createState() => _BusinessProfileState();
}

class _BusinessProfileState extends State<BusinessProfile> {

  @override
  Widget build(BuildContext context) {
double w = MediaQuery.of(context).size.width;
double h = MediaQuery.of(context).size.height;


    return Stack(
      children: [
        Container(
      height: h * 0.35,

      width: w,
      child: Carousel(
        autoplay: false,
        dotBgColor: Colors.transparent,
        dotVerticalPadding: 30.0,
        dotSpacing: 15,
        dotSize: 5,
        images: [
          Image.asset('images/eiffle-1.png', fit: BoxFit.cover,),
          Image.asset('images/eiffle-2.png', fit: BoxFit.cover,),
          Image.asset('images/eiffle-3.jpg', fit: BoxFit.cover,),
        ],
      ),
    ),
    Positioned(
      top:  h * 0.30,
      width: w,
            child: Container(
                child: FirstCardData(),
         height: h,
          width: w,
          decoration: BoxDecoration(
                  color: Color(0xFFF2F2F7),
                  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(40.0),
      topRight: Radius.circular(40.0),
                  ),
                
          ),
        ),
            
    ),
      ],
    );
  }
}


class FirstCardData extends StatelessWidget {
  const FirstCardData({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
double h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('StarBucks Maroc', 
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20.0,
                  color: Colors.black
                ),),
                SizedBox(
                  height: 10
                ),
                Row(
                  children: [
                    Text('Coffee', style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 18.0,
                  color: Colors.black
                ),),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Color(0xffF2AD3E),
                  ),
                ),
                 Text('17 Km Away', style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 18.0,
                  color: Colors.black
                ),)
                  ],
                ),
                SizedBox(
                  height: 10
                ),
                Row(
                  children: [
                  Image.asset('images/logo.png', ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text('95', style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20.0,
                    color: Colors.black
                ),),
                  ),
                  Image.asset('images/star.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text('125', style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20.0,
                    color: Colors.black
                ),),
                  ),
                   
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0),
              child: Image.asset('images/notifier.png', width: 80, height: 80,),
            )
          ],),
        ),
        SingleChildScrollView(
                  child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('My EQOES (3)', style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 18.0,
            color: Colors.black
                      ),),
                  ),
                 Container(
                   height: h * .23,
                   width: w ,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     padding: EdgeInsets.only(left: 20, bottom: 20, right: 30.0),
                     itemCount: 3,
                     itemBuilder: (context, index){
                       return CustomCards();
                   }),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                   child: Text('My Friends EQOES (25)', style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 18.0,
              color: Colors.black
            ),),
                 ),
                Container(
                   height: h * .23,
                   width: w ,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     padding: EdgeInsets.only(left: 20, bottom: 20, right: 30.0),
                     itemCount: 3,
                     itemBuilder: (context, index){
                       return CustomCards2();
                   }),
                 ),
                 
                 
                ],
              ),
            width: w,
            height: h,
            decoration: BoxDecoration(
                 color: Colors.white,
                  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(40.0),
      topRight: Radius.circular(40.0),
                  ),
                
            ),
          ),
        )
      ],
    );
  }
}

class CustomCards extends StatelessWidget {
  const CustomCards({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20)
    ),
       boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        //spreadRadius: 5,
        blurRadius: 17,
        offset: Offset(-4, 8), // changes position of shadow
      ),
    ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('images/female-avatar.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text('Julia Evanson',  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18.0,
                    color: Colors.black
                  ),),
              Text('5 min ago',  style: TextStyle(
                    
                    decoration: TextDecoration.none,
                    fontSize: 18.0,
                    color: Color(0xff1312FA)
                  ),),
            ],),
              Icon(Icons.more_horiz, color: Color(0xff607D8B), size: 40,)
            ],),
           Padding(
             padding: const EdgeInsets.only(top: 10.0),
             child: Image.asset('images/audio.png'),
           )
          ],
        ),
      ),
    );
  }
}


class CustomCards2 extends StatelessWidget {
  const CustomCards2({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20)
    ),
       boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        //spreadRadius: 5,
        blurRadius: 17,
        offset: Offset(-4, 8), // changes position of shadow
      ),
    ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('images/female-avatar.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text('Julia Evanson',  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18.0,
                    color: Colors.black
                  ),),
              Text('5 min ago',  style: TextStyle(
                    
                    decoration: TextDecoration.none,
                    fontSize: 18.0,
                    color: Colors.yellow
                  ),),
            ],),
              Icon(Icons.more_horiz, color: Color(0xff607D8B), size: 40,)
            ],),
           Padding(
             padding: const EdgeInsets.only(top: 10.0),
             child: Image.asset('images/audio.png'),
           )
          ],
        ),
      ),
    );
  }
}