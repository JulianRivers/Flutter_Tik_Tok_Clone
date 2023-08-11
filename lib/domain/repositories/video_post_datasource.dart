import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getTredingVideosByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);
}
