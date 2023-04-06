import 'package:bloc_color_changer/logic/bloc/color_changer_bloc/color_changer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Changer'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ColorChangerBloc, ColorChangerState>(
              builder: (context, state) {
                if (state is ColorChangedState) {
                  return Container(
                    height: 200,
                    width: 200,
                    color: state.color,
                  );
                }
                return Container(
                  height: 200,
                  width: 200,
                  color: Colors.grey[300],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<ColorChangerBloc>(context)
                          .add(ColorChangeRedEvent());
                    },
                    child: Text('Red')),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<ColorChangerBloc>(context)
                          .add(ColorChangeBlueEvent());
                    },
                    child: Text('Blue'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
