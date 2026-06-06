import 'package:doc_appointment_app/core/networking/api_error_model.dart';
import 'package:doc_appointment_app/features/home/data/models/speciality_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(
    List<SpecializationsData> specializationDataList,
  ) = SpecializationsSuccess;
  const factory HomeState.specializationsFailure(ApiErrorModel apiErrorModel) =
      SpecializationsFailure;

  const factory HomeState.doctorsSuccess(List<Doctors> doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsFailure() = DoctorsFailure;
}
