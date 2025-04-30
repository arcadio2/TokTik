import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';

class VideoButtons extends StatelessWidget {
  final VideosPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomItemButton(
          value: video.likes,
          icon: Icons.favorite,
          iconColor: Colors.red,
        ),
        _CustomItemButton(
          value: video.views,
          icon: Icons.remove_red_eye_outlined,
        ),
      ],
    );
  }
}

class _CustomItemButton extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color color;
  const _CustomItemButton({required this.value, required this.icon, iconColor})
    : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(icon, color: color, size: 35)),
        Text('$value'),
      ],
    );
  }
}
