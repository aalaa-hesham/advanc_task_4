import 'package:advanc_task_4/pages/master_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) => {
          Navigator.of(context).pushReplacement(
              CupertinoPageRoute(builder: (_) =>  MasterPage()))
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 245, 73, 131),
          Color.fromARGB(137, 189, 24, 24),
          Color.fromARGB(136, 189, 24, 159),
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Icon(
          Icons.shopping_cart,
          size: 200,
          color: Colors.white,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Shop",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 241, 238, 238),
              fontSize: 50),
        ),
        SizedBox(
          height: 50,
        ),
        SpinKitFadingCube(
          color: Color.fromARGB(255, 173, 228, 10),
          size: 50.0,
        ),
      ]),
    ));
  }
}
