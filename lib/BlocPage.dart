import 'package:bloc_lesson_steat_manejment/class_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPage extends StatefulWidget {
  const BlocPage({Key? key}) : super(key: key);

  @override
  _BlocPageState createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TestBloc>(
      create: (context) => TestBloc(),
      child: BlocBuilder<TestBloc, int>(builder: (context, state) {
        final blocP = BlocProvider.of<TestBloc>(context);
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                state.toString(),
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber),
              )),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        blocP.add(CountP());
                      },
                      icon: Icon(Icons.plus_one_outlined)),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        blocP.add(CountM());
                      },
                      icon: Icon(Icons.exposure_minus_1_outlined)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.skip_next,
                          size: 16,
                        ))),
              ),
            ],
          ),
        );
      }),
    );
  }
}
