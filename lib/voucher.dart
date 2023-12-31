import 'package:flutter/material.dart';
import 'package:inventix_intern_app/Lander.dart';

import 'newlander.dart';

class Vouchers extends StatelessWidget {
  const Vouchers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 300.0, horizontal: 40.0),
        child: Container(

          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(13.0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Sorry! There is No Vouchers "
                    "available now...",
                style:TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ) ,
                ),
                SizedBox(height: 10),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewLander()));
                  },
                  child: Text(
                    "Back",
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
          ),
        ),
      ),
    );
  }
}