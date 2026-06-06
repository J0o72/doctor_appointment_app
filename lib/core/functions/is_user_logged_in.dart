import 'package:doc_appointment_app/core/helpers/constants.dart';
import 'package:doc_appointment_app/core/helpers/shared_pref_helper.dart';
import 'package:doc_appointment_app/core/helpers/shared_pref_keys.dart';
import 'package:doc_appointment_app/core/networking/dio_factory.dart';

Future<void> checkedIFLoggedInUser() async {
  String? token = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );

  if (token != null || token != '') {
    isLoggedInUser = true;
    DioFactory.setTokenIntoHeaderAfterLogin(SharedPrefKeys.userToken);
  } else {
    isLoggedInUser = false;
  }
}
