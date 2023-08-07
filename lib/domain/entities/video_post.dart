/// El objeto se parece a un dto, es el objeto que entiende nuestra aplicación
class VideoPost{
  final String caption;
  final String videoUrl;
  final int likes;
  final int views;

  VideoPost({
    required this.caption, 
    required this.videoUrl, 
    this.likes = 0, 
    this.views = 0
    });
  
   
}