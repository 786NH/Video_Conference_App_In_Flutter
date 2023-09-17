import 'package:flutter/material.dart';
import 'video_conference.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}
String conferenceID="";
class _HomePageState extends State<HomePage> {
  var videoConfTextCtrl=TextEditingController(text: 'video conference id');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video Conferencing Demonstration'),),
      body: Center(
       child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: [
         Expanded(
          child: TextFormField(
            controller: videoConfTextCtrl,// naved 
            decoration: InputDecoration(
              labelText: 'join conference by id'
            ),
          ),),
          ElevatedButton(
            onPressed: (){
             conferenceID=videoConfTextCtrl.text.trim();
             Navigator.push(context,
             MaterialPageRoute(builder: ((context) =>video_conference() )));
            },
            child: Text('join'),
          ),
        ]),
       ),
      )
    );
  }
}