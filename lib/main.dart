import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Satu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Login Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
        ],
        backgroundColor: const Color.fromARGB(5, 0, 0, 0),
        //backgroundColor: const Color.fromARGB(255, 139, 192, 236),
      ),
      backgroundColor: const Color.fromARGB(255, 187, 206, 241),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 800, // Limit the width to prevent too wide content
            ),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // Only take as much vertical space as needed
                children: <Widget>[
                  const FlutterLogo(size: 100),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter your email',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width:
                        double.infinity, // Make the button expand to full width
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Log In'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password?'),
                  ),

                  // Container(
                  //   padding: const EdgeInsets.all(32.0),
                  //   child: const TextField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     hintText: 'Email',
                  //   ),
                  // ),
                  // ),
                  // Container(
                  //   padding: const EdgeInsets.all(32.0),
                  //   child: const TextField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     hintText: 'Password',
                  //   ),
                  // ),
                  // ),
                  // Container(
                  //   padding: const EdgeInsets.all(32.0),
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     child: const Text('Log In'),
                  //     ),
                  // ),
                  // Container(
                  //   padding: const EdgeInsets.all(32.0),
                  //   child: TextButton(
                  //     onPressed: (){},
                  //     child: const Text('Forgot Password??')),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
