import 'package:doc_appointment_app/features/home/data/models/speciality_response_model.dart';
import 'package:doc_appointment_app/features/home/ui/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({
    super.key,
    required this.specializationsDataList,
  });

  final List<SpecializationsData> specializationsDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsDataList.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityListViewItem(
            specializationsData: specializationsDataList[index],
          );
        },
      ),
    );
  }
}
