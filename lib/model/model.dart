class Model {
  int id;
  String displayPicture;
  String name;
  String location;
  String picture;
  int like;
  int comment;
  String description;
  bool isSave;
  bool isLiked;

  Model(
      {required this.id,
      required this.displayPicture,
      required this.name,
      required this.location,
      required this.picture,
      required this.like,
      required this.comment,
      required this.description,
      required this.isLiked,
      required this.isSave});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
        id: json['id'],
        displayPicture: json['displayPicture'],
        name: json['name'],
        location: json['location'],
        picture: json['picture'],
        like: json['like'],
        comment: json['comment'],
        description: json['description'],
        isLiked: json['isLiked'],
        isSave: json['isSave']);
  }
}
