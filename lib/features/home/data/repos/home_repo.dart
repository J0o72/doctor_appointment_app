import 'package:doc_appointment_app/core/networking/api_error_handler.dart';
import 'package:doc_appointment_app/core/networking/api_result.dart';
import 'package:doc_appointment_app/core/networking/api_service.dart';
import 'package:doc_appointment_app/features/home/data/models/speciality_response_model.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecializations() async {
    try {
      final response = await _apiService.getSpeciality();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
