class Videos {
  String id;
  String? videos;
  String? title;
  String? description;

  Videos({
    this.videos,
    this.title,
    this.description,
    required this.id,
  });

  factory Videos.fromJson(String id, Map<String, dynamic> json) {
    return Videos(
        id: id,
        videos: json['videos'],
        title: json['title'],
        description: json['description ']);
  }
}
