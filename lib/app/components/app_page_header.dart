import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/components/app_logo.dart';

class AppPageHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppLogo(),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
        )
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