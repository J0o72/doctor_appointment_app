import 'package:dio/dio.dart';
import 'package:doc_appointment_app/core/networking/api_constants.dart';
import 'package:doc_appointment_app/features/home/data/models/speciality_response_model.dart';
import 'package:doc_appointment_app/features/login/data/models/login_request_body.dart';
import 'package:doc_appointment_app/features/login/data/models/login_response.dart';
import 'package:doc_appointment_app/features/register/data/models/register_request_body.dart';
import 'package:doc_appointment_app/features/register/data/models/register_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  @GET(ApiConstants.specialityEP)
  Future<SpecializationsResponseModel> getSpeciality();
}
