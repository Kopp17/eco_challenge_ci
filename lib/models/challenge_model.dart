class ChallengeModel {
  final String id;
  final String title;
  final String description;
  final String location;
  final int points;
  final String icon;
  final bool completed;

  ChallengeModel({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.points,
    required this.icon,
    this.completed = false,
  });

  ChallengeModel copyWith({bool? completed}) {
    return ChallengeModel(
      id: id,
      title: title,
      description: description,
      location: location,
      points: points,
      icon: icon,
      completed: completed ?? this.completed,
    );
  }
}
