// ignore_for_file: file_names

import 'package:basketball_app/result.dart';
import 'package:flutter/material.dart';

class BasketBallCounterScreen extends StatefulWidget {
  const BasketBallCounterScreen({super.key});

  @override
  State<BasketBallCounterScreen> createState() => _BasketBallCounterScreenState();
}

class _BasketBallCounterScreenState extends State<BasketBallCounterScreen> {
  int team1 = 0 ;
  int team2 = 0 ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.black,
       title: const Text(
        "Points Counter",
       style: TextStyle(
        color: Colors.amber,
        fontFamily: "pacifico",
        fontSize: 25,
        fontWeight: FontWeight.w400
       ),
       ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text(
                 "Team A",
                style: TextStyle(
                 color: Colors.black,
                 fontFamily: "pacifico",
                 fontSize: 30,
                 fontWeight: FontWeight.w400
                ),
                ),
               // SizedBox(height: 20,),
                Text(
                 "$team1",
                style:const TextStyle(
                 color: Colors.black,
                 fontFamily: "pacifico",
                 fontSize: 150,
                fontWeight: FontWeight.bold
                ),
                ),
                TextButton(
                 style:  ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.black)
                 ),
                  onPressed:(){
                    setState(() {
                      team1++;
                    });
                  },
                  child: const Text(
                 " Add 1 Point ",
                style: TextStyle(
                 color: Colors.amber,
                 fontFamily: "pacifico",
                 fontSize: 20,
                 fontWeight: FontWeight.w400
                ),
                ),
                ),
                 const SizedBox(height: 10,),
                TextButton(
                 style:  ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.black)
                 ),
                  onPressed:(){
                    setState((){
                      team1+=2;
                    });
                  },
                  child: const Text(
                 "Add 2 Points",
                style: TextStyle(
                 color: Colors.amber,
                 fontFamily: "pacifico",
                 fontSize: 20,
                 fontWeight: FontWeight.w400
                ),
                ),
                ),
                const SizedBox(height: 10,),
                TextButton(
                 style:  ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.black)
                 ),
                  onPressed: (){
                    setState(() {
                      team1+=3;
                    });
                  },
                  child: const Text(
                 "Add 3 Points",
                style: TextStyle(
                 color: Colors.amber,
                 fontFamily: "pacifico",
                 fontSize: 20,
                 fontWeight: FontWeight.w400
                ),
                ),
                ),

                ],
              ),
              Container(
                color: Colors.black,
                width: 2,
                height: 450,
              ),
              // const Divider(
              //   color: Colors.black,
              //   height: 2,
              //  ),
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text(
                 "Team B",
                style: TextStyle(
                 color: Colors.black,
                 fontFamily: "pacifico",
                 fontSize: 30,
                 fontWeight: FontWeight.w400
                ),
                ),
               // SizedBox(height: 20,),
                Text(
                 "$team2",
                style: const TextStyle(
                 color: Colors.black,
                 fontFamily: "pacifico",
                 fontSize: 150,
                fontWeight: FontWeight.bold
                ),
                ),
                TextButton(
                 style:  ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.black)
                 ),
                  onPressed: (){
                    setState(() {
                      team2 ++;
                    });
                  },
                  child: const Text(
                 " Add 1 Point ",
                style: TextStyle(
                 color: Colors.amber,
                 fontFamily: "pacifico",
                 fontSize: 20,
                 fontWeight: FontWeight.w400
                ),
                ),
                ),
                 const SizedBox(height: 10,),
                TextButton(
                 style:  ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.black)
                 ),
                  onPressed: (){
                    setState(() {
                      team2+=2;
                    });
                  },
                  child: const Text(
                 "Add 2 Points",
                style: TextStyle(
                 color: Colors.amber,
                 fontFamily: "pacifico",
                 fontSize: 20,
                 fontWeight: FontWeight.w400
                ),
                ),
                ),
                const SizedBox(height: 10,),
                TextButton(
                 style:  ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.black)
                 ),
                  onPressed: (){
                    setState(() {
                      team2+=3;
                    });
                  },
                  child: const Text(
                 "Add 3 Points",
                style: TextStyle(
                 color: Colors.amber,
                 fontFamily: "pacifico",
                 fontSize: 20,
                 fontWeight: FontWeight.w400
                ),
                ),
                ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50,),
           TextButton(
                 style:  ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.black)
                 ),
                  onPressed: (){
                    setState(() {
                      team1 =0;
                      team2 = 0;
                    });
                  },
                  child: const Text(
                 " Reset ",
                style: TextStyle(
                 color: Colors.amber,
                 fontFamily: "pacifico",
                 fontSize: 20,
                 fontWeight: FontWeight.w400
                ),
                ),
                ),
               const SizedBox(height: 20,),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black
                  ),
                   onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>  CounterResultScreen(
                          team1: team1,
                          team2: team2,
                        ),
                      )
                    );
                   },
                   child:const Text(
                 " Result ",
                style: TextStyle(
                 color: Colors.amber,
                 fontFamily: "pacifico",
                 fontSize: 20,
                 fontWeight: FontWeight.w400
                ),
                ),
                )
        ],
      ),
    );
  }
}