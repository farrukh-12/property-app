import 'package:blumo_app/Screens/Splash%20Screens/splash_screen1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/logoblumo.png",height: 85,width: 80,),
                    Container(
                      height: 36,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xffDFDFDF)
                      ),
                      child: Center(
                        child: Text("Skip",style: GoogleFonts.poppins(fontSize: 14,color: Colors.black),),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10),
                  child: Row(
                    children: [
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(text: "Find the best place\n",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.black)),
                          TextSpan(text: "to stay in ",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.black)),
                          TextSpan(text: "Good price ",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w600,color: Color(0xff204D6C)))
                        ]
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10),
                  child: Row(
                    children: [
                      RichText(text: TextSpan(
                          children: [
                            TextSpan(text: "Discover the best places to stay in\nat great prices with BST (Best Stay Deals)!",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff292929))),
                          ]
                      )),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.5,
                    width: MediaQuery.of(context).size.width*1 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(image: AssetImage("assets/splashimage1.jpg",),fit: BoxFit.fill,colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3), // Adjust opacity and color as needed
                        BlendMode.darken,),

                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom:120,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LinearPercentIndicator(
                                width: 70.0,
                                barRadius: Radius.circular(100),
                                lineHeight: 4.0,
                                percent: 0.33,
                                backgroundColor: Colors.grey,
                                progressColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen1()));},
                                child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff234F68)
                                  ),
                                  child: Center(child: Text("Next",style: GoogleFonts.poppins(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600),),),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),



                  ),
                )
              ],
            ),
          ),
        )

    );
  }
}
