import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'stock.dart';
import 'Size.dart';
import 'price.dart';
import 'theme/theme.dart';
import 'viewmodel/vm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ViewModel(),
      child: MaterialApp(
        theme: themeData1,
          home: Scaffold(
        body: Card(
          child: SingleChildScrollView(
            child: Column(
              children: const [Size(), Price(), Stock()],
            ),
          ),
        ),
      )),
    );
  }
}
