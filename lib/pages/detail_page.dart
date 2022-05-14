import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static final String id = "detail_page";
  //const DetailPage({Key? key}) : super(key: key);
  final String input1;
  final int input2;
  DetailPage({required this.input1, required this.input2});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: (){
            Navigator.of(context).pop({'data':"Dart 22"});
          },
          color: Colors.red,
          child: Text(widget.input1),
        )
      ),
    );
  }
}
