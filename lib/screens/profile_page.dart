import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //list of elements like js .map
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const Icon(Icons.abc_sharp),
          trailing: const Icon(Icons.percent),
          title: Center(child: Text("Item ${(index + 1)}")),
        );
      },
    );
  }
}
