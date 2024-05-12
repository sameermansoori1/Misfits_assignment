

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerController1 extends GetxController {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer(){
    scaffoldKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }
  var tabIndex = 2;

  void changeTabIndex(int index){
    tabIndex=index;
    update();
  }
  void github() {
    _launch('https://github.com/sameermansoori1');
  }
  void sourceCode() {
    _launch('https://github.com/sameermansoori1/Misfits_assignment');
  }
  void email() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'sameernk220@gmail.com',
    );
    _launch(emailLaunchUri.toString());
  }

  void linkedIn() {
    _launch('https://www.linkedin.com/in/sameer-mansoori-b8315a203/');
  }
  Future<void> _launch(String url) async {
    if (!await launch(
      url,
    )) {
      throw 'Could not launch $url';
    }
  }
}