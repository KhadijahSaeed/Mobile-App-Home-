import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GoogleAccountview extends StatelessWidget {
  const GoogleAccountview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.redAccent[700],
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  CircleAvatar(
                      radius:50,
                      backgroundImage:NetworkImage("image.png"),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text("WELCOME",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:15),
                      child: Text("Digibank  makes  banking ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                         ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text("hassle-free  and  a  lot  easier  for  you.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                         ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.4,
                    ),
                    SizedBox(
                      width: 300,
                      height: 35,
                      child: ElevatedButton(onPressed: () {},
                     child: Text("Sign In With Google",
                    style: TextStyle(
                      color: Colors.redAccent[700],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                       ),
                      ),
                      ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 10),
                         child: SizedBox(
                      width: 300,
                      height: 35,
                      child: ElevatedButton(onPressed: () {},
                     child: Text("Creat An Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                      ),
                         ),
                      ),
                      ),
                       ),
                ]
                ),
            ),
          ),


        ]
        ),
    );
    
  }
}