import 'package:flutter/material.dart';
import 'package:flutter_application_1/post/index/components/post_index_popular.dart';

import 'components/post_index_latest.dart';

class PostIndex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        PostIndexLatest(),
        PostIndexPopular(),
      ],
    );
  }
}