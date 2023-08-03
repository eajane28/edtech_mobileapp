class SettingsData {
  final String iconPath;
  final String title;
  final String? user;
  final DateTime? dateTime;
  final String? provider;
  void Function()? onPressed;

  SettingsData({required this.iconPath, required this.title, this.user, this.provider, this.onPressed, this.dateTime});
}
