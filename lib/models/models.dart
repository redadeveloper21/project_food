// Vitamin

class Vitamin {
  final String food;
  final String vitamin;

  const Vitamin({
    required this.food,
    required this.vitamin,
  });

  factory Vitamin.fromJson(Map<String, dynamic> json) => Vitamin(
        food: json['food'],
        vitamin: json['vitamin'],
      );

  Map<String, dynamic> toJson() => {
        'food': food,
        'vitamin': vitamin,
      };
}
