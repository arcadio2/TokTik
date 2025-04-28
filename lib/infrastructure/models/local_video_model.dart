import 'package:tok_tik/domain/entities/videos_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) {
    return LocalVideoModel(
      name: json["name"] ?? "no name",
      videoUrl: json["videoUrl"] ?? "not found",
      likes: json["likes"] ?? 0,
      views: json["views"] ?? 0,
    );
  }

  VideosPost toVideoPostEntity() {
    return VideosPost(
      caption: name,
      videoUrl: videoUrl,
      likes: likes,
      views: views,
    );
  }
}
