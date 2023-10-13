import 'package:bloc_demo/bloc/internet_bloc.dart';
import 'package:bloc_demo/bloc/internet_bloc_event.dart';
import 'package:bloc_demo/bloc/internet_bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocDemo extends StatelessWidget {
  const BlocDemo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Block Demo"),
          centerTitle: true,
        ),

        /*
      * BlocBuilder Demo
      * */

        /*body: BlocProvider(
        create: (BuildContext context) {
          return InternetBloc();
        },
        child: Center(
          child: BlocBuilder(
            bloc: InternetBloc(),
            builder: (BuildContext context, state) {
              if (state is InternetGainedState) {
                return Text("Connected...!!");
              } else if (state is InternetLostState) {
                return Text("Disconnected...!!");
              }
              return Text("Loading...");
            },
          ),
        ),
      ), */

        /*
      * BlocListener Demo
      * */

        /*body: BlocProvider(
        create: (BuildContext context) {
          return InternetBloc();
        },
        child: Center(
          child: BlocListener<InternetBloc, InternetState>(
            listener: (context, state) {
              if (state is InternetGainedState) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Connected...!!"),
                  shape: StadiumBorder(),
                ));
              }
              if (state is InternetLostState) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Disconnected...!!"),
                  shape: StadiumBorder(),
                ));
              }
            },
            child: Container(),
          ),
        ),
      ),*/

        /*
      * BlocConsumer
      * */

        body: Center(
          child: BlocProvider(
            create: (_) => InternetBloc(),
            child: BlocConsumer(
              builder: (BuildContext context, state) {
                if (state is InternetGainedState) {
                  return Text("Connected...!!");
                } else if (state is InternetLostState) {
                  return Text("Disconnected...!!");
                }
                return Text("Loading...");
              },
              listener: (BuildContext context, state) {
                if (state is InternetGainedState) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Connected...!!"),
                    shape: StadiumBorder(),
                  ));
                }
                if (state is InternetLostState) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Disconnected...!!"),
                    shape: StadiumBorder(),
                  ));
                }
              },
              bloc: InternetBloc(),
            ),
          ),
        ));
  }
}
