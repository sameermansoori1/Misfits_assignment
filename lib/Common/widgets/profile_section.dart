
import 'package:flutter/material.dart';

import '../app_themes.dart';
import '../common_assets.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.transparent),
              gradient: const LinearGradient(
                colors: [AppThemes.primary, AppThemes.profileBorder2],
                begin: Alignment.centerRight,
                end: Alignment.topLeft,
              ),
            ),
            child: const CircleAvatar(
              radius: 50,
              backgroundColor: AppThemes.background,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage(CommonAssets.profile),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "98",
                style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.white),

              ),
              const SizedBox(height: 5,),
              Text(
                "Total members",
                style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.white),)
            ],
          ),
          Column(
            children: [
              SizedBox(
                child: Row(

                  children: [
                    Text(
                      "32",
                      style: TextStyle(
                          fontFamily: AppThemes.font1,
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                          color: AppThemes.white),

                    ),
                    IconButton(
                      icon: const Icon(Icons.info_outline,
                        color:
                        AppThemes.white,size: 20,), // Change the icon as per your requirement
                      onPressed: () {
                        // Add your onPressed functionality here
                      },
                    ),
                  ],
                ),
              ),
              Text(
                "Active members",
                style: TextStyle(
                    fontFamily: AppThemes.font1,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppThemes.white),)
            ],
          ),
        ],
      ),
    );
  }
}
