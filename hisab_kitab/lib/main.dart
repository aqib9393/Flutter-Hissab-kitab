import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hisab Kitab"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Total Amount Rs: 500 rupees ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                MyText("Nerrative", "Write Nerrative", 10.0),
                MyText("Amount", "Enter Amount", 20.0),
                SizedBox(
                  height: 20,
                ),
                MyButton("Add", 0.0),
                SizedBox(
                  height: 250,
                ),
                MyButton("Details", 230.0),
              ],
            ),
          )),
    );
  }
}

class MyText extends StatelessWidget {
  final _right;
  String _title;
  String _text;
  MyText(this._title, this._text, this._right);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15, right: _right),
          child: Text(
            _title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        Container(
          width: width * 0.6,
          height: height * 0.1,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.grey[300],
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                hintText: _text),
          ),
        ),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  String _text;
  final _left;
  MyButton(this._text, this._left);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: _left),
      child: ElevatedButton(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Text(
            _text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
