import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Widget leadingIcon;
  final Function onPressedLeading;
  final List<Widget> actions;
  final Widget profilePicture;

  CustomAppBar({this.title, this.leadingIcon, this.onPressedLeading, this.actions, this.profilePicture});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      centerTitle: true,
      title: title,
      leading: IconButton(
        icon: leadingIcon,
        onPressed: onPressedLeading,
      ),
      actions: (profilePicture != null) ? [_buildProfilePicture(profilePicture)] : actions,
    );
  }

  _buildProfilePicture(Widget profilePicture) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(60),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: profilePicture,
        ),
      ),
    );
  }
}
