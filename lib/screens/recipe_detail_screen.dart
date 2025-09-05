import 'package:flutter/material.dart';
import '../models/recipe.dart';
import '../widgets/info_chip.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            stretch: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                recipe.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 15.0,
                      color: Colors.black.withOpacity(0.7),
                      offset: const Offset(1.0, 1.0),
                    ),
                  ],
                ),
              ),
              background: Hero(
                tag: 'recipe-${recipe.id}',
                child: Image.network(
                  recipe.image,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Center(
                    child: Icon(
                      Icons.broken_image,
                      color: Colors.grey,
                      size: 50,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.description,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InfoChip(
                        icon: Icons.timer_outlined,
                        label: '${recipe.time} min',
                      ),
                      InfoChip(
                        icon: Icons.people_outline,
                        label: '${recipe.servings} servings',
                      ),
                      InfoChip(
                        icon: Icons.star_border,
                        label: '${recipe.rating}',
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Ingredients',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                  ...recipe.ingredients.map(
                    (ing) => ListTile(
                      leading: Icon(
                        Icons.check_box_outline_blank,
                        color: Colors.teal.shade300,
                      ),
                      title: Text(
                        "${ing['quantity']} ${ing['name']}",
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Instructions',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                  ...List.generate(recipe.steps.length, (index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text('${index + 1}'),
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                      ),
                      title: Text(
                        recipe.steps[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
