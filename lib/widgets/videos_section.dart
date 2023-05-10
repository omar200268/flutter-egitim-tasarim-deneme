import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  List videoList = [
    'Fluttera Giriş',
    'Flutterı Windowsa Kurmak',
    'Windowsta Emulator Kurulumu',
    'İlk Uygulamamızı Oluşturuyoruz',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Colors.lightBlue
                  : Colors.lightBlue.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text("20 dk 50 sn"),
        );
      },
    );
  }
}
