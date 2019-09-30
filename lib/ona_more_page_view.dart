import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OneMorePage extends StatefulWidget {

  const OneMorePage({Key key}) : super(key: key);
  @override
  _OneMorePageState createState() => _OneMorePageState();
}

class _OneMorePageState extends State<OneMorePage> {
  @override
  Widget build(BuildContext context) {
    print('One more page rebuit');
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Center(child: Text('Here some text...', style: TextStyle(color: Colors.black),)),
        ),
      ),
    );
  }
}
