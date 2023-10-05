import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled16/control/cubit_example/counter_screen_cubit/counter_cubit.dart';
import 'package:untitled16/control/cubit_example/counter_screen_cubit/counter_cubit_state.dart';

class CounterScreenView extends StatefulWidget {
  const CounterScreenView({super.key});

  @override
  State<CounterScreenView> createState() => _CounterScreenViewState();
}

class _CounterScreenViewState extends State<CounterScreenView> {
  final textStyle = const TextStyle(fontSize: 50, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: BlocBuilder<CounterCubit, CounterCubitState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (state is CounterUpdate)
                      ? Text(state.value.toString(), style: textStyle)
                      : Text('0', style: textStyle),
                  const SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: GestureDetector(
                          child: const Icon(Icons.add),
                          onTap: () {
                            context.read<CounterCubit>().counterIncrease();
                          },
                        ),
                      ),
                      const SizedBox(width: 40),
                      CircleAvatar(
                        child: GestureDetector(
                          child: const Icon(Icons.remove),
                          onTap: () {
                            context.read<CounterCubit>().counterDecrease();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
