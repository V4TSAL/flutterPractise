class Album {
  final int userId;
  final int id;
  final String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
// Album.fromJson(Map<String, dynamic> json) {
//   userId = json['userId'];
//   id = json['id'];
//   title = json['title'];
// }

// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = <String, dynamic>{};
//   data['userId'] = userId;
//   data['id'] = id;
//   data['title'] = title;
//   return data;
// }
  static List<Album> fromJsonList(dynamic jsonList) {
    final transactionDetailsList = <Album>[];
    if (jsonList == null) return transactionDetailsList;

    if (jsonList is List<dynamic>) {
      for (final json in jsonList) {
        transactionDetailsList.add(
          Album.fromJson(json),
        );
      }
    }

    return transactionDetailsList;
  }
}