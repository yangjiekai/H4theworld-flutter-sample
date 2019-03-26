import 'package:flutter/material.dart';

Widget drawerMain(context) {
  debugPrint("Drawer");
  return Drawer(
    elevation: 10.0 ,
    child: ListView(
//      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.zero ,
      children: <Widget>[

        DrawerHeader(
          child: Text("H4theworld"),
          decoration: BoxDecoration(
            // color: Colors.amberAccent,
          ),
        ),

        socialBtn("User A", Icons.nature_people, Colors.indigo[900]),
        drawerBtnPadding(),
        ExpansionTile(
          initiallyExpanded: false,
          title: Text("MISSION"),
          children: <Widget>[
            drawerBtnPadding(),
            drawerBtn(" LEADERSHIP", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/MainPage'); 
            }),

            drawerBtnPadding(),
            drawerBtn("OUR STORY", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
            drawerBtnPadding(),
             drawerBtn("OUR ORGANIZATION", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
             drawerBtnPadding(),
             drawerBtn("VISION", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
            drawerBtnPadding(),
            
          ],

        ),

          ExpansionTile(
          initiallyExpanded: false,
          title: Text("COURSES"),
          children: <Widget>[
            drawerBtnPadding(),
            drawerBtn(" All Courses", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/MainPage'); 
            }),
            drawerBtnPadding(),
            drawerBtn(" Course Instructors", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
            drawerBtnPadding(),

              drawerBtn(" Course Forums", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
            drawerBtnPadding(),
            
             drawerBtn("How it works", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
            drawerBtnPadding(),

             drawerBtn("Certificates", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
            drawerBtnPadding(),


              drawerBtn("Virtual Reality", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
            drawerBtnPadding(),
          ],

        ),


          ExpansionTile(
          initiallyExpanded: false,
          title: Text("COURSES"),
          children: <Widget>[
            drawerBtnPadding(),
            drawerBtn(" CheckOFFLINE", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/MainPage'); 
            }),
            drawerBtnPadding(),
            drawerBtn(" insta", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
            drawerBtnPadding(),
            
          ],

        ),

             ExpansionTile(
          initiallyExpanded: false,
          title: Text("Checkbot"),
          children: <Widget>[
            drawerBtnPadding(),
            drawerBtn(" CheckOFFLINE", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/MainPage'); 
            }),
            drawerBtnPadding(),
            drawerBtn(" insta", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
            drawerBtnPadding(),
            
          ],

        ),




    socialBtn("search", Icons.search, Colors.pink[300]),

      ],
    ),
  );

}



Widget kurdistanCatBtn() {
//String text ;

  return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          elevation: 2.0,
          //textTheme: ButtonTextTheme.primary,
          splashColor: Colors.cyan[300],
          textColor: Colors.pink[300],
          //colorBrightness: Brightness.dark,

          child: Text("په‌ری كوردستان"),

          padding: EdgeInsets.all(20.0),
          animationDuration: Duration(microseconds: 200),
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(10.0))),
          color: Colors.amber,
          onPressed: () {},
        ),
      ]);
}

Widget drawerBtn(String text, Function function) {
//String text ;

  return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          elevation: 2.0,
          //textTheme: ButtonTextTheme.primary,
          splashColor: Colors.pink,
          textColor: Colors.white,
          //colorBrightness: Brightness.dark,

          child: Text(text),

          padding: EdgeInsets.all(20.0),
          animationDuration: Duration(microseconds: 200),
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(10.0))),
          color: Colors.amber,
          onPressed: function,
        ),
      ]);
}

//btn social
Widget socialBtn(String text, IconData iconData, Color color) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Padding(
        // padding: EdgeInsets.all(20.0),
        //),
        RaisedButton(
          child: Row(
            children: <Widget>[
              Icon(
                iconData,
                color: Colors.cyan,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(
                text,
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          elevation: 2.0,
          //textTheme: ButtonTextTheme.primary,
          splashColor: Colors.cyan,
          textColor: Colors.white,
          //colorBrightness: Brightness.dark,
          padding: EdgeInsets.all(20.0),

          animationDuration: Duration(microseconds: 200),
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(10.0))),
          color: color,
          onPressed: () {},
        ),
      ]);
}

Widget drawerBtnPadding() {
  return Padding(
    padding: EdgeInsets.all(5.0),
  );
}
