import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/videos_post.dart';
import 'package:toktik/infrastrucure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';



class LocalVideoDataSource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
