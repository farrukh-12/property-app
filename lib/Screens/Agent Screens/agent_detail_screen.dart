import 'package:blumo_app/Screens/Agent%20Screens/find_agent_screen.dart';
import 'package:blumo_app/Utils/property_card2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/agent.dart';
import '../../Utils/listed_property.dart';
import '../../Utils/property_model.dart';
class AgentDetailScreen extends StatelessWidget {
  final Agent agent;
  final ListedProperty listedproperty;
  AgentDetailScreen({super.key, required this.agent, required this.listedproperty,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 370,
                    ),
                    Container(
                      height: 340,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(60),bottomRight: Radius.circular(60)),image: DecorationImage(image: AssetImage(agent.image),fit: BoxFit.fill,)),
                      ),

                    Padding(
                      padding: const EdgeInsets.only(top:15.0,left: 10),
                      child: Row(
                        children: [
                          InkWell(child: Icon(Icons.arrow_back_ios_new,color:Colors.white ,),onTap: (){Navigator.pop(context,MaterialPageRoute(builder: (context)=>FindAgentScreen()));},)
                        ],
                      ),
                    ),

                    Positioned(bottom:0,left: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 85,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),color: Colors.white
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("   ${agent.listings}\nListing",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xff185A80)),),
                                  VerticalDivider(
                                    thickness: 2,
                                  ),
                                  Text("   ${agent.clients}\nClients",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xff185A80)),),
                                  VerticalDivider(
                                    thickness: 2,
                                  ),
                                  Text("       ${agent.housesold}\nHouseSold",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xff185A80)),),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Row(
                    children: [
                      Text(agent.name,style: GoogleFonts.poppins(fontSize: 31,fontWeight: FontWeight.w600,color: Color(0xff185A80)),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:24.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on,size: 16,color: Colors.red,),
                      Text(agent.address,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.grey),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Row(
                    children: [
                      Text("All Listings",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xff185A80)),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: MediaQuery.of(context).size.height*0.282,
                  child: ListView.builder(
                    itemCount: PropertyInfo.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return PropertyCard2(press: () {  }, listedproperty: listedproperty);
                    },
                  ),
                ),

      ],
    ),
            Positioned(top: 10,right:10,child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: (){},child: Icon(Icons.message,color: Color(0xff185A80),),backgroundColor: Colors.grey.shade300,),
              ],
            ))
          ],
        ),
    )
    );
  }}

