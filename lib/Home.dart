import 'package:flutter/material.dart';
import 'package:inventix_intern_app/login.dart';
import 'package:inventix_intern_app/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/inventix-1.jpg"),
            fit: BoxFit.cover,
          )),
          child: Column(children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/inventix-2.jpg"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 05.0, horizontal: 20.0),
              child: Text(
                "InventiX Tickets          ",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 05.0, horizontal: 20.0),
              child: Text(
                "Get your Ticket Details by Entering your Login Credentials",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 05.0, horizontal: 20.0),
                  child: Text("Enter to Login...",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF595757),
                      )),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  color: Color(0xFF595757),
                ),
              ],
            ),
          ]),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
