// This file is "user.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:vus_lms/models/base_model.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User extends BaseModel with _$User {
  const factory User({
    required String firstName,
    required String lastName,
    required String email,
  }) = _User; 

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

}