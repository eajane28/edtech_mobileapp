class SettingsData {
  final String iconPath;
  final String title;
  final String? user;
  final DateTime? dateTime;
  void Function()? onPressed;

  SettingsData(
      {required this.iconPath,
      required this.title,
      this.user,
      this.onPressed,
      this.dateTime});
}
