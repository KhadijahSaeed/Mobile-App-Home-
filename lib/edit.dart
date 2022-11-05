import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// onPressed: () {
// Navigator.pop(context, MaterialPageRoute(builder:(context) {
// return Editview(); when you want to go back . push for going forward.

class Editview extends StatefulWidget {
  const Editview({Key? key}) : super(key: key);

  @override
  State<Editview> createState() => _EditviewState();
}

class _EditviewState extends State<Editview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) {
                return const Editview();
              }),
            );
          },
          icon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Center(
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/sky.jpg"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Form(
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    Align(
                        alignment: Alignment.centerLeft,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                          child: Text("Name",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        )),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          hintText: "Sky Blinks",
                          helperStyle: const TextStyle(fontSize: 10)),
                    ),
                  ],
                ),
              ),
              Form(
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                          child: Text(
                            "Email Adress",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey[100],
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Sky Blinks@gmail.com",
                      ),
                    ),
                  ],
                ),
              ),
              Form(
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                          child: Text(
                            "username",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey[100],
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "098765",
                      ),
                    ),
                    Form(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                              child: Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffix: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.grey[500],
                              ),
                              fillColor: Colors.grey[100],
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              hintText: "Sky Blinks",
                            ),
                          ),
                          Form(
                            child: Column(
                              children: [
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                                      child: Text(
                                        "Birth Date",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )),
                                TextFormField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey[100],
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      hintText: "dd/ mm/ yyyy"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: "joined",
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: "17 April 2022",
                        style: TextStyle(color: Colors.black),
                      ),
                    ]),
                  ),
                  TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey[200]),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red[900]),
                        ),
                      ))
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
