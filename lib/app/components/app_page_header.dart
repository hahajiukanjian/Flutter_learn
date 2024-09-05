import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/components/app_logo.dart';
import 'package:flutter_application_1/app/components/app_page_header_actions_more.dart';

class AppPageHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppLogo(),
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(Icons.menu),
      ),
      actions: [
        AppPageHeaderActionsMore(),
      ],
      bottom: const TabBar(tabs: [
        Tab(text: '最近'),
        Tab(text: '热门'),
      ]),
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(100);
}