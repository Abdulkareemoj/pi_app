import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Pi Display'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
String output= "0";



Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    child: new Column(children: <Widget>[
                      // new Text(output),
                      new Container(
                          alignment: Alignment.center,
                          padding: new EdgeInsets.symmetric(
                              vertical: 24.0, horizontal: 12.0),
                          child: Text(output,
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ]),
                  )),
              Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.blue,
                    child: new Column(children: <Widget>[
                      new Container(
                          alignment: Alignment.centerRight,
                          padding: new EdgeInsets.symmetric(
                              vertical: 24.0, horizontal: 12.0)),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 120.0),
                        child: TextField(
                          decoration: InputDecoration(
                              focusColor: Colors.white,
                              hintText: 'Enter Value to print'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 50.0),
                        child: FlatButton(
                          child: Text("Calculate Pi"),
                          color: Colors.white,
                          onPressed: () => (buttonText),

                        ),
                      )
                    ]),
                  )),
            ]),
      ),
    );
  }
}


/*class PiCalc extends StatelessWidget {
  final String text;

  const PiCalc({Key key, this.text, this.onTap}) : super(key: key);

  static void printValueOfPi(int N)
  {
  double pi = 2 * Math.acos(0.0);

  System.out.println(pi);
  }
  printValueOfPi(N);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
  }



  }
