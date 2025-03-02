import 'package:bloc_cubit_provider/bloc/counter_bloc.dart';
import 'package:bloc_cubit_provider/cubit/counter_cubit.dart';
import 'package:bloc_cubit_provider/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterCubit(),), //create is a must & here we write our Cubit name
        BlocProvider(create: (_) => CounterBloc()) //we are creating now for BLoC after Cubit.
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

