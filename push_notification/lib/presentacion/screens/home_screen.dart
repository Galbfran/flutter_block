import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_notification/presentacion/blocs/notification/notifications_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select(
            (NotificationsBloc bloc) => Text(bloc.state.status.toString())),
        actions: [
          IconButton(
            onPressed: () {
              context.read<NotificationsBloc>().requestPermission();
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      floatingActionButton: const FloatingActionButton(onPressed: null),
      body: const SingleChildScrollView(
        child: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
