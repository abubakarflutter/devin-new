// @dart=2.9
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';




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
    return ListView(
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
        //2nd container
        Container(
          child: ListView(
              
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
               //3rd container
              Container(
                width: w,
          height: h,
          decoration: BoxDecoration(
               color: Color(0xffF2F2F7),
                borderRadius: BorderRadius.only(
      topLeft: Radius.circular(40.0),
      topRight: Radius.circular(40.0),
                ),
              
          ),
                child: Column(children: <Widget>[
              Card(
                margin: EdgeInsets.all(15),
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(13.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.all(10),
                    leading: Icon(
                      Icons.schedule,
                      color: Color(0xff0D4BFF),
                      size: 40,
                    ),
                    trailing: Icon(
                      Icons.expand_more,
                      color: Color(0xff0D4BFF),
                      size: 40,
                    ),
                    backgroundColor: Colors.white,
                    title: Text(
                      "Opening Hours",
                      style: GoogleFonts.poppins(
                          color: Color(0xff607D8B),
                          fontSize: 17,
                          fontWeight: FontWeight.normal),
                    ),
                    subtitle: Text(
                      "Open untill 10 pm",
                      style: GoogleFonts.poppins(
                          color: Color(0xff0D4BFF),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Monday",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff263238), fontSize: 12),
                                ),
                                Text(
                                  "07am-09pm",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff263238), fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Tuesday",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                ),
                                Text(
                                  "07am-09pm",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Wednesday",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                ),
                                Text(
                                  "07am-07pm",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Thursday",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                ),
                                Text(
                                  "07am-07pm",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Friday",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                ),
                                Text(
                                  "08am-11pm",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Saturday",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                ),
                                Text(
                                  "10am-10pm",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Sunday",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                ),
                                Text(
                                  "10am-07pm",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff607D8B), fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card1(
                leading: Image(
                  height: 40,
                  width: 40,
                  image: AssetImage(
                    "images/call.png",
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xffAD4AFE),
                  size: 30,
                ),
                title: Text(
                  "Call Now",
                  style: TextStyle(color: Color(0xff607D8B), fontSize: 20),
                ),
                subtitle: Text(
                  "+12812363179",
                  style: TextStyle(color: Color(0xffAD4AFE), fontSize: 15),
                ),
              ),
              Card1(
                leading: Icon(
                  Icons.restaurant,
                  color: Color(0xffF2AD3E),
                  size: 50,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xffF2AD3E),
                  size: 30,
                ),
                title: Text(
                  "Food Menu",
                  style: TextStyle(color: Color(0xff607D8B), fontSize: 20),
                ),
                subtitle: Text(
                  "Available",
                  style: TextStyle(color: Color(0xffF2AD3E), fontSize: 15),
                ),
              ),
              Card1(
                leading: Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff0C7EE8),
                  size: 50,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff0C7EE8),
                  size: 30,
                ),
                title: Text(
                  "Get Direction",
                  style: TextStyle(color: Color(0xff607D8B), fontSize: 20),
                ),
                subtitle: Text(
                  "15 km Away",
                  style: TextStyle(color: Color(0xff0C7EE8), fontSize: 15),
                ),
              ),
              Card1(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff4F5B62),
                  size: 30,
                ),
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "About",
                    style: TextStyle(
                        color: Color(0xff607D8B),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Lorum ipsum dolor sit amet,consetetur\nsadipscing elitr,sed diam nonumey eirmod\ntempor invidunt ut labore et dolabre magna ",
                    style: TextStyle(color: Color(0xff4F5B62), fontSize: 13),
                  ),
                ),
              ),
              Divider(
                height: 100,
                thickness: 2.0
              )
              
                
                ]),
              )],
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
      margin: EdgeInsets.only(right: 20.0),
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
      margin: EdgeInsets.only(right: 20.0),
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



class Card1 extends StatelessWidget {
  Widget leading;
  Widget title;
  Widget trailing;
  Widget subtitle;

  Card1({this.leading, this.title, this.subtitle, this.trailing});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(15),
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(13.0),
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: ExpansionTile(
              tilePadding: EdgeInsets.all(10),
              leading: leading,
              trailing: trailing,
              backgroundColor: Colors.white,
              title: title,
              subtitle: subtitle,
            )));
  }
}