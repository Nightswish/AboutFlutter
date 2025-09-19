class Project {
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id']?.toString() ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}
