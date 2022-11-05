import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GoogleAccountviewret extends StatelessWidget {
  const GoogleAccountviewret({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[700],
      body: ListView(
        children: [
          Center(
            child: Row(children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
