import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_123/edit.dart';

class profileView extends StatefulWidget {
  const profileView({Key? key}) : super(key: key);

  @override
  State<profileView> createState() => _profileViewState();
}

class _profileViewState extends State<profileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(

          onPressed: () {
            
          },
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(0,0,15,0),
            child: Icon (Icons.arrow_back_ios, 
            color: Colors.black,),
          )
      ),
      title: Align(
        alignment: Alignment.center,
        child: Text("Profile",
        style: TextStyle(
          color: Colors.black
          ),
          ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu,
            color: Colors.black,
            ),
             ),
        ),
      ],
        ),
        body:  Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("images/sky.jpg"),
                radius: 50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,12,0,5),
                child: Text("KHADIJAH SAEED",
                style :TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text("@khadijahsaeed"),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02
              ),
              ElevatedButton(
                
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return Editview();
                    }
                     ),
                    );
                },
                child: Text("Edit Profile",
                style: TextStyle(color:Colors.black,
                fontSize: 15,
                ),
               ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.white),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                      ),
                ),
              ), 
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
                ),
                ListTile(
                  leading: Icon(Icons.settings_applications),
                  title: Text("settings",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  trailing: IconButton(
                    onPressed:() {},
                    icon: Icon(Icons.arrow_forward_ios,
                    ),
                     ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                  ),
                  ListTile(
                    leading: Icon(Icons.do_not_disturb),
                    title: Text("Billing Details",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      ),
                      ),
                       trailing: IconButton(
                    onPressed:() {},
                    icon: Icon(Icons.arrow_forward_ios,
                    ),
                     ),
                ),
               SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("User Management",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      ),
                      ),
                       trailing: IconButton(
                    onPressed:() {},
                    icon: Icon(Icons.arrow_forward_ios,
                    ),
                     ),
                ),
                 SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("Information",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      ),
                      ),
                       trailing: IconButton(
                    onPressed:() {},
                    icon: Icon(Icons.arrow_forward_ios,
                    ),
                     ),
                ),
                 SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                  ),
                  ListTile(
                    leading: Icon(Icons.logout_outlined),
                    title: Text("Log Out",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,),
                ),

                
          ],
          ),
        ),
    );
  }
}