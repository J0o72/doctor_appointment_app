import 'package:doc_appointment_app/core/networking/api_result.dart';
import 'package:doc_appointment_app/features/home/data/models/speciality_response_model.dart';
import 'package:doc_appointment_app/features/home/data/repos/home_repo.dart';
import 'package:doc_appointment_app/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  final HomeRepo _homeRepo;

  List<SpecializationsData> specializationsList = [];

  void emitSpecializationsStates() async {
    emit(const HomeState.specializationsLoading());

    final response = await _homeRepo.getSpecializations();

    response.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];
        emit(HomeState.specializationsSuccess(specializationsList));
      },

      failure: (failure) {
        emit(
          HomeState.specializationsFailure(
            error: failure.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
