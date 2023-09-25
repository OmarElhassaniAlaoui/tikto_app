import 'package:flutter/material.dart';
import 'package:flutter_mini_projet_omar/src/presentation/pages/folloers_list/widgets/follers_list_tail_widget.dart';

class FollwersListPage extends StatelessWidget {
  const FollwersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Followers List'),
        ),
        body: const FollersListTailWidget(),
      ),
    );
  }
}
