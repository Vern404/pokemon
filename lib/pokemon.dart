import 'package:flutter/material.dart';


class Pokemon extends StatefulWidget {
  const Pokemon({Key? key}) : super(key: key);

  @override
  State<Pokemon> createState() => _PokemonState();
}

class _PokemonState extends State<Pokemon> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _translateAnimation;
  int score = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller.addListener(() => setState(() { }));
    _translateAnimation = _controller.drive(Tween<Offset>(
      begin: const Offset(100.0, 50.0),
      end: const Offset(200.0, 300.0),
    ),);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon'),
      ),

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            alignment: Alignment.topCenter,
            child: Text('Score: $score'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                    //player
                Image.asset(
                  'images/jump.png',
                   height:150,
                   fit: BoxFit.cover,

                  ),
            ]
          ),
          Column(
            children:[
            Image.asset('images/stone.png',height:100,fit: BoxFit.cover,)
              ]
          ),
          ElevatedButton(
            onPressed: (){
          },
              child: Text('Jump'))
        ],
      ),
    );
  }
}
