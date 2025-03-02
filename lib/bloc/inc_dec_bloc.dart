import 'package:bloc_cubit_provider/bloc/counter_bloc.dart';
import 'package:bloc_cubit_provider/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecBlocScreen extends StatefulWidget {
  const IncDecBlocScreen({super.key});

  @override
  State<IncDecBlocScreen> createState() => _IncDecScreenState();
}

class _IncDecScreenState extends State<IncDecBlocScreen> {
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC Screen'),
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
                  onPressed: () => counterBloc.add(CounterIncremented()),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 25,),
                FloatingActionButton(
                  onPressed: () => counterBloc.add(CounterDecremented()),
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
      ), 
    );
  }
}