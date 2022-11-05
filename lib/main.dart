import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_123/login.dart';
import 'package:flutter_application_123/profile.dart';
import 'package:flutter_application_123/sign_up.dart.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    // ignore: prefer_const_constructors
    home: LoginView(),

    // home: SignUPview(),
    //   home:LogOutview(),
    //  home: GoogleAccountview (),
    // home: GoogleAccountviewret(),
    // home: profileView(),
    // home: Editview(),

    // validator:(value){
    // if (value!.isNotEmpty)return "Email is not valid ";
    // String pattern = r\w+@\w+\.\w+;
    // }
    // Number
    // keyboard: TextInputType.number
    //
  ));
}
