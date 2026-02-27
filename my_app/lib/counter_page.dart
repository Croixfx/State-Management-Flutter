// counter_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_state.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider app')),
      body: Center(
        child: Consumer<CounterState>(
          builder: (context, counter, _) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Count: ${counter.count}',
                style: const TextStyle(fontSize: 32),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Provider.of<CounterState>(context, listen: false).increment();
                },
                child: const Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<CounterState>(context, listen: false).reset();
                },
                child: const Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}