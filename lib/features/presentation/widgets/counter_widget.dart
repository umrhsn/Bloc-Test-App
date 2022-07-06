import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s2/features/presentation/cubit/cubit.dart';
import 'package:s2/features/presentation/cubit/states.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  State<CounterWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          CounterCubit counterCubitObject = CounterCubit.get(context);
          int counter = counterCubitObject.counter;
          if (state is CounterInitialState) {
            debugPrint('CounterInitialState');
            debugPrint('$counter');
          }
          if (state is CounterDecrementState) {
            debugPrint('CounterDecrementState');
            debugPrint('$counter');
          }
          if (state is CounterIncrementState) {
            debugPrint('CounterIncrementState');
            debugPrint('$counter');
          }
        },
        builder: (context, state) {
          CounterCubit counterCubitObject = CounterCubit.get(context);
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => counterCubitObject.decrementCounter(),
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                Text(
                  '${counterCubitObject.counter}',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () => counterCubitObject.incrementCounter(),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
