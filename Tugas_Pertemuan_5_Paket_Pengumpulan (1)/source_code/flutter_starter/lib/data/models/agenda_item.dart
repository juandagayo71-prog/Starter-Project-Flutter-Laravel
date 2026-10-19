class AgendaItem {
  const AgendaItem({
    required this.id,
    required this.title,
    required this.description,
    required this.dateLabel,
  });

  final int id;
  final String title;
  final String description;
  final String dateLabel;

  factory AgendaItem.fromJson(Map<String, dynamic> json) => AgendaItem(
        id: json['id'] as int,
        title: json['title'] as String,
        description: json['description'] as String,
        dateLabel: json['date_label'] as String,
      );
}
