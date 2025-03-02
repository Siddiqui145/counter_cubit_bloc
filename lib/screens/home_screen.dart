import 'package:bloc_cubit_provider/cubit/counter_cubit.dart';
import 'package:bloc_cubit_provider/screens/inc_dec_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final counter = CounterCubit().state;
//final counterCubit = CounterCubit();


  
  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20,),
                 ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IncDecScreen())), child: Text('INC_DEC Screen')),
                 const SizedBox(height: 250,),
                 Text(
                  'Count:',style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10,),
                BlocBuilder<CounterCubit, int>(
                  bloc: counterCubit,
                  builder: (context, counter) {
                    return Text(
                      '$counter',
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  }
                ),
              ],
            ),
          ),
        );
      }
  }
