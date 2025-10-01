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

  // REST API JSON → Dart 객체
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

  // Dart 객체 → JSON (Firestore, REST POST용)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
    };
  }

  // Firestore DocumentSnapshot → Dart 객체
  factory Project.fromFirestore(Map<String, dynamic> doc, String id) {
    return Project(
      id: id,
      title: doc['title'] as String,
      description: doc['description'] as String,
      imageUrl: doc['imageUrl'] as String? ?? '',
    );
  }
}
