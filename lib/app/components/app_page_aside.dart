import 'package:flutter/material.dart';

class AppPageAside extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('丁永涛'),
            accountEmail: Text('hahajiukanjian@outlook.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i1.hdslb.com/bfs/face/7e36487cae8622bc3446e5135835caa11effef66.jpg@240w_240h_1c_1s_!web-avatar-nav.avif'
              ),
            ),
          ),
          ListTile(
            title: const Text(
              '账户',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.picture_in_picture_alt_outlined,
              color: Colors.black26,
              size: 32,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              '评论',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.comment_outlined,
              color: Colors.black26,
              size: 32,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text(
              '评论',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.comment_outlined,
              color: Colors.black26,
              size: 32,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}