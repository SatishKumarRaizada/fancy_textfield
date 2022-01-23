import 'package:flutter/material.dart';
import 'package:flutter_input_field/flutter_input_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Input Field',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _height = _size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Input Field'),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            FlutterInputField(
              hintText: 'Enter username',
              labelText: 'Username',
              filledColor: Colors.grey.shade200,
              onChange: (String str) {},
              hintFontSize: 20,
              labelFontSize: 10,
              onDone: () {},
            ),
            SizedBox(height: _height * 0.02),
            FlutterInputField(
              hintText: 'Enter password',
              labelText: 'Password',
              filledColor: Colors.green.shade200,
              prefixWidget: const Icon(Icons.lock),
              suffixWidget: const Icon(Icons.remove_red_eye),
              onChange: (String str) {},
              onDone: () {},
            ),
            SizedBox(height: _height * 0.02),
            FlutterInputField(
              hintText: 'Enter details',
              labelText: 'Details about yourself',
              filledColor: Colors.purple.shade200,
              lineHeight: 3,
              onChange: (String str) {},
              onDone: () {},
            ),
            SizedBox(height: _height * 0.02),
            FlutterInputField(
              hintText: 'Enter mobile number',
              labelText: 'Mobile',
              filledColor: Colors.red.shade200,
              prefixWidget: const Icon(Icons.send_to_mobile_outlined),
              onChange: (String str) {},
              onDone: () {},
            ),
          ],
        ),
      ),
    );
  }
}
