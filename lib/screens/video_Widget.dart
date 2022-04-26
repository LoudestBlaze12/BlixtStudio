import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(VideoWidget());

class VideoWidget extends StatefulWidget {
  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
      // VideoPlayerController.network(
      //   'https://assets.mixkit.co/videos/preview/mixkit-bubbles-rising-in-water-178-large.mp4')
    VideoPlayerController.asset('assets/imgs/videoArt.mp4')
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        _controller.setVolume(0.0);
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: _controller.value.isInitialized
  //         ? AspectRatio(
  //       aspectRatio: _controller.value.aspectRatio,
  //       child: VideoPlayer(_controller),
  //     )
  //         : Container(
  //       color: Colors.red,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width:
                constraints.maxWidth * _controller.value.aspectRatio,
                height: constraints.maxHeight,
                child: VideoPlayer(_controller),
              ),
            ),
          );
        },
      )
          : Container(),
    );
  }


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}