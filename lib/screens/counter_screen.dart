import 'package:flutter/material.dart';
import '../services/storage_service.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  void loadCounter() async {
    counter = await StorageService.getCounter();
    setState(() {});
  }

  void increment() {
    setState(() {
      counter++;
    });
    StorageService.saveCounter(counter);
  }

  void decrement() {
    setState(() {
      counter--;
    });
    StorageService.saveCounter(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: decrement, child: const Text("-")),
              const SizedBox(width: 20),
              ElevatedButton(onPressed: increment, child: const Text("+")),
            ],
          )
        ],
      ),
    );
  }
}
