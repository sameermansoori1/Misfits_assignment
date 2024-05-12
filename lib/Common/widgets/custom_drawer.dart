import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:misfits_assignment/Common/common_assets.dart';
import 'package:svg_flutter/svg.dart';

import '../../Controller/drawerController.dart';
import '../app_themes.dart';

class CustomDrawer extends GetView<DrawerController1> {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppThemes.primarySubtle4,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 300,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: AppThemes.textColor2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.transparent),
                      gradient: const LinearGradient(
                        colors: [AppThemes.primary, AppThemes.borderColor],
                        begin: Alignment.centerRight,
                        end: Alignment.topLeft,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 42,
                      backgroundColor: AppThemes.textColor2,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 39,
                            backgroundImage: AssetImage(CommonAssets.sameerdp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "🚀 Hey! I'm Sameer Mansoori, a skilled Flutter developer with more than one year of experience and a passion for open source. I'm eager to bring my Flutter expertise to your team at Misfits.",
                    style: TextStyle(
                        color: AppThemes.white,
                        fontSize: 14,
                        fontFamily: AppThemes.font1),
                  ),
                ],
              ),
            ),
          ),
          _DrawerButton(
              onPressed: () => controller.github(), icon: CommonAssets.github, label: 'My GitHub'),
          _DrawerButton(
    onPressed:  () => controller.email(), icon: CommonAssets.email, label: 'My email'),
          _DrawerButton(
              onPressed:() => controller.linkedIn(),icon: CommonAssets.contact, label: 'My linkedIn'),

          // Add more list items as needed
        ],
      ),
    );
  }
}

class _DrawerButton extends StatelessWidget {
  const _DrawerButton({
    required this.icon,
    required this.label,
    this.onPressed,
  });

  final String icon;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          icon,
          height: 22,
          fit: BoxFit.contain,
        ),
        label: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              label,
              style: TextStyle(
                  fontFamily: AppThemes.font1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppThemes.black),
            )));
  }
}
