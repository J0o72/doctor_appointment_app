import 'package:doc_appointment_app/features/home/data/models/speciality_response_model.dart';
import 'package:doc_appointment_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_appointment_app/features/home/ui/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatefulWidget {
  const DoctorSpecialityListView({
    super.key,
    required this.specializationsDataList,
  });

  final List<SpecializationsData> specializationsDataList;

  @override
  State<DoctorSpecialityListView> createState() =>
      _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<DoctorSpecialityListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationsDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedSpecializationIndex = index;
              });

              context.read<HomeCubit>().emitDoctorsStates(
                specializationId: widget.specializationsDataList[index].id!,
              );
            },
            child: DoctorSpecialityListViewItem(
              specializationsData: widget.specializationsDataList[index],
              itemIndex: index,
              selectedIndex: selectedSpecializationIndex,
            ),
          );
        },
      ),
    );
  }
}
