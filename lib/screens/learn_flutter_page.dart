import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  //means ? the value can be null
  // bool? isSwitc = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Learn Flutter Page"),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint("Actions");
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined))
          ],
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              //make back icon close the current page
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        //learning how to use Widgets
        //makes the page scrollable
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("images/tinqlab.png"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("images/tinqlab.png"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("images/tinqlab.png"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("images/tinqlab.png"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("images/tinqlab.png"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("images/tinqlab.png"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("images/tinqlab.png"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("images/tinqlab.png"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                color: Colors.blueGrey,
                width: double.infinity,
                child: const Center(
                  child: Text("container"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  debugPrint("This is the row");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                    Text(
                      "Row Widget",
                      style: TextStyle(
                          color: isSwitch ? Colors.green : Colors.yellow),
                    ),
                    const Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  debugPrint("This is the row");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                    Text(
                      "Row Widget",
                      style: TextStyle(
                          color: isSwitch ? Colors.green : Colors.yellow),
                    ),
                    const Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  debugPrint("This is the row");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                    Text(
                      "Row Widget",
                      style: TextStyle(
                          color: isSwitch ? Colors.green : Colors.yellow),
                    ),
                    const Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              //switch widget
              Switch(
                value: isSwitch,
                onChanged: (bool newBool) => {
                  setState(() {
                    isSwitch = newBool;
                  })
                },
              )
            ],
          ),
        ));
  }
}
