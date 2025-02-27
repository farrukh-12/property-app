import 'package:blumo_app/Screens/Buyer%20Screens/budget_estimation_screen.dart';
import 'package:blumo_app/Screens/Buyer%20Screens/compare_screen.dart';
import 'package:blumo_app/Utils/listed_property.dart';
import 'package:blumo_app/Utils/property_card2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blumo_app/Utils/payment_card.dart';
import 'package:blumo_app/Utils/payments.dart';
import 'package:blumo_app/Utils/property_card.dart';
import 'package:blumo_app/Utils/property_model.dart';

import '../../Utils/bottom_navbar.dart';
import '../Agent Screens/find_agent_screen.dart';
class BuyerDashboard extends StatefulWidget {
  late List<PropertyModel>PropertyInfo;
  late List<Payment>payment;
  BuyerDashboard({super.key});

  @override
  State<BuyerDashboard> createState() => _BuyerDashboardState();
}

class _BuyerDashboardState extends State<BuyerDashboard> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Container(height:80,width:80,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff185a80)
                    ),
                      child: Center(
                        child: Text("H",style: GoogleFonts.coiny(fontSize: 54,fontWeight: FontWeight.w400,color: Colors.white),),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      "Patrick Bateman",style: GoogleFonts.lexend(fontSize: 21,fontWeight:FontWeight.w700,color:Colors.black),),
                  ],
                ),
              ),

              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,color: Color(0xff1482C0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>BudgetEstimationScreen()));},
                      child: Container(
                        height:82,
                        width: 82,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff73E2FF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(AssetImage("assets/images/img/calculator.png"),size: 30,)
                              ],),
                            Text(
                              "    Budget\nEstimation",style: GoogleFonts.lexend(fontSize: 12,fontWeight:FontWeight.w400,color:Colors.black),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>FindAgentScreen()));},
                      child: Container(
                        height: 82,
                        width: 82,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff73E2FF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ]
                        ),
                        child: Column(
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person,size: 40,),
                              ],),
                            Text(
                              "Find an\n Agent",style: GoogleFonts.lexend(fontSize: 12,fontWeight:FontWeight.w400,color:Colors.black),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 82,
                      width: 82,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff73E2FF),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(AssetImage("assets/images/img/installment_icon.png"),size: 35,),
                            ],),
                          Text(
                            "      Pay\nInstallment",style: GoogleFonts.lexend(fontSize: 11,fontWeight:FontWeight.w400,color:Colors.black),),
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 82,
                      width: 82,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff73E2FF),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ]
                      ),
                      child: Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(AssetImage("assets/images/img/credit_simulation_icon.png"),size: 35,),
                            ],),
                          Text(
                            "    Credit\n Simulation",style: GoogleFonts.lexend(fontSize: 12,fontWeight:FontWeight.w400,color:Colors.black),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              TabBar(
                onTap: (value){setState(() {
                });},
                tabs: [
                  Tab(child:Text("Overview",style: GoogleFonts.lexend(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff185a80)),),
                  ),
                  Tab(child:Text("Favourite",style: GoogleFonts.lexend(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff185a80))),),
                  Tab(child:Text("Compare",style: GoogleFonts.lexend(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff185a80))),)
                ],
              ),
              Expanded(
                child
                    : TabBarView(

                    children:[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(
                          height: MediaQuery.of(context).size.height*0.4,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: payment.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return PaymentCard(payment: payment[index], press: () {  },);
                            },
                          ),
                        ),


                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(
                          height: MediaQuery.of(context).size.height*0.4,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: PropertyInfo.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return PropertyCard2(press: () {}, listedproperty: listedproperty[index], );
                            },
                          ),
                        ),


                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(
                          height: MediaQuery.of(context).size.height*0.4,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: 1,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                            return CompareScreen(property2: PropertyInfo[2], property1: PropertyInfo[1],);
                            },
                          ),
                        ),


                      ),
                    ]
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
