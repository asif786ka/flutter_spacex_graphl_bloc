// review.dart
// 1. import freezed_annotation
import 'package:freezed_annotation/freezed_annotation.dart';

// 2. add 'part' files
part 'links.freezed.dart';
part 'links.g.dart';

// 3. add @freezed annotation
@freezed
// 4. define a class with a mixin
class Links with _$Links {
  // 5. define a factory constructor
  factory Links({
    // 6. list all the arguments/properties
    required List<dynamic>? flickr_images,
    // 7. assign it with the `_Review` class constructor
  }) = _Links;

  // 8. define another factory constructor to parse from json
  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
