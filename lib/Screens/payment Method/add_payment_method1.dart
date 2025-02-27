import 'package:avatar_glow/avatar_glow.dart';
import 'package:blumo_app/Utils/bank_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_slide/we_slide.dart';

import '../Agent Screens/packages_Agent.dart';
class AddPaymentMethod1 extends StatefulWidget {
  const AddPaymentMethod1({super.key});

  @override
  State<AddPaymentMethod1> createState() => _AddPaymentMethod1State();
}

class _AddPaymentMethod1State extends State<AddPaymentMethod1> {
  late List<bool> isSelected1;

  @override
  void initState() {
    super.initState();
    isSelected1 = List.generate(3, (index) => false);
    // Initialize all items as not selected
  }
  bool _animate = true;
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0,right:
                          15),
                          child: Row(
                            children: [
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(text: 'Add your\n', style: GoogleFonts.lato(fontSize: 25,color: Color(0xff252B5C))),
                                  TextSpan(text: 'Payment method\n\n', style: GoogleFonts.lato(fontSize: 25,fontWeight: FontWeight.w900,color: Color(0xff234F68))),
                                  TextSpan(text: "You can edit this later on your account settings",style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff53587A)))
                                ]),)
                            ],
                          ),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/Credit Card.png",height: 250,width: 350,)
                          ],),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0,right: 10.0),
                          child: Container(
                            height: 55,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Row(
                                  children: [
                                    BankCategory(
                                      press: () {
                                        setState(() {
                                          for (int i = 0; i < isSelected1.length; i++) {
                                            isSelected1[i] = false;
                                          }
                                          isSelected1[0] = true; // Select the first item
                                        });
                                      },
                                      title: "PayPal",
                                      imagePath: "assets/Paypal - White.png",
                                      isSelected: isSelected1[0], // Pass the selection state
                                    ),
                                    BankCategory(
                                      press: () {
                                        setState(() {
                                          for (int i = 0; i < isSelected1.length; i++) {
                                            isSelected1[i] = false;
                                          }
                                          isSelected1[1] = true; // Select the second item
                                        });
                                      },
                                      title: "MasterCard",
                                      imagePath: "assets/Mastercard - Normal.png",
                                      isSelected: isSelected1[1], // Pass the selection state
                                    ),
                                    BankCategory(
                                      press: () {
                                        setState(() {
                                          for (int i = 0; i < isSelected1.length; i++) {
                                            isSelected1[i] = false;
                                          }
                                          isSelected1[2] = true; // Select the third item
                                        });
                                      },
                                      title: "Visa",
                                      imagePath: "assets/Visa - Normal.png",
                                      isSelected: isSelected1[2], // Pass the selection state
                                    ),
                                  ],
                                ),
                              ],
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Card Name',
                                  suffixIcon: Icon(Icons.person_outline_rounded,color: Color(0xff252B5C),),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Card Number',
                                  suffixIcon: Icon(Icons.credit_card,color: Color(0xff252B5C),),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Expiry Date',
                                        suffixIcon: Icon(Icons.calendar_month,color: Color(0xff252B5C),),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(
                                    flex: 1,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'CVV',
                                        suffixIcon: Icon(Icons.credit_card,color: Color(0xff252B5C),),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: InkWell(
                    onTap: (){Navigator.pop(context, MaterialPageRoute(builder: (context)=>AgentPackagesScreen()));},

                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.shade300,
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: 36,
                      width: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.shade300,
                      ),
                      child: Center(child: Text("Skip")),
                    ),
                  ),
                ),
                Positioned(bottom:5,left:0,right:0,child: Center(
                  child: InkWell(onTap: (){showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 350,
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 50,),
                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AvatarGlow(
                                    startDelay: const Duration(milliseconds: 1000),
                                    glowColor: Colors.green,
                                    glowShape: BoxShape.circle,
                                    animate: _animate,
                                    curve: Curves.easeOut,
                                    child:  Material(
                                      elevation: 8.0,
                                      shape: CircleBorder(),
                                      child: Container(height:70,width:70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,colors:[Color(0xff8BC83F),Color(0xff234F68)])),)
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30,),

                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(children: [
                                      TextSpan(text: '   Payment method\n', style: GoogleFonts.lato(fontSize: 25,color: Color(0xff252B5C))),
                                      TextSpan(text: 'successfully', style: GoogleFonts.lato(fontSize: 25,fontWeight: FontWeight.w900,color: Color(0xff234F68))),
                                      TextSpan(text: " Added!",style: GoogleFonts.poppins(fontSize: 25,color: Color(0xff252B5C)))
                                    ]),)],
                              ),
                              SizedBox(height: 50,),
                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 55,
                                    width: 270,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8BC83F),
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Center(child: Text("Finish",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),),
                                  )
                                ],
                              )

                            ],
                          ),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12),))
                  );},
                    child: Container(height: 50,width: 150,
                      decoration: BoxDecoration(
                        color: Color(0xff185A80),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("Submit",style: GoogleFonts.poppins(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold ),),),
                    ),
                  ),
                ))
              ],
            ),
        ),

    );

  }
}
