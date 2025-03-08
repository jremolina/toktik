import 'package:toktik/domain/entities/videos_post.dart';

abstract class VideoPostDatasource {

  Future<List<VideoPost>> getTrendingVideosByUser(String userId);

  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
