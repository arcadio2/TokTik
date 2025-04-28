import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideosPost> videos = [];

  Future<void> loadNextPage() async {
    //todo: chargue videos

    notifyListeners();
  }
}
