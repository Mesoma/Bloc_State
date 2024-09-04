import 'package:bloc_tutorial/counter/counter_cubit.dart';
import 'package:bloc_tutorial/counter/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(0),


        // BlocListener to listen for changes in state
        child: BlocListener<CounterCubit, int>(
          listener: (context, state){

            // if state condition is met, then the Alert dialog should pop
            if(state == 10){
              showDialog(
                  context: context,
                  builder: (context) {

                    //future to pop the dialog box after 3 secs
                    Future.delayed(const Duration(seconds: 3), () {
                      Navigator.of(context).pop(); // Close the dialog
                    });

                    return const AlertDialog(
                      content: Text("You Have Reached 10"),
                    );
                  }
              );
            }
          },
            child: const CounterView(),
        )
    );
  }
}
