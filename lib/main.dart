import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animation extends StatelessWidget {
  const Animation({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
      ),
      home: const Lottiee(),
    );
  }
}

class Lottiee extends StatefulWidget {
  const Lottiee({super.key});

  @override
  State<Lottiee> createState() => _LottieeState();
}

class _LottieeState extends State<Lottiee> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    // ignore: unused_label
    _controller:
    AnimationController(
      vsync: this,
      duration:const Duration(seconds: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://assets6.lottiefiles.com/packages/lf20_vtaqleiq.json',
          controller: _controller,
          onLoaded: (composition) {
           _controller.forward();
        
          },
        ),
      ),
    );
  }
}
