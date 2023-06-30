import 'package:flutter/material.dart';

void main() => runApp(MyApp));

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Online Ordering Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(1, 239, 228, 225)),
        useMaterial3: true,
        ),
        home: const LastPage(title: 'Check Out'),
      );
  }
}

class LastPage extends StatelessWidget {
  @override
  Widget build(BuidContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Thank You")
      ),
      body:Center(
        child:Text(
          "Your Order will Be Delevered Soon! Thank You for Supporting Us!",
          style: TextStyle(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(1, 239, 228, 225)),
          useMaterial3: true,
          ),
        )
      ),
    );
  }
}