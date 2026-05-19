import 'package:doc_appointment_app/features/home/ui/widgets/doctor_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    // return Expanded(
    //   child: ListView.builder(
    //     itemCount: 8,
    //     itemBuilder: (context, index) {
    //       return DoctorListViewItem();
    //     },
    //   ),
    // );

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: DoctorListViewItem(),
        );
      }, childCount: 8),
    );
  }
}
