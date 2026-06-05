import 'package:json_annotation/json_annotation.dart';
part 'speciality_response_model.g.dart';

@JsonSerializable()
class SpecializationsResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationsData>? specializationDataList;

  SpecializationsResponseModel({this.specializationDataList});

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors>? doctorsList;

  SpecializationsData({this.id, this.name, this.doctorsList});

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? phone;
  String? photo;
  String? gender;
  String? email;
  @JsonKey(name: 'appoint_price')
  num? price;
  String? degree;

  Doctors({
    this.id,
    this.name,
    this.phone,
    this.photo,
    this.gender,
    this.price,
    this.degree,
    this.email,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
