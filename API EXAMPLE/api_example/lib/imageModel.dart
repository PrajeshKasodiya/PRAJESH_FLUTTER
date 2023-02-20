class ComentModel {
  final int? albumId;
  final int id;
  final String? title;
  final String url;
  final String? thumbnailUrl;

  const ComentModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory ComentModel.fromJson(Map<String, dynamic> myjsonResponce) {
    return ComentModel(
        albumId: myjsonResponce['albumId'],
        id: myjsonResponce['id'],
        title: myjsonResponce['title'],
        url: myjsonResponce['url'],
        thumbnailUrl: myjsonResponce['thumbnailUrl']);
  }
}
