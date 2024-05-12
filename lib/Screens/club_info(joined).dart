import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misfits_assignment/Common/widgets/custom_drawer.dart';
import 'package:misfits_assignment/Common/widgets/custom_expansionlist.dart';
import 'package:misfits_assignment/Common/widgets/custom_location.dart';
import 'package:misfits_assignment/Common/widgets/profile_section.dart';

import '../Common/app_themes.dart';
import '../Common/common_assets.dart';
import '../Common/widgets/custom_navbar.dart';
import '../Controller/drawerController.dart';

class ClubInfoJoined extends StatelessWidget {
  const ClubInfoJoined({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrawerController1>(builder: (controller) {
      return Scaffold(
        key: controller.scaffoldKey,
        extendBody: true,
        backgroundColor: AppThemes.background,
        appBar: AppBar(
          backgroundColor: AppThemes.background,
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
          leading: IconButton(
            icon: const Icon(
              Icons.menu, // Change the icon as per your requirement
              color: AppThemes.white,
            ),
            onPressed: () {
              controller.openDrawer();
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.feedback_outlined,
                  color: AppThemes
                      .white), // Change the icon as per your requirement
              onPressed: () {
                // Add your onPressed functionality here
              },
            ),
          ],
          surfaceTintColor: AppThemes.background,
        ),
        drawer: const CustomDrawer(),
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
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
                          CustomExpansionTile(
                              title: "Can I Bring a friend along?",
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "Yes u can ",
                                  style: TextStyle(
                                      fontFamily: AppThemes.font1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppThemes.white),
                                )
                              ]),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomExpansionTile(
                              title: "Can I Bring a friend along?",
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "Yes u can ",
                                  style: TextStyle(
                                      fontFamily: AppThemes.font1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppThemes.white),
                                )
                              ]),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomExpansionTile(
                              title: "Can I Bring a friend along?",
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "Yes u can ",
                                  style: TextStyle(
                                      fontFamily: AppThemes.font1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppThemes.white),
                                )
                              ]),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomExpansionTile(
                              title: "Can I Bring a friend along?",
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "Yes u can ",
                                  style: TextStyle(
                                      fontFamily: AppThemes.font1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppThemes.white),
                                )
                              ]),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomExpansionTile(
                              title: "Can I Bring a friend along?",
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "Yes u can ",
                                  style: TextStyle(
                                      fontFamily: AppThemes.font1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppThemes.white),
                                )
                              ]),

                        ],
                      ),
                    ),
                  ),
                ),

                //
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: CustomAnimatedBottomBar(
            containerHeight: 80,
            backgroundColor: AppThemes.background,
            selectedIndex: controller.tabIndex,
            showElevation: true,
            itemCornerRadius: 10,
            curve: Curves.easeIn,
            onItemSelected: controller.changeTabIndex,
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                  title: const Text('Meetups'),
                  activeColor: AppThemes.primary.withOpacity(0.2),
                  inactiveColor: AppThemes.borderColor,
                  textAlign: TextAlign.center,
                  Icon1: Icons.groups),
              BottomNavyBarItem(
                title: const Text('Groups'),
                activeColor: AppThemes.primary.withOpacity(0.2),
                inactiveColor: AppThemes.borderColor,
                textAlign: TextAlign.center,
                Icon1: Icons.mark_unread_chat_alt,
              ),
              BottomNavyBarItem(
                title: const Text('ClubInfo'),
                activeColor: AppThemes.primary.withOpacity(0.2),
                inactiveColor: AppThemes.borderColor,
                textAlign: TextAlign.center,
                Icon1: Icons.info_outline,
              ),
            ],
          ),
        ),
      );
    });
  }
}
