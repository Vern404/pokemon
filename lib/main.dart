import 'package:animateflutter/animation.dart';
import 'package:flutter/material.dart';
import 'pokemon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
    final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
// enum AniProps {color}
class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;
 // final _tween = MultiTween<AniProps>()
 //   ..add(AniProps.color, Colors.blue.tweenTo(Colors.yellow), 4.seconds);

  double paddingValue = 0;

  void updatePadding(double value){
    setState(() {
      paddingValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   onTap: (){
    //     setState(() {
    //       selected = !selected;
    //     });
    //   },
    //   child: Center(
    //     child: AnimatedContainer(
    //       width: selected? 200.0 : 100.0,
    //       height: selected ? 100.0: 200.0,
    //       alignment: Alignment.center,
    //       duration: const Duration(seconds: 1),
    //       color: Colors.amber,
    //       curve: Curves.elasticOut,
    //     ),
    //   ),
    // );
    return Pokemon();
  }
}
