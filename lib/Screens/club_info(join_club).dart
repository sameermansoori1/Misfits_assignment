import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misfits_assignment/Common/widgets/custom_expansionlist.dart';
import 'package:misfits_assignment/Common/widgets/custom_location.dart';
import 'package:misfits_assignment/Common/widgets/profile_section.dart';
import 'package:misfits_assignment/Screens/club_info(joined).dart';

import '../Common/app_themes.dart';
import '../Common/common_app_button.dart';
import '../Common/common_assets.dart';

class ClubInfoJoin extends StatelessWidget {
  const ClubInfoJoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.background,
      appBar: AppBar(
        backgroundColor: AppThemes.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,
              size: 16, color: AppThemes.white),
          onPressed: () {
            // Get.back();
          },
        ),
        title: Center(
          child: Text(
            "Hiking and Outdoors Club",
            style: TextStyle(
                fontFamily: AppThemes.font1,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppThemes.white),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.feedback_outlined,
                color:
                    AppThemes.white), // Change the icon as per your requirement
            onPressed: () {
              // Add your onPressed functionality here
            },
          ),
        ],
        surfaceTintColor: AppThemes.background,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileSection(),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Container(
                  height: 24,
                  width: 68,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppThemes.borderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.hiking_outlined,
                        color: AppThemes.iconColor,
                        size: 18,
                      ),
                      Text(
                        "Hiking",
                        style: TextStyle(
                            fontFamily: AppThemes.font1,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppThemes.iconColor),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Text(
                  "Hiking And Outdoor Clubs",
                  style: TextStyle(
                      fontFamily: AppThemes.font1,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppThemes.textColor1),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 10, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "We usually meet at",
                          style: TextStyle(
                              fontFamily: AppThemes.font1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppThemes.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomLocationContainer(
                          imagePath: CommonAssets.location1,
                          locationName: "Manager village",
                          schedule: "M T W T F S S",
                          timings: "7:00 PM - 9:30 PM",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomLocationContainer(
                          imagePath: CommonAssets.location2,
                          locationName: "Sanjay van",
                          schedule: "M T W T F S S",
                          timings: "7:00 PM - 9:30 PM",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: AppThemes.borderColor1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "FAQs",
                          style: TextStyle(
                              fontFamily: AppThemes.font1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppThemes.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomExpansionTile(title: "Can I Bring a friend along?", children: [Text(
                          textAlign: TextAlign.start,
                          "Yes u can ",
                          style: TextStyle(
                              fontFamily: AppThemes.font1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppThemes.white),
                        )]),
                        const SizedBox(height: 10,),
                        CustomExpansionTile(title: "Can I Bring a friend along?", children: [Text(
                          textAlign: TextAlign.start,
                          "Yes u can ",
                          style: TextStyle(
                              fontFamily: AppThemes.font1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppThemes.white),
                        )]),
                        const SizedBox(height: 10,),
                        CustomExpansionTile(title: "Can I Bring a friend along?", children: [Text(
                          textAlign: TextAlign.start,
                          "Yes u can ",
                          style: TextStyle(
                              fontFamily: AppThemes.font1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppThemes.white),
                        )])
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: AppThemes.container,
                child: CommonAppButton(
                  onPressed: () {
                    Get.to(() => const ClubInfoJoined());
                  },
                  title: "Join Club",
                  showPadding: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
