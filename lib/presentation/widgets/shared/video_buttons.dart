import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_clone/config/helpers/human_formats.dart';
import 'package:tik_tok_clone/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost videoPost;

  const VideoButtons({
    super.key,
    required this.videoPost,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            value: videoPost.likes,
            icon: Icons.favorite,
            iconColor: Colors.red),
        _CustomIconButton(
          value: videoPost.views,
          icon: Icons.remove_red_eye,
        ),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
            child: const _CustomIconButton(
          value: 0,
          icon: Icons.play_circle_outline,
        ))
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color color;

  const _CustomIconButton({
    required this.value,
    required this.icon,
    iconColor,
  }) : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: color,
              size: 30,
            )),
        if (value > 0) Text(HumanFormats.humanReadableNumber(value.toDouble())),
      ],
    );
  }
}
