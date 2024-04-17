import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({Key? key}) : super(key: key);

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFeb7c85),
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 34,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Text("Movement Counting Session",
                  style: TextStyle(
                      fontSize: 25,
                  ),),
                ),
                Container(
                  height: 5,
                  width: 120,
                  color: Colors.blue,
                ),
                Text("0"),
                Text("Total Movement "),
                Row(children: [
                  Text("date : "),
                  Container(
                    width: 100,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ]),
                CountIcon('hello'),
                CountIcon('kick'),
                CountIcon('papa'),
                CountIcon('mom'),
                CountIcon('mom'),
                Row(
                  children: [
                    Icon(Icons.info),
                    Text("Why do i need tp count Fetal Movement"),
                  ],
                ),
                Stack(children: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Text("Start Session")
                ]),
              ]),
        ));
  }
}

Widget CountIcon(String name) {
  return Row(children: [
    Stack(children: [
      Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      Text("$name")
    ]),
  ]);
}
