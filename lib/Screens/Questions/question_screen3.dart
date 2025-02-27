import 'package:blumo_app/Screens/Questions/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'question_screen2.dart';
import 'question_screen4.dart';
class QuestionScreen3 extends StatefulWidget {
  const QuestionScreen3({super.key});

  @override
  State<QuestionScreen3> createState() => _QuestionScreen3State();
}

class _QuestionScreen3State extends State<QuestionScreen3> {
  int isSelected=1;

  @override
  void initState() {
    isSelected = 1;
    setState(() {

    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Whats your priority ?",style:GoogleFonts.modak(fontSize: 36,fontWeight: FontWeight.w400,color: Color(0xff233BBD)),),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isSelected=1;
                    });
                  },
                  child: Container(
                    height: 65,
                    width: 365,
                    decoration: BoxDecoration(
                      color: isSelected==1?Color(0xff185a80):Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius:BorderRadius.circular(8)
                    ),
                    child: Center(child: Text("Find something within my budget",style: GoogleFonts.mitr(color: isSelected==1?Colors.white:Color((0xff185a80)),fontWeight: FontWeight.w400,fontSize: 18),),),

                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(onTap: (){setState(() {
                  isSelected=2;
                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=>))
                });},
                  child: Container(
                    height: 65,
                    width: 365,
                    decoration: BoxDecoration(
                      color: isSelected==2?Color(0xff185a80):Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                        borderRadius:BorderRadius.circular(8)
                    ),
                    child: Center(child: Text("Find something fast",style: GoogleFonts.mitr(color: isSelected==2?Colors.white:Color((0xff185a80)),fontWeight: FontWeight.w400,fontSize: 18),),),
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(onTap: (){setState(() {
                  isSelected=3;
                });},
                  child: Container(
                    height: 65,
                    width: 365,
                    decoration: BoxDecoration(
                      color: isSelected==3?Color(0xff185a80):Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                        borderRadius:BorderRadius.circular(8)
                    ),
                    child: Center(child: Text("Find something flexible",style: GoogleFonts.mitr(color: isSelected==3?Colors.white:Color((0xff185a80)),fontWeight: FontWeight.w400,fontSize: 18),),),
                  ),
                ),

              ],
            ),
          ),
            Positioned(bottom: 45,child: Center(child: Container(width:MediaQuery.of(context).size.width,child: Column(
              children: [
                FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen4()));},child: Icon(Icons.arrow_forward_ios),backgroundColor: Color(0xff233BBD),),
                Text("Skip",style: GoogleFonts.mitr(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff185a80),decoration:TextDecoration.underline ),),
              ],
            ))),),

          ]
      ),

    ));
  }
}
