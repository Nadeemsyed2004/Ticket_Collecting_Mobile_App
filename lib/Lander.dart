import 'package:flutter/material.dart';
import 'package:inventix_intern_app/Home.dart';
import 'package:inventix_intern_app/thanksscreen.dart';

class NewLander extends StatelessWidget {
  const NewLander({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController mycontroll1 = TextEditingController();
    final TextEditingController mycontroll2 = TextEditingController();
    final TextEditingController mycontroll3 = TextEditingController();
    final TextEditingController mycontroll4 = TextEditingController();
    final TextEditingController mycontroll5 = TextEditingController();
    final myKey = GlobalKey<FormState>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal.withOpacity(0.6),
            title: Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            )),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.airplane_ticket)),
                Tab(icon: Icon(Icons.card_giftcard)),
                Tab(icon: Icon(Icons.home)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              // first widget in the lander page
              // Tickets tab
              Scaffold(
                body: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/inv3"
                        ".jpg"),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 30.0),
                    child: Form(
                        key: myKey,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: SingleChildScrollView(
                            reverse: true,
                            child: Column(children: [
                              SizedBox(
                                height: 35,
                              ),
                              Text(
                                "Ticket Details",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                child: TextFormField(
                                    controller: mycontroll1,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      labelText: 'Ticket No:',
                                      hintText: "AAXXXXAA",
                                      labelStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.numbers,
                                        color: Colors.black,
                                      ),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          mycontroll1.clear();
                                        },
                                        icon: Icon(
                                          Icons.clear,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          borderSide: BorderSide(
                                            width: 8,
                                            color: Colors.red,
                                          )),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Required!";
                                      }
                                      return null;
                                    }),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                child: TextFormField(
                                    controller: mycontroll2,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      labelText: 'Name:',
                                      hintText: "Enter your name",
                                      labelStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.perm_identity,
                                        color: Colors.black,
                                      ),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          mycontroll2.clear();
                                        },
                                        icon: Icon(
                                          Icons.clear,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          borderSide: BorderSide(
                                            width: 8,
                                            color: Colors.red,
                                          )),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Required!";
                                      }
                                      return null;
                                    }),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                child: TextFormField(
                                    controller: mycontroll3,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      labelText: 'Description:',
                                      hintText: "describe some information...",
                                      labelStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.description,
                                        color: Colors.black,
                                      ),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          mycontroll3.clear();
                                        },
                                        icon: Icon(
                                          Icons.clear,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          borderSide: BorderSide(
                                            width: 8,
                                            color: Colors.red,
                                          )),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Required!";
                                      }
                                      return null;
                                    }),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                child: TextFormField(
                                    controller: mycontroll4,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      labelText: 'Status:',
                                      hintText:
                                          "Completed / Incomplete / Rejected ",
                                      labelStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                      hintStyle: TextStyle(fontSize: 13),
                                      prefixIcon: Icon(
                                        Icons.incomplete_circle,
                                        color: Colors.black,
                                      ),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          mycontroll4.clear();
                                        },
                                        icon: Icon(
                                          Icons.clear,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          borderSide: BorderSide(
                                            width: 8,
                                            color: Colors.red,
                                          )),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Required!";
                                      }
                                      return null;
                                    }),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                child: TextFormField(
                                  controller: mycontroll5,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    labelText: 'Remarks',
                                    hintText:
                                        "Feel free to add additional comments...",
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    hintStyle: TextStyle(
                                      fontSize: 13,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 40.0, horizontal: 50.0),
                                    prefixIcon: Icon(
                                      Icons.comment,
                                      color: Colors.black,
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        mycontroll5.clear();
                                      },
                                      icon: Icon(
                                        Icons.clear,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        borderSide: BorderSide(
                                          width: 8,
                                          color: Colors.red,
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:15,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: MaterialButton(
                                      onPressed: () {
                                        if (myKey.currentState!.validate()) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ThanksScreen()));
                                         }
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(40.0))),
                                      elevation: 10.0,
                                      minWidth: 195.0,
                                      height: 50,
                                      child: Text(
                                        "Submit",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      color: Colors.teal.withOpacity(0.9),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: MaterialButton(
                                      onPressed: () {
                                        mycontroll1.clear();
                                        mycontroll2.clear();
                                        mycontroll3.clear();
                                        mycontroll4.clear();
                                        mycontroll5.clear();
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(40.0))),
                                      elevation: 10.0,
                                      minWidth: 95.0,
                                      height: 50,
                                      child: Text(
                                        "Reset",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      color: Colors.deepOrangeAccent
                                          .withOpacity(0.9),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ]
                            ),

                          ),
                        )),
                  ),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              //
              //   child: Form(
              //     child: Container(
              //
              //       decoration: BoxDecoration(
              //         color: Colors.grey,
              //         borderRadius: BorderRadius.circular(15.0),
              //       ),
              //       child: Column(children: [
              //
              //         Text("Ticket Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              //         SizedBox(height: 10,),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              //           child: TextFormField(
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold
              //                 ,fontSize: 18),
              //             keyboardType: TextInputType.text,
              //             decoration: InputDecoration(
              //               labelText: 'Ticket No:',
              //               hintText: "AAXXXXAA",
              //               labelStyle: TextStyle(
              //                 color: Colors.black,
              //               ),
              //               prefixIcon: Icon(Icons.numbers,color: Colors.black,),
              //               suffixIcon: IconButton(
              //                 onPressed: (){},
              //                 icon: Icon(Icons.clear,
              //                   color: Colors.black,),
              //               ),
              //               border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(40.0),
              //                   borderSide: BorderSide(
              //                     width:8,
              //                     color: Colors.red,
              //                   )
              //               ),
              //             ),
              //               ),
              //         ),
              //
              //
              //
              //         SizedBox(height: 10,),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              //           child: TextFormField(
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold
              //                 ,fontSize: 18),
              //             keyboardType: TextInputType.name,
              //             decoration: InputDecoration(
              //               labelText: 'Name:',
              //               hintText: "Enter your name",
              //               labelStyle: TextStyle(
              //                 color: Colors.black,
              //               ),
              //               prefixIcon: Icon(Icons.perm_identity,color: Colors.black,),
              //               suffixIcon: IconButton(
              //                 onPressed: (){},
              //                 icon: Icon(Icons.clear,
              //                   color: Colors.black,),
              //               ),
              //               border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(40.0),
              //                   borderSide: BorderSide(
              //                     width:8,
              //                     color: Colors.red,
              //                   )
              //               ),
              //             ),
              //           ),
              //         ),
              //
              //
              //
              //         SizedBox(height: 10),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              //           child: TextFormField(
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold
              //                 ,fontSize: 18),
              //             keyboardType: TextInputType.text,
              //             decoration: InputDecoration(
              //               labelText: 'Description:',
              //               hintText: "describe some information...",
              //               labelStyle: TextStyle(
              //                 color: Colors.black,
              //               ),
              //               prefixIcon: Icon(Icons.description,color: Colors.black,),
              //               suffixIcon: IconButton(
              //                 onPressed: (){},
              //                 icon: Icon(Icons.clear,
              //                   color: Colors.black,),
              //               ),
              //               border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(40.0),
              //                   borderSide: BorderSide(
              //                     width:8,
              //                     color: Colors.red,
              //                   )
              //               ),
              //             ),
              //           ),
              //         ),
              //
              //
              //
              //         SizedBox(height: 10),
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              //           child: TextFormField(
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold
              //                 ,fontSize: 18),
              //             keyboardType: TextInputType.text,
              //             decoration: InputDecoration(
              //               labelText: 'Remarks',
              //               hintText: "Feel free to add additional comments...",
              //               labelStyle: TextStyle(
              //                 color: Colors.black,
              //               ),
              //               contentPadding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 50.0),
              //               prefixIcon: Icon(Icons.comment,color: Colors.black,),
              //               suffixIcon: IconButton(
              //                 onPressed: (){},
              //                 icon: Icon(Icons.clear,
              //                   color: Colors.black,),
              //               ),
              //               border: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(40.0),
              //                   borderSide: BorderSide(
              //                     width:8,
              //                     color: Colors.red,
              //                   )
              //               ),
              //             ),
              //           ),
              //         )
              //
              //
              //
              //       ]),
              //     )),
              // ),

              // second widget in the lander page
              // Vouchers tab

              Scaffold(
                body: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 200.0, horizontal: 40.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(13.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Sorry! There is No Vouchers "
                            "available now...",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewLander()));
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
              ),

// third widget in the lander page
// Home tab

              Scaffold(
                body: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 200.0, horizontal: 40.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(13.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Are you sure to move Home page?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                            child: Text(
                              "Home",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
