import 'package:flutter/material.dart';
import 'package:vid_conf/home_page.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class video_conference extends StatefulWidget {
  const video_conference({Key? key}) : super(key: key);

  @override
   Conference createState() => Conference();
}
class Conference extends State<video_conference>{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        userName: 'Nitin',
        userID: 'Nitin98',
        conferenceID: conferenceID,
        appID:  , // Give your AppID here, Provided by ZEGOCLOUDAPI
        appSign: '',//Give your AppID here, Provided by ZEGOCLOUDAPI
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ) 
      );
  }
}
