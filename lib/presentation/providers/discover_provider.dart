import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repository, Datasource

  bool initialLoading = true;
  List<VideosPost> videos = [];

  Future<void> loadNextPage() async {
    //todo: chargue videos

    await Future.delayed(const Duration(seconds: 2));

    final List<VideosPost> newVideos =
        videoPosts
            .map(
              (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity(),
            )
            .toList();

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
