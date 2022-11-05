import 'package:flutter/material.dart';
import 'package:flutter_application_123/auth.dart';
import 'package:flutter_application_123/profile.dart';

class SignUPview extends StatefulWidget {
  SignUPview({Key? key}) : super(key: key);
  @override
  State<SignUPview> createState() => _SignUPviewState();
}

class _SignUPviewState extends State<SignUPview> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obserText = true;
  bool obscureText = true;
  Auth signUp = Auth();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "GROCERY",
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "MART",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter your Email";
                                } else if (value.contains(".com")) {
                                  return "";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[300], filled: true),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Phone Number",
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter your phone Number";
                                } else if (value.contains(".com")) {
                                  return "The phone Number is not valid";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                fillColor: Colors.grey[300],
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.1),
                            child: TextFormField(
                              controller: passwordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter your password";
                                } else if (value
                                    .contains("more than 6 letters")) {
                                  return "Invalid password";
                                }
                                return null;
                              },
                              obscureText: obserText,
                              decoration: InputDecoration(
                                fillColor: Colors.grey[300],
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SizedBox(
                              width: 550,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (_formkey.currentState!.validate()) {
                                    print("Sign up sucessful");
                                    await signUp.createUserWithEmailAndPassword(
                                        email: emailController.text,
                                        password: passwordController.text);
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => profileView()),
                                    );
                                  }
                                },
                                child: Text(
                                  "Sign Up",
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.greenAccent),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ))),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "By Clicking Sign Up You Agree to the ",
                                style: TextStyle(
                                  color: Colors.indigo[100],
                                  fontSize: 10,
                                ),
                              ),
                              const Text(
                                "Terms ",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "& ",
                                style: TextStyle(
                                  color: Colors.indigo[100],
                                  fontSize: 12,
                                ),
                              ),
                              const Text(
                                "Privacy Policy",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 27),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}                      

                           //       TextFormField(
                      //         controller: emailController,
                      //                 validator: (value){
                      // if(value!.isEmpty){ 
                      //   return"Enter your Email";
                      // }else if (value.contains("="
                      // )){
                      //   return "There is no= ";
                      // }
                      //  },
                      //     ),