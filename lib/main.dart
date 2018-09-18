import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator Application",
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: new Cal(),
    );
  }
}
class Cal extends StatefulWidget {
  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<Cal> {

  var num1 =0,num2 =0,sum =0;

  final TextEditingController t1= new TextEditingController(text: "0");
  final TextEditingController t2= new TextEditingController(text: "0");
  void doAddition(){
    setState(() {
      num1= int.parse(t1.text);
      num2= int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doSub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum= num1 - num2;
    });

  }
  void doMul(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum= num1 * num2;
    });

  }
  void doDiv(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum= num1~/num2;
    });
  }

  Widget _Text(){
    return new Text(
      "Output: $sum",
      style: new TextStyle(fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Calculator App"),
      ),
      backgroundColor: Colors.white,
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlutterLogo(
              size: 100.0,
            ),

            _Text(),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Enter number 1"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Enter number 2"
              ),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top:20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.blueGrey,
                  onPressed: (){
                    doAddition();
                  },
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.blueGrey,
                  onPressed: (){
                    doSub();
                  },
                ),

              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.blueGrey,
                  onPressed: (){
                    doMul();
                  },
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.blueGrey,
                  onPressed: (){
                    doDiv();
                  },
                ),

              ],
            )


          ],
        ),
      ) ,
    );
  }
}

