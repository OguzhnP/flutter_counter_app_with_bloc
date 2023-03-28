import 'package:bloc_counter/bloc_counter/counter_bloc.dart';
import 'package:bloc_counter/cubit_counter/counter_cubit.dart';
import 'package:bloc_counter/views/bloc_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grock/grock.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

const Color blackColor = Colors.black;
const Color whiteColor = Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
        )
      ],
      child: MaterialApp(
        navigatorKey: Grock.navigationKey,
        scaffoldMessengerKey: Grock.scaffoldMessengerKey,
        debugShowCheckedModeBanner: false,
        title: 'Bloc Counter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePageWithBloc(),
      ),
    );

    // return BlocProvider<CounterCubit>(
    //   create: (context) => CounterCubit(),
    //   child:
    // );
  }
}
