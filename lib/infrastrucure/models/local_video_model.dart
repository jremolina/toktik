import 'package:toktik/domain/entities/videos_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int views;
  final int likes;

  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      required this.views,
      required this.likes});

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json["name"],
        videoUrl: json["videoUrl"],
        likes: json["likes"],
        views: json["views"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views,
      };

  VideoPost toVideoPostEntity() {
    return VideoPost(
      caption: name,
      videourl: videoUrl,
      likes: likes,
      views: views,
    );
  }
}
