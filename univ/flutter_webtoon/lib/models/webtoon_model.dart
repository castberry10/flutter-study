class WebtoonModel {
  final String id, title, thumb;
  // WebtoonModel({
  //   required this.id,
  //   required this.title,
  //   required this.thumb,
  // });
  WebtoonModel.webtoonConstructor(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        thumb = json['thumb'];
}
