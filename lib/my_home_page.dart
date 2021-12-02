import 'package:flutter/material.dart';

List<String>flowerList=[
  "Rose",
  "Water lily",
  "Marigold",
  "Sunflower",
  "Lotus",
  "China rose",
  "Aster",
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Flowers"),
      ),
      body: Column(
    children: [
      Expanded(
        child: ListView.builder(
    itemCount: flowerList.length,
    itemBuilder:(context,index){
        return Padding(
          padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
          child: Container(
             height: 40,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(15),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.teal
              ),
              child: Center(
                child: Text(flowerList[index],
                style: TextStyle(
                  color: Colors.white,fontSize: 20
                ),),
              )),
        );
    }),
      )
      ],
    ),
    );
  }
}
