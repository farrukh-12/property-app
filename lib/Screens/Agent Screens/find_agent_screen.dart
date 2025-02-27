import 'package:blumo_app/Screens/Agent%20Screens/agent_detail_screen.dart';
import 'package:blumo_app/Utils/agent_card.dart';
import 'package:blumo_app/Utils/listed_property.dart';
import 'package:blumo_app/Utils/property_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/agent.dart';
class FindAgentScreen extends StatefulWidget {
  late List<Agent>agent;
  FindAgentScreen({super.key});

  @override
  State<FindAgentScreen> createState() => _FindAgentScreenState();
}

class _FindAgentScreenState extends State<FindAgentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(80),bottomLeft: Radius.circular(80)),
                  color: Color(0xff4DCBF3),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Let's find the best agent \nfor you!",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w700,color: Color(0xff015382)),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 45,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search area or location you want",hintStyle: TextStyle(color: Color(0xff015382)),
                          prefixIcon: Icon(Icons.search_rounded),prefixIconColor: Color(0xff015382),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TabBar(
                onTap: (value){setState(() {
                });},
                tabs: [
                  Tab(child:Text("All",style: GoogleFonts.lexend(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff185a80)),),
                  ),
                  Tab(child:Text("Nearby",style: GoogleFonts.lexend(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff185a80))),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                Padding(
                  padding: const EdgeInsets.only(left:5.0,right: 5.0),
                  child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3/3.5,
                  crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 5.0, // Spacing between columns
                    mainAxisSpacing: 5.0, // Spacing between rows
                  ),
                  itemCount: agent.length,
                  itemBuilder: (context, index) {
                    return AgentCard(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgentDetailScreen(
                              agent: agent[index],
                              listedproperty: listedproperty[index],
                            ),
                          ),
                        );
                      },
                      agent: agent[index],
                    );
                  },
              ),
                ),
                    // Tab 2 content
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3/3.5 ,
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 10.0, // Spacing between columns
                    mainAxisSpacing: 10.0, // Spacing between rows
                  ),
                  itemCount: agent.length,
                  itemBuilder: (context, index) {
                    return AgentCard(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgentDetailScreen(
                              agent: agent[index],
                              listedproperty: listedproperty[index],
                            ),
                          ),
                        );
                      },
                      agent: agent[index],
                    );
                  },
                ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
