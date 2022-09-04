class UserModel {
  final String socialMediaName;
  final String realName;
  final String profileImageUrl;
  final String welcomeImageUrl;
  final String profession;
  final int following;
  final int followers;
  final bool onlineStatus;
  final List<String> images;
  final List<String> recentActivity;

  UserModel({
    required this.socialMediaName,
    required this.realName,
    required this.profileImageUrl,
    required this.welcomeImageUrl,
    required this.profession,
    required this.following,
    required this.followers,
    this.onlineStatus = true,
    required this.images,
    required this.recentActivity,
  });
}
