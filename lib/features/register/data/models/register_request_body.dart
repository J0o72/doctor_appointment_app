import 'package:json_annotation/json_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final String phoneNumber;
  final int gender;

  RegisterRequestBody({
    required this.name,
    required this.email,
    required this.password,
    @JsonKey(name: 'password_confirmation') required this.confirmPassword,
    required this.phoneNumber,
    required this.gender,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
