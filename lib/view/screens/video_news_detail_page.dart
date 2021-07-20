import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readky/model/core/video_news.dart';
import 'package:readky/view/widgets/custom_app_bar.dart';
import 'package:video_player/video_player.dart';

class VideoNewsDetailPage extends StatefulWidget {
  final VideoNews data;
  VideoNewsDetailPage({@required this.data});
  @override
  _VideoNewsDetailPageState createState() => _VideoNewsDetailPageState();
}

class _VideoNewsDetailPageState extends State<VideoNewsDetailPage> {
  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    print(widget.data);
    _videoPlayerController = VideoPlayerController.network(widget.data.video);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 5 / 8,
      autoInitialize: true,
      autoPlay: true,
      looping: true,
      allowMuting: true,
      showOptions: false,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        leadingIcon: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            dispose();
            Navigator.of(context).pop();
          },
        ),
        onPressedLeading: () {},
        title: SvgPicture.asset('assets/icons/appname.svg'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share_outlined,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Chewie(
          controller: _chewieController,
        ),
      ),
    );
  }
}
