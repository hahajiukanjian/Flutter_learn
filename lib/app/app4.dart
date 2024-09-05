import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/components/app_floating_action_button.dart';
import 'package:flutter_application_1/app/components/app_page_aside.dart';
import 'package:flutter_application_1/app/components/app_page_bottom.dart';
import 'package:flutter_application_1/app/components/app_page_header.dart';
import 'package:flutter_application_1/app/components/app_page_main.dart';
import 'package:flutter_application_1/app/themes/app_theme.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  // 底部状态栏的索引
  int currentAppBottomNavigationBarItem = 0;

  // 控制该页面是否显示顶部栏
  bool showAppBar = false;

  // 底部导航栏点击时间处理函数
  void onTapAppBottomNavigationBarItem(int index) {
    setState(() {
      currentAppBottomNavigationBarItem = index;
      showAppBar = index == 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: showAppBar ? AppPageHeader() : null,
          body: AppPageMain(currentIndex: currentAppBottomNavigationBarItem,),
          bottomNavigationBar: AppPageBottom(
              currentIndex: currentAppBottomNavigationBarItem,
              onTap: onTapAppBottomNavigationBarItem,
          ),
          floatingActionButton: AppFloatingActionButton(),
          drawer: AppPageAside(),
        ),
      ),
      // home: Center(
      //   /// 图标
      //   // child: Icon(
      //   //   Icons.landscape_rounded,
      //   //   color: Colors.blue,
      //   //   size: 128,
      //   // ),
      //
      //   /// 按钮
      //   child: ElevatedButton(
      //     child: const Text('哈哈就看见'),
      //     onPressed: () {
      //       print('哈哈');
      //     },
      //   ),
      // ),
    );
  }
}
