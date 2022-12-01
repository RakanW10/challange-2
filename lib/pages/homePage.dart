import 'package:flutter/material.dart';

import 'Setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: const Text("Add Course"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.check,
              size: 40,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              //color: Colors.amber,
              width: 200,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80),
                    height: 200,
                    child: Image.network(
                        "https://www.shutterstock.com/image-vector/elearning-banner-online-education-home-600w-1694176021.jpg"),
                  ),
                  const Text(
                    "Course",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "UX DESIGN",
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "28 student",
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 80,
              width: 100,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      icon: Icon(Icons.check),
                      title: Text("Test"),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 48),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              child: const Text("Show Alert"),
            ),
            const SizedBox(
              height: 30,
              width: 100,
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Settings",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 100, top: 50),
                            width: MediaQuery.of(context).size.width,
                            //color: Colors.amber,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Setting(str: "Allow Teacher"),
                                Setting(str: "Allow Setudent"),
                                Setting(str: "Allow Teacher"),
                                Setting(str: "Allow Edit"),
                              ],
                            ),
                          ),
                        ],
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 48),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              child: const Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
