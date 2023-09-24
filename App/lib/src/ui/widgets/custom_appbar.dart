import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jokes_app/src/resources/theme/application_style.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final String title;
  final Color backgroundColor;
  final Color foregroundColor;
  final bool showBackButton;

  const CustomAppbar({
    super.key,
    required this.scaffoldKey,
    required this.title,
    this.backgroundColor = ApplicationStyle.primaryColor,
    this.foregroundColor = ApplicationStyle.black,
    this.showBackButton = false,
  });

  Widget? buildLeading(BuildContext context) {
    showBackButton
        ? InkWell(
            onTap: () {
              AutoRouter.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Center(
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: foregroundColor,
                  size: 28,
                ),
              ),
            ),
          )
        : null;
    return null;
  }

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      toolbarHeight: 60,
      leading: buildLeading(context),
      title: Text(
        title.toUpperCase(),
        style: TextStyle(color: foregroundColor, fontFamily: "Irish Grover"),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
