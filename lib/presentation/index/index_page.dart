
import 'package:flutter/material.dart';
import 'package:todo_coder/presentation/index/widgets/button_filter_complete_task.dart';
import 'package:todo_coder/presentation/index/widgets/button_filter_daily_task.dart';
import 'package:todo_coder/presentation/index/widgets/list_view_of_complete_task.dart';
import 'package:todo_coder/presentation/index/widgets/list_view_of_task_daily.dart';
import 'package:todo_coder/presentation/index/widgets/search_of_index_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 24, left: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///search
            SearchOfIndexPage(),
            const SizedBox(height: 20,),
            ///filter days
           const ButtonFilterDailyTask(),
            const SizedBox(
              height: 16,
            ),

            ///list view of task daily
           const ListViewOfTaskDaily() ,

            const SizedBox(height: 20,),

            ///filter complete
            const ButtonFilterCompleteTask(),

            const SizedBox(height: 20,),

            ///list view of complete task
            const ListViewOfCompleteTask(),

          ],
        ),
      ),
    );
  }
}

