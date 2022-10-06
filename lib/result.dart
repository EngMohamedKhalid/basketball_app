import 'package:flutter/material.dart';

class CounterResultScreen extends StatelessWidget {
  const CounterResultScreen({super.key, required this.team1, required this.team2});
  final int team1 ;
  final int team2 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 0, 0, 0),
          appBar: AppBar(
       backgroundColor: Colors.black,
       title: const Text(
        "Points",
       style: TextStyle(
        color: Colors.amber,
        fontFamily: "pacifico",
        fontSize: 25,
        fontWeight: FontWeight.w400
       ),
       ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         const SizedBox(height: 100,),
           const  Text(
        " Team A Points : ",
       style: TextStyle(
        color: Colors.amber,
        fontFamily: "pacifico",
        fontSize: 30,
        fontWeight: FontWeight.w400
       ),
       ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const  Text(
        " Score  =  ",
       style: TextStyle(
        color: Colors.amber,
        fontFamily: "pacifico",
        fontSize: 30,
        fontWeight: FontWeight.w400
       ),
       ),
        const SizedBox(width: 20,),
         Text(
        " $team1 ",
       style:const TextStyle(
        color: Colors.amber,
        fontFamily: "pacifico",
        fontSize: 30,
        fontWeight: FontWeight.w400
       ),
       ),
        ], 
       ),
       const  Text(
        " Team B Points : ",
       style: TextStyle(
        color: Colors.amber,
        fontFamily: "pacifico",
        fontSize: 30,
        fontWeight: FontWeight.w400
       ),
       ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const  Text(
        " Score  =  ",
       style: TextStyle(
        color: Colors.amber,
        fontFamily: "pacifico",
        fontSize: 30,
        fontWeight: FontWeight.w400
       ),
       ),
        const SizedBox(width: 20,),
         Text(
        " $team2 ",
       style:const TextStyle(
        color: Colors.amber,
        fontFamily: "pacifico",
        fontSize: 30,
        fontWeight: FontWeight.w400
       ),
       ),
        ], 
       ),
        const SizedBox(height: 100,)
    ],
    ),
    );
  }
}