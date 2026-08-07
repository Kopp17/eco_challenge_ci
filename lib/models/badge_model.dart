class BadgeModel {
  final String id;
  final String name;
  final String description;
  final String icon;
  final bool unlocked;

  BadgeModel({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    this.unlocked = false,
  });
}
