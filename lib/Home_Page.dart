import 'package:flutter/material.dart';
import 'package:vinay1/util/Exercises.dart';
import 'package:vinay1/util/emoticon_face.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
      ],),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi, Jared!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text('23 Jan, 2021',
                          style: TextStyle(color: Colors.blue[200]),)
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.notifications,
                          color: Colors.white,))
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(Icons.search,color: Colors.white,),
                      SizedBox(width: 5,),
                      Text('Search',style: TextStyle(
                          color: Colors.white
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 25,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(Icons.more_horiz,color: Colors.white,)
                  ],
                ),
                SizedBox(height: 25,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: '😣'),
                        Text('Bad',style:TextStyle(
                          color: Colors.white,
                        ) ,)
                      ],
                    ),
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: '🙂'),
                        Text('Fine',style:TextStyle(
                          color: Colors.white,
                        ) ,)
                      ],
                    ),
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: '😄'),
                        Text('Well',style:TextStyle(
                          color: Colors.white,
                        ) ,)
                      ],
                    ),
                    Column(
                      children: [
                        EmoticonFace(emoticonFace: '🥳'),
                        Text('Excellent',style:TextStyle(
                          color: Colors.white,
                        ) ,)
                      ],
                    ),
                  ],
                ),
              ],),
            ),
            SizedBox(height: 25,),
            Expanded(
              child: Container(

                decoration: BoxDecoration(
                    color: Colors.grey[200],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12),)
                ),
                padding: EdgeInsets.all(25),

                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Exercises',
                          style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold),),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(height: 20,),

                     Expanded(
                       child: ListView(
                         children: [
                           ExerciseTile(
                             icon: Icons.favorite,
                             noofexercise: 16,
                             exercisename: 'Speaking Skills',
                             color: Colors.orange,
                           ),
                           ExerciseTile(icon: Icons.person,
                             noofexercise: 8,
                             exercisename: 'Reading Skills',
                           color: Colors.green,),
                           ExerciseTile(icon: Icons.star,
                             noofexercise: 20,
                             exercisename: 'Writting Skills',
                           color: Colors.pink,),


                         ],
                       ),
                     )

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
