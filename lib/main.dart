import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_provider_app/Ui/home_screen.dart';
import 'package:simple_provider_app/core/services/count_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CountModel(),
      child: const MyApp(),
    ),
    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent),
        useMaterial3: true,
      ),
      home: const HomeScreen(title: 'Provider Demo',),
    );
  }
}

