import 'package:demo_projects/social_media_1/models/user_model.dart';
import 'package:demo_projects/social_media_1/profile_detail_screen/components/profile_image.dart';
import 'package:flutter/material.dart';

import 'components/recent_activity.dart';
import 'components/user_info.dart';
import 'components/user_media_posts.dart';

class ProfileDetailScreen extends StatelessWidget {
  final UserModel user;

  const ProfileDetailScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              expandedHeight: 270,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ),
              ],
              flexibleSpace: ProfileImage(imageUrl: user.profileImageUrl),
            ),
            UserInfo(
              userName: user.realName,
              socialMediaName: user.socialMediaName,
              profession: user.profession,
            ),
            UserMediaPosts(
              imagesUrl: user.images,
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  'RECENT ACTIVITY',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            RecentActivity(
              activityList: user.recentActivity,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 50),
            ),
          ],
        ),
      ),
    );
  }
}
