import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_provider_app/core/services/count_model.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Consumer<CountModel>(
      builder: (context, value, child) => Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have push this button many times:'),
            Text(
              value.count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final counter = context.read<CountModel>();
          counter.incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        ),
    ));
  }
}