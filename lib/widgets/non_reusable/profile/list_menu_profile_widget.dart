import 'package:flutter/material.dart';
import 'package:news/constants/color/app_color.dart';

class ListMenuProfileWidget extends StatelessWidget {
  const ListMenuProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildProfileOption(
            icon: Icons.person,
            title: 'Edit Profile',
            onTap: () {},
          ),
          _buildProfileOption(
            icon: Icons.settings,
            title: 'Settings',
            onTap: () {},
          ),
          _buildProfileOption(
            icon: Icons.notifications,
            title: 'Notifications',
            onTap: () {},
          ),
          _buildProfileOption(
            icon: Icons.security,
            title: 'Privacy & Security',
            onTap: () {},
          ),
          _buildProfileOption(
            icon: Icons.help,
            title: 'Help & Support',
            onTap: () {},
          ),
          _buildProfileOption(
            icon: Icons.logout,
            title: 'Logout',
            onTap: () {},
            isLast: true,
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isLast = false,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: AppColors.primary),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: onTap,
        ),
        if (!isLast)
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey.shade200,
          ),
      ],
    );
  }
}
