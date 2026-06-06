import 'package:doc_appointment_app/core/theming/colors_manager.dart';
import 'package:doc_appointment_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_appointment_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_appointment_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetUpSpecializationsBlocBuilder extends StatelessWidget {
  const SetUpSpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsFailure,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return Center(
              child: CircularProgressIndicator(color: ColorsManager.mainBlue),
            );
          },

          specializationsSuccess: (specializationDataList) {
            return DoctorSpecialityListView(
              specializationsDataList: specializationDataList,
            );
          },

          specializationsFailure: (error) {
            return const SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
