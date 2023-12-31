import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:inventix_intern_app/Home.dart';
import 'package:inventix_intern_app/voucher.dart';

class Landerscreen extends StatefulWidget {
  const Landerscreen({super.key});

  @override
  State<Landerscreen> createState() => _LanderscreenState();
}

class _LanderscreenState extends State<Landerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      bottomNavigationBar: Column(
        children: [

          Container(

            color: Colors.black,
            child: Column(
              children: [
                SizedBox(height: 40),
                Text("Welcome Back!",
                style: TextStyle(color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 15.0),

                  child: GNav(
                    gap: 15,
                    backgroundColor: Colors.black,
                    color: Colors.white,
                    activeColor: Colors.white,
                    hoverColor: Colors.red,
                    tabBackgroundColor: Colors.grey.shade800,
                    padding: EdgeInsets.all(16),
                    tabs: [

                      GButton(
                        icon: Icons.airplane_ticket_sharp,
                        text: 'Tickets',
                      ),
                      GButton(
                        icon: Icons.card_giftcard,
                        text: 'Vouchers',
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Vouchers()));
                        },
                      ),
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),



        ],
      ),
      body: TabBarView(
        children: <Widget>[
          Text("text 1"),
          Text("Text 2")
        ],
      ),
    );
  }
}




