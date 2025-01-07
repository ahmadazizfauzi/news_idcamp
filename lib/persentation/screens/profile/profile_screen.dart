import 'package:flutter/material.dart';
import 'package:news/widgets/non_reusable/profile/banner_profile_widget.dart';
import 'package:news/widgets/non_reusable/profile/list_menu_profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            BannerProfileWidget(),
            ListMenuProfileWidget(),
          ],
        ),
      ),
    );
  }
}
