import 'package:bloc_cubit_provider/bloc/counter_bloc.dart';
import 'package:bloc_cubit_provider/bloc/inc_dec_bloc.dart';
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
final bloccounter = CounterBloc().state;


  
  @override
  Widget build(BuildContext context) {
    //final counterCubit = BlocProvider.of<CounterCubit>(context);
    //final counterBloc = BlocProvider.of<CounterBloc>(context);
    
        return Scaffold(
          appBar: AppBar(
            title: Text('Cubit & BLoC'),
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20,),
                 ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IncDecScreen())), child: Text('INC_DEC Screen CUBIT')),

                 const SizedBox(height: 20,),
                 ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IncDecBlocScreen())), child: Text('INC_DEC Screen BLoC')),
                 const SizedBox(height: 200,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                      'CUBIT Count:',style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(width: 10,),
                BlocBuilder<CounterCubit, int>(
                  //bloc: counterCubit,
                  builder: (context, counter) {
                    return Text(
                      '$counter',
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  }
                ),
                   ],
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                      'BLoC Count:',style: Theme.of(context).textTheme.titleLarge,
                                     ),
                      const SizedBox(width: 10,),
                BlocBuilder<CounterBloc, int>(
                  //bloc: counterCubit,
                  builder: (context, bloccounter) {
                    return Text(
                      '$bloccounter',
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  }
                ),
                   ],
                 ),
                
              ],
            ),
          ),
        );
      }
  }
