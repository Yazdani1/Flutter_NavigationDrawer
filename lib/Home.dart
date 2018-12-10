import 'package:flutter/material.dart';
import 'package:flutter_navigation_drawer/First Page.dart';
import 'package:flutter_navigation_drawer/SecondPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(
        title: new Text("Navigation Drawer",
        style: new TextStyle(fontSize: 18.0),),
        backgroundColor: Colors.deepOrange,
      ),

      drawer: new Drawer(
        child: new ListView(
          
          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text("Yazdani chowdhury"),
                accountEmail: new Text("example@gmail.com"),
              decoration: new BoxDecoration(
                color: Colors.deepOrange,
//                image: new DecorationImage(
//                    image: new NetworkImage("https://www.pexels.com/photo/woman-standing-behind-trees-1580274/")
//                )
              ),
            ),

            new ListTile(
              title: new Text("First Page"),
              trailing: new Icon(Icons.send),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>FirstPage()));
              },
            ),
            new ListTile(
              title: new Text("Second Page"),
              trailing: new Icon(Icons.add),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>SecondPage()));
              },
            ),
            new Divider(
              color: Colors.blue,
              height: 10.0,
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () =>Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      
      body: new Center(
        child: new Container(
          child: new Text("Home Page",style: new TextStyle(fontSize: 25.0),),
        ),
      ),
      
    );
  }
}
