import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Ordering Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(1, 239, 228, 225)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Simply Dessert'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  get children => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: 250,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(1, 225, 235, 229),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  // Following padding to give space around the image and text
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/butterscotch.jpg',
                      ),
                      const Text(
                        "ButterScotch",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: TextButton(
                         onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Details'),
          content: const Text('RM 50.00, Size: 6 inches (12 servings)'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Ok'),
              child: const Text('Ok'),
            ),]),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _showDialog = true;
                            });
                          },
                          child: const Text('Details')),
                      if (_showDialog)
                        FloatingDialog(
                            onClose: () {
                              setState(() {
                                _showDialog = false;
                              });
                            },
                            child: const SizedBox(
                                height: 200,
                                width: 300,
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                        'RM 50.00, Size: 6 inches (12 servings)')))),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: const Text('Add to Cart'))
                  ]),
                  ),
                ),
              )
        )],
          ),
        Container(
                height: 350,
                width: 250,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(1, 225, 235, 229),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  // Following padding to give space around the image and text
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/funfetti.jpg',
                      ),
                      const Text(
                        "Funfetti",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: TextButton(
                         onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Details'),
          content: const Text('RM 50.00, Size: 6 inches (12 servings)'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Ok'),
              child: const Text('Ok'),
            ),]),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _showDialog = true;
                            });
                          },
                          child: const Text('Details')),
                      if (_showDialog)
                        FloatingDialog(
                            onClose: () {
                              setState(() {
                                _showDialog = false;
                              });
                            },
                            child: const SizedBox(
                                height: 200,
                                width: 300,
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                        'RM 50.00, Size: 6 inches (12 servings)')))),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: const Text('Add to Cart'))
                  ]),
                  ),
                ),
              )
        )]
        ]));
  }
}
