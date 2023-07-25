class SettingsData {
  final String iconPath;
  final String title;
  final String user;
  void Function()? onPressed;

  SettingsData({required this.iconPath, required this.title, required this.user, this.onPressed});
}
