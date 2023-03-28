import 'package:bloc_counter/bloc_counter/counter_bloc.dart';
import 'package:bloc_counter/cubit_counter/counter_cubit.dart';
import 'package:bloc_counter/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePageWithBloc extends StatelessWidget {
  const MyHomePageWithBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const CupertinoNavigationBar(
        backgroundColor: whiteColor,
        brightness: Brightness.light,
        middle: Text(
          'Bloc Kullanımı',
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
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: const TextStyle(color: blackColor, fontSize: 30),
                );
              },
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
              context.read<CounterBloc>().add(IncreaseCounterEvent());
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
              context.read<CounterBloc>().add(DecreaseCounterEvent());
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
