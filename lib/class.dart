import 'package:flutter/material.dart';

class calc extends StatelessWidget {
  const calc({super.key});

  Widget contnr1(Color clr, String txt) {
    return Expanded(
        child: Container(
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(50),
          border: Border.all()),
      child: Text(
        "$txt",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    ));
  }

  Widget contnr(Color clr, String txt) {
    return Expanded(
        child: Container(
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(50),
          border: Border.all()),
      child: Text(
        "$txt",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      ),
    ));
  }

  @override
  Widget build(BuildContext Context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.share),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(children: [
        //main column
        Expanded(
          //output
          child: Container(
            width: double.infinity,
            alignment: Alignment.bottomRight,
            child: Text(
              "0",
              style: TextStyle(color: Colors.white, fontSize: 100),
            ),
            decoration: BoxDecoration(color: Colors.black87),
          ),
        ),

        // Divider(height: 1),

        Expanded(
            //input
            flex: 2,
            child: Container(
              decoration: BoxDecoration(color: Colors.black87),
              child: Column(
                  //input column
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(children: [
                      contnr1(Colors.white54, "AC"),
                      contnr1(Colors.white54, "+/-"),
                      contnr1(Colors.white54, "%"),
                      contnr(Colors.deepOrangeAccent, "/")
                    ]),
                    Row(children: [
                      contnr(Colors.black38, "7"),
                      contnr(Colors.black38, "8"),
                      contnr(Colors.black38, "9"),
                      contnr(Colors.deepOrangeAccent, "*")
                    ]),
                    Row(children: [
                      contnr(Colors.black38, "4"),
                      contnr(Colors.black38, "5"),
                      contnr(Colors.black38, '6'),
                      contnr(Colors.deepOrangeAccent, "-")
                    ]),
                    Row(children: [
                      contnr(Colors.black38, "1"),
                      contnr(Colors.black38, "2"),
                      contnr(Colors.black38, '3'),
                      contnr(Colors.deepOrangeAccent, "+")
                    ]),
                    Row(children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                            height: 70,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()),
                            child: Text(
                              "0",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            )),
                      ),
                      contnr(Colors.black38, '.'),
                      contnr(Colors.deepOrangeAccent, "=")
                    ])
                  ]),
            )),
      ]),
    ));
  }
}
