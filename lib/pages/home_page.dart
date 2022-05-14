import 'package:flutter/material.dart';
import 'package:pdp/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static final String id="Home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "Open detail page";
  Future _openDetails() async {
    Map result = await Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) {
          return new DetailPage(input1: "Flutter", input2: 22,);
        }
    ));

    if (result != null && result.containsKey ('data')){
      setState(() {
        data = result['data'];
      });

    }else{
    print("Nothing");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: (){
            _openDetails();
            //Navigator.pushNamed(context, DetailPage.id);
          },
          color: Colors.blue,
          child: Text(data),
        ),
      ),
    );
  }
}
