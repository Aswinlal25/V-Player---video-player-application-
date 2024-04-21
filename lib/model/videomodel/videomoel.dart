class Videos {
  String? videos;
  String? title;
  String? description;

  Videos({this.videos, this.title, this.description});

  Videos.fromJson(Map<String, dynamic> json) {
    videos = json['videos'];
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['videos'] = videos;
    data['title'] = title;
    data['description'] = description;
    return data;
  }
}
