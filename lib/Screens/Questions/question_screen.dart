import 'package:blumo_app/Screens/home_screen.dart';
import 'package:blumo_app/Screens/Agent%20Screens/packages_Agent.dart';
import 'package:blumo_app/Screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/bottom_navbar.dart';
import 'question_screen2.dart';
class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int isSelected=1;
  @override
  void initState(){
    isSelected=1;
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
              Container(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Let's find best house for you",style: GoogleFonts.getFont("Mitr",fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff185a80)),),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Pick Your Role...",style:GoogleFonts.modak(fontSize: 41,fontWeight: FontWeight.w400,color: Color(0xff0220C2)),),
                ],
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isSelected=1;
                  });
                  String userType = getUserType(isSelected);
                  if (userType == 'seller' || userType == 'buyer') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionScreen2(userType: userType),
                      ),
                    );
                  } else if (userType == 'agent') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AgentPackagesScreen(),
                      ),
                    );
                  }
                },
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width*0.9,
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
                  ),
                  child: Center(child: Text("I want to sell/rent out my property",style: GoogleFonts.mitr(color: isSelected==1?Colors.white:Color((0xff185a80)),fontWeight: FontWeight.w400,fontSize: 18),),),

                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(onTap: (){setState(() {
                isSelected=2;
              });
              String userType = getUserType(isSelected);
              if (userType == 'seller' || userType == 'buyer') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen2(userType: userType),
                  ),
                );
              } else if (userType == 'agent') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgentPackagesScreen(),
                  ),
                );
              }
              },
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width*0.9,
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
                  ),
                  child: Center(child: Text("I want to buy/rent a property",style: GoogleFonts.mitr(color: isSelected==2?Colors.white:Color((0xff185a80)),fontWeight: FontWeight.w400,fontSize: 18),),),
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(onTap: (){setState(() {
                isSelected=3;
              });},
                child: InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AgentPackagesScreen()));},
                  child: Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width*0.9,
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
                    ),
                    child: Center(child: Text("I’m a Property Agent",style: GoogleFonts.mitr(color: isSelected==3?Colors.white:Color((0xff185a80)),fontWeight: FontWeight.w400,fontSize: 18),),),
                  ),
                ),
              ),

            ],
          ),
        ),
          Positioned(bottom: 45,child: Center(child: Container(width:MediaQuery.of(context).size.width,child: Column(
            children: [
              FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LandingPage()));},child: Icon(Icons.arrow_forward_ios),backgroundColor: Color(0xff0220C2),),
              Text("Skip",style: GoogleFonts.mitr(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xff185a80),decoration:TextDecoration.underline ),),
            ],
          ))),),

      ]
      ),

    ));
  }

  String getUserType(int selected) {
    switch (selected) {
      case 1:
        return 'seller';
      case 2:
        return 'buyer';
      case 3:
        return 'agent';
      default:
        return '';
    }
  }
}
