import 'package:flutter/material.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/following_list/widgets/following_list_tail_widget.dart';

class FollwingListPage extends StatelessWidget {
  const FollwingListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Followers List'),
        ),
        body: const FollowingListTailWidget() , 
      ),
    );
  }
}
