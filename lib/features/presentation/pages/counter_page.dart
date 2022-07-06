import 'package:flutter/material.dart';
import 'package:s2/features/presentation/widgets/counter_widget.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc State Management'),
      ),
      body: const CounterWidget(),
    );
  }
}
