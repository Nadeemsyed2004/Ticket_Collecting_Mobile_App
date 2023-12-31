import 'package:flutter/material.dart';
import 'package:inventix_intern_app/Home.dart';
import 'package:inventix_intern_app/Lander.dart';
import 'package:inventix_intern_app/newlander.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});



  @override
  Widget build(BuildContext context) {

    final TextEditingController _controller = TextEditingController();
    final TextEditingController _controller1 = TextEditingController();
    final formkey = GlobalKey<FormState>();

    bool isvisible= false;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/inventix-1.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: Column(


        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35.0,horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  icon: const Icon(Icons.arrow_left,
                  size: 40,),
                  color: Colors.white,
                  tooltip: 'Back',
                ),
                  Text("                         ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.comment),
                    color: Colors.white,
                    tooltip: 'comment',
                ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.settings),
                  color: Colors.white,
                  tooltip: 'settings',
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


          Form(
            key: formkey,
              child: Column(children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),


              child: TextFormField(
                style: TextStyle(color: Colors.white,fontSize: 18),
                keyboardType: TextInputType.emailAddress,
                controller: _controller1,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: "Enter Email",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: Icon(Icons.email,color: Colors.white,),
                  suffixIcon: IconButton(
                    onPressed: _controller1.clear,
                    icon: Icon(Icons.clear,
                    color: Colors.white,),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(
                      width:8,
                      color: Colors.red,
                    )
                  ),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "enter your Mail-ID";
                  }
                  else{
                    if(value != "inventix123@gmail.com"){
                      return "ID not available";
                    }
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),


              child: TextFormField(
                obscureText: !isvisible,
                style: TextStyle(color: Colors.white,fontSize: 18),
                keyboardType: TextInputType.visiblePassword,
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: "Enter Password",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: Icon(Icons.password,color: Colors.white,),
                  suffixIcon: IconButton(
                    onPressed: _controller.clear,
                    icon: Icon(Icons.clear,
                      color: Colors.white,),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide(
                        width:8,
                        color: Colors.red,
                      )
                  ),
                ),
                onChanged: (String value) {},
                validator: (value) {
                  RegExp regex =
                  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
                  if (value == null) {
                    return 'please enter password';
                  }
                  if(!regex.hasMatch(value)){
                      return "enter valid password";
                  }
                  else{
                    if(value != "Inventix123"){
                      return "Wrong password";
                    }
                  }
                    return null;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),



            //     Material(
            //   color: Color(0xFF595757),
            //   borderRadius: BorderRadius.circular(40),
            //   child: InkWell(
            //     onTap: () {
            //       Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
            //     },
            //
            //     child: Container(
            //       padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
            //       child: Text(
            //         "Get Started",
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 22,
            //           fontWeight: FontWeight.w400,
            //           letterSpacing: 1,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
                MaterialButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => HomeScreen()));
                       if (formkey.currentState!.validate()){
                         // ScaffoldMessenger.of(context).showSnackBar(
                         //   const SnackBar(content: Text("Processing Data")),
                             Navigator.push(context,
                                 MaterialPageRoute(builder: (context) => NewLander()));
                         // );

                       }
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                  elevation: 10.0,
                  minWidth: 195.0,
                  height: 50,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  color: Color(0xFF595757),
                ),
          ]))
      ],
      ),)
    ));
  }
}
