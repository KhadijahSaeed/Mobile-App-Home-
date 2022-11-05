import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LogOutview extends StatelessWidget {
  const LogOutview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.1,
               ),
                Align(
                  alignment: Alignment.center,
                  child: Text("BLINKS",
                  style: TextStyle(
                    color:Colors.deepOrange,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                     ),
                      ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("HOME",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Email",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                         ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("Forget Password?",
                      style: TextStyle(
                        color:Colors.black
                         ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        width: 300,
                        child: ElevatedButton(onPressed: (){},
                        child: Text("Sign In"
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.5),
                            )
                          ),
                        ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an Account?", 
                        style: TextStyle(
                          color:Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                           ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Sign Up",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                            ),
                          ),
                        )


                      ],
                    ),
                  ],
                )
              ]
              ),
             
            ),
          )
        ],
       ),
    );
    
  }
}