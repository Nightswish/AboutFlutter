class Project {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String? githubUrl;
  final String? demoUrl;
  final List<String> tags;

  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.githubUrl,
    this.demoUrl,
    this.tags = const [],
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      githubUrl: json['githubUrl'],
      demoUrl: json['demoUrl'],
      tags: List<String>.from(json['tags'] ?? []),
    );
  }
}
