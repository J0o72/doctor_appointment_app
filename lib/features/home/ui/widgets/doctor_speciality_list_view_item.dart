import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/colors_manager.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:doc_appointment_app/features/home/data/models/speciality_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem({
    super.key,
    required this.specializationsData,
  });

  final SpecializationsData specializationsData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          SizedBox(
            width: 75.w,
            height: 75.h,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: ColorsManager.lightBlue,
              child: SvgPicture.asset(
                "assets/svgs/general_speciality.svg",
                width: 50.w,
                height: 50.h,
              ),
            ),
          ),
          verticalSpace(10.h),
          Text(
            specializationsData.name ?? 'Specialization',
            style: TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
