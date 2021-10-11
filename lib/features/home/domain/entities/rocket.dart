// review.dart
// 1. import freezed_annotation
import 'package:freezed_annotation/freezed_annotation.dart';

// 2. add 'part' files
part 'rocket.freezed.dart';
part 'rocket.g.dart';

// 3. add @freezed annotation
@freezed
// 4. define a class with a mixin
class Rocket with _$Rocket {
  // 5. define a factory constructor
  factory Rocket({
    // 6. list all the arguments/properties
    required String rocket_name,
    required String rocket_type,
    // 7. assign it with the `_Review` class constructor
  }) = _Rocket;

  // 8. define another factory constructor to parse from json
  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);
}
