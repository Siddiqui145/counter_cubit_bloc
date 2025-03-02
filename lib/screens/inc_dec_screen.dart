import 'package:bloc_cubit_provider/cubit/counter_cubit.dart';
import 'package:bloc_cubit_provider/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecScreen extends StatefulWidget {
  const IncDecScreen({super.key});

  @override
  State<IncDecScreen> createState() => _IncDecScreenState();
}

class _IncDecScreenState extends State<IncDecScreen> {
  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Screen'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage())), child: Text('Home Screen')),
                const SizedBox(height: 250,),

                FloatingActionButton(
                  onPressed: () => counterCubit.increment(),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 25,),
                FloatingActionButton(
                  onPressed: () => counterCubit.decrement(),
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
      ), 
    );
  }
}