import 'package:clone_a_dribble/util/exercises_file.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'util/emoticon_face.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late String formattedDate;
  @override
  void initState() {
    DateTime now = DateTime.now();
    formattedDate = DateFormat('d MMMM yyyy').format(now);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, ), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message,), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: "Account"),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const Text(
                          "Hi, Jeetendra!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                        ),
                        Text(
                          "$formattedDate",
                          style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                      ],),

                      Container(
                       padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0XFFF083663)
                        ),
                        child: Icon(Icons.notifications, color: Colors.white,))
                    ],
                  ),
                  SizedBox(height: 20),

                  //  search bar
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0XFFECF2FF),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white38,
                          spreadRadius: 10.0,
                          offset: Offset.infinite,
                          blurRadius: 10
                        )
                      ]
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.search, color: Colors.black87,),
                        SizedBox(width: 10),
                        Text("Search", style: TextStyle(color: Colors.black87),)
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                //  How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white,)
                    ],
                  ),

                  SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    //  bad
                      EmoticonFace(emoticonface: '😢', title: 'Bad',),

                    //  fine
                      EmoticonFace(emoticonface: '👌', title: 'Fine',),

                    //  well
                      EmoticonFace(emoticonface: '😊', title: 'Well',),

                    //  excellent
                      EmoticonFace(emoticonface: '😀', title: 'Excellent',),
                    ],
                  ),

                  SizedBox(height: 15),

                ],
              ),
            ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 10),
                  decoration: BoxDecoration(
                      color: Color(0XFFF083663),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        // Exercises heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Exercises", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, color: Colors.white,))
                          ],
                        ),
                        
                        //  List of Exercises
                        Expanded(
                          child: ListView(
                            children: [
                              Exercises(icon: Icons.speaker_group, title: "Speaking Skill", subtitle: "15 minutes per day", color: Colors.deepOrangeAccent,),
                              Exercises(icon: Icons.read_more, title: "Reading Skill", subtitle: "Read 5 pages per day", color: Colors.green,),
                              Exercises(icon: Icons.edit_note, title: "Writing Skill", subtitle: "Write 5 pages per day", color: Colors.lightBlueAccent,),
                              Exercises(icon: Icons.handshake_outlined, title: "Meetings", subtitle: "Meet 5 new person per day", color: Colors.lightGreen,),


                            ],
                          )
                        )

                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
