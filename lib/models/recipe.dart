class Recipe {
  final String id;
  final String name;
  final String image;
  final int calories;
  final int time;
  final double rating;
  final String description;
  final int servings;
  final String cuisine; // Link the recipe to a Cuisine id
  final List<Map<String, String>> ingredients;
  final List<String> steps;

  const Recipe({
    required this.id,
    required this.name,
    required this.image,
    required this.calories,
    required this.time,
    required this.rating,
    required this.description,
    required this.servings,
    required this.cuisine,
    required this.ingredients,
    required this.steps,
  });
}
