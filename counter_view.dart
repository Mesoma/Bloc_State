import 'package:bloc_tutorial/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // BLocBuilder to alert the UI(counterview) about the Cubit and build widgets accordingly
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state){
          return Center(
            child: Text(
              //converts state to string and displays it
                state.toString(),
                style: const TextStyle(fontSize: 50),
            ),
          );
        },
      ),

      //floating action button to implement increment and decrement
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          //increment method read from countercubit
           FloatingActionButton(onPressed: ()=> context.read<CounterCubit>().increment(),
           child: const Icon(Icons.add),
          ),

          const SizedBox(height: 10,),

          //decrement method read from countercubit
          FloatingActionButton(onPressed: ()=> context.read<CounterCubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
