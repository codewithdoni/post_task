// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'post_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'post_model.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}