
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  List textList=[];
  int count =0;
  addText()async{
    while(count<10){
      await Future.delayed(Duration(seconds: 5));
      count++;


      setState(() {

        textList.add('test');
      });
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: textList.length,
          itemBuilder: (context,index){
        return ListTile(title: Text(textList[index]),);
      })

    );
  }
}
