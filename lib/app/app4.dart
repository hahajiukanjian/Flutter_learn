import 'package:flutter/material.dart';
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

  // 一组页面主体小部件
  final List<Widget> pageMain = [
    // 发现
    const TabBarView(
      children: [
        Icon(
          Icons.explore_outlined,
          size: 128,
          color: Colors.black12,
        ),
        Icon(
          Icons.local_fire_department_outlined,
          size: 128,
          color: Colors.black12,
        ),
      ],
    ),
    // 添加
    const Center(
      child: Icon(
        Icons.add_a_photo_outlined,
        size: 128,
        color: Colors.black12,
      ),
    ),
    // 用户
    const Center(
      child: Icon(
        Icons.account_circle_outlined,
        size: 128,
        color: Colors.black12,
      ),
    ),
  ];

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
          appBar: showAppBar ? AppBar(
            title: Image.asset(
              'assets/images/logo.png',
              width: 32,
              color: Colors.deepPurpleAccent,
            ),
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
          ) : null,
          body: pageMain.elementAt(currentAppBottomNavigationBarItem),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentAppBottomNavigationBarItem,
            onTap: onTapAppBottomNavigationBarItem,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: '发现',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo_outlined),
                label: '添加',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: '用户',
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.share_outlined),
            onPressed: () {
              print('哈哈哈');
            },
          ),
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
