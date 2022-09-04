import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  final List<String> activityList;

  const RecentActivity({
    super.key,
    required this.activityList,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final activity = activityList[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(20, 14, 40, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Color.fromRGBO(206, 191, 170, 1),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(child: Text(activity)),
              ],
            ),
          );
        },
        childCount: activityList.length,
      ),
    );
  }
}
