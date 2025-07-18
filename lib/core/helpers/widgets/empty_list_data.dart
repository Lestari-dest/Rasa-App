import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rasa_app/core/utils/constant/app_colors.dart';
import 'package:rasa_app/core/utils/extensions/build_context_ext.dart';
import 'package:rasa_app/core/utils/assets.gen.dart';

Widget emptyListData(BuildContext context) {
  return Container(
    width: context.deviceWidth,
    height: context.deviceHeight * 0.2,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          blurRadius: 4,
          color: Colors.black.withOpacity(0.05),
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Kotak hijau di belakang
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                // child: Center(
                //   child: SvgPicture.asset(
                //     Assets.icons.icEmptyData.path,
                //   ),
                // ),
              ),
            ],
          ),
          Text(
            'Belum ada data',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
          ),
        ],
      ),
    ),
  );
}
