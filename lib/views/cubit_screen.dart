import 'package:bloc_counter/cubit_counter/counter_cubit.dart';
import 'package:bloc_counter/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePageWithCubit extends StatelessWidget {
  const MyHomePageWithCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const CupertinoNavigationBar(
        backgroundColor: whiteColor,
        brightness: Brightness.light,
        middle: Text(
          'Cubit Kullanımı',
          style: TextStyle(color: blackColor),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: blackColor, fontSize: 18),
            ),
            Text(
              context.watch<CounterCubit>().state.counter.toString(),
              style: const TextStyle(color: blackColor, fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: whiteColor,
            onPressed: () {
              context.read<CounterCubit>().increase();
            },
            tooltip: 'Increment',
            child: const Icon(
              CupertinoIcons.arrow_up_circle,
              color: blackColor,
            ),
          ),
          FloatingActionButton(
            backgroundColor: whiteColor,
            onPressed: () {
              context.read<CounterCubit>().decrease();
            },
            tooltip: 'Decrement',
            child: const Icon(
              CupertinoIcons.arrow_down_circle,
              color: blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
