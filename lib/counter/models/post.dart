import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    required int id,
    required String title,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}


// class Post {
//   Post({this.id, this.title});

//   factory Post.fromJson(Map<String, dynamic> json) => Post(
//         id: json['id'] as int?,
//         title: json['title'] as String?,
//       );

//   int? id;
//   String? title;

//   @override
//   String toString() => 'Post(id: $id, title: $title)';

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'title': title,
//       };
// }
