import 'package:flutter/material.dart';

import '../app_themes.dart';

class CustomLocationContainer extends StatelessWidget {
  final String imagePath;
  final String locationName;
  final String schedule;
  final String timings;

  const CustomLocationContainer({super.key,
    required this.imagePath,
    required this.locationName,
    required this.schedule,
    required this.timings,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 380,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          alignment: Alignment.bottomRight,
        ),
        border: Border.all(color: AppThemes.borderColor1),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: AppThemes.iconColor,
            size: 40,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                locationName,
                style: TextStyle(
                  fontFamily: AppThemes.font1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppThemes.iconColor,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    schedule,
                    style: TextStyle(
                      fontFamily: AppThemes.font1,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: AppThemes.textColor2,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    timings,
                    style: TextStyle(
                      fontFamily: AppThemes.font1,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: AppThemes.textColor2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
