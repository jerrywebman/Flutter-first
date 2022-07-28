// import 'package:firstvideo/screens/forms_page.dart';
import 'package:firstvideo/providers/counter_provider.dart';
import 'package:firstvideo/providers/shopping_cart_provider.dart';
import 'package:firstvideo/screens/home_page.dart';
import 'package:firstvideo/screens/second_page.dart';
// import 'package:firstvideo/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    //step 2
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Counter(),
        ),
        ChangeNotifierProvider(
          create: (_) => ShoppingCart(),
        ),
      ],
      child: const MyApp(),
    ),
  );
  // const MyApp()
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //managing routes in flutter
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: RootPage(),
      initialRoute: "/",
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

// class RootPage extends StatefulWidget {
//   const RootPage({Key? key}) : super(key: key);

//   @override
//   State<RootPage> createState() => _RootPageState();
// }

// class _RootPageState extends State<RootPage> {
//   //create variable here
//   int currentPage = 0;
//   List<Widget> pages = const [HomePage(), ProfilePage(), FormsPage()];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: const Text("Flutter"),
//         centerTitle: true,
//       ),
//       //telling flutter which page to show
//       body: pages[currentPage],
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           //to print in the terminal
//           debugPrint("FloatingActionButton pressed");
//         },
//         child: const Icon(Icons.add),
//       ),
//       bottomNavigationBar: NavigationBar(
//         destinations: const [
//           NavigationDestination(icon: Icon(Icons.home), label: "Home"),
//           NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
//           NavigationDestination(icon: Icon(Icons.book), label: "Forms"),
//         ],
//         onDestinationSelected: (int index) {
//           setState(() {
//             currentPage = index;
//           });
//         },
//         selectedIndex: currentPage,
//       ),
//     );
//   }
// }
