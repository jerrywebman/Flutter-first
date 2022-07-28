import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firstvideo/providers/counter_provider.dart';

// import 'package:firstvideo/screens/learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            const Count(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text("Launch Screen"),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key("decrement_action_button"),
            onPressed: () => context.read<Counter>().decrement(),
            tooltip: "Decrement",
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            key: const Key("reset_action_button"),
            onPressed: () => context.read<Counter>().reset(),
            tooltip: "Reset",
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            key: const Key("increment_action_button"),
            onPressed: () => context.read<Counter>().increment(),
            tooltip: "Increment",
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Text('Learn Flutter:${context.watch<Counter>().count}'));
  }
}
