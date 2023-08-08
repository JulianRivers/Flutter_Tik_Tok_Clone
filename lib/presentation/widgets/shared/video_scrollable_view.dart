import 'package:flutter/material.dart';
import 'package:tik_tok_clone/domain/entities/video_post.dart';
import 'package:tik_tok_clone/presentation/widgets/shared/video_buttons.dart';
import 'package:tik_tok_clone/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    ///pageview es como un listado y ocupa todo el espacio que se le asigne
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),//da efecto de rebote en android al final de la página
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
            children: [
              FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
              Positioned(
                bottom: 40,
                right: 20,
                child: VideoButtons(videoPost: videoPost)
                )
            ],
        );
      },
    );
  }
}