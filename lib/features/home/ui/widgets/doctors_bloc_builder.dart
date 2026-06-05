import 'package:doc_appointment_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_appointment_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_appointment_app/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsFailure,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) {
            return DoctorsListView(doctorsList: doctorsList);
          },
          doctorsFailure: (error) {
            return SliverToBoxAdapter(child: const SizedBox.shrink());
          },
          orElse: () => SliverToBoxAdapter(child: const SizedBox.shrink()),
        );
      },
    );
  }
}
