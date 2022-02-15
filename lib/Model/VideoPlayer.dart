import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/Model/youtube_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayer extends StatefulWidget {
  YoutubePlayer({Key? key, required this.title, required this.id}) : super(key: key);
  final String title;
  final int id;

  @override
  _YoutubePlayerState createState() => _YoutubePlayerState();
}

class _YoutubePlayerState extends State<YoutubePlayer> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(title:'Shero', youtubeId: 'dcj_J3tjbX8'),
    YoutubeModel(title:'womentr', youtubeId: '1QHQ0YJodxI'),
    YoutubeModel(title: 'Bid', youtubeId: 'a8XGQ7IJ45Y'),
    
  ];

  @override
  void initState() {
    super.initState();
    _ytbPlayerController = YoutubePlayerController(
      initialVideoId: videosList[widget.id].youtubeId,
    );
    _setOrientation([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _ytbPlayerController = YoutubePlayerController(
          initialVideoId: videosList[widget.id].youtubeId,
          params: YoutubePlayerParams(
            showFullscreenButton: true,
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _setOrientation([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _ytbPlayerController.close();
  }

  _setOrientation(List<DeviceOrientation> orientations) {
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            _buildYtbView(),
          ],
        ));     
  }

  _buildYtbView() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: YoutubePlayerIFrame(controller: _ytbPlayerController)
    );
  }
}