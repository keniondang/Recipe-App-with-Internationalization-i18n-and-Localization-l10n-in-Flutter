import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../models/recipe.dart';
import '../widgets/fade_in_animation.dart';
import '../widgets/promo_banner.dart';
import '../widgets/recipe_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedCuisineId = 'all';
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  List<Recipe> get _filteredRecipes {
    List<Recipe> recipes = mockRecipes;

    if (_searchQuery.isNotEmpty) {
      return recipes
          .where(
            (recipe) =>
                recipe.name.toLowerCase().contains(_searchQuery.toLowerCase()),
          )
          .toList();
    }

    if (_selectedCuisineId != 'all') {
      return recipes
          .where((recipe) => recipe.cuisine == _selectedCuisineId)
          .toList();
    }

    return recipes;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const FadeInAnimation(
              delay: Duration(milliseconds: 200),
              child: Text(
                'What are you\ncooking today?',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            FadeInAnimation(
              delay: const Duration(milliseconds: 300),
              child: TextField(
                controller: _searchController,
                onChanged: (value) => setState(() => _searchQuery = value),
                decoration: InputDecoration(
                  hintText: 'Search any recipes',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Banner
            const FadeInAnimation(
              delay: Duration(milliseconds: 400),
              child: PromoBanner(),
            ),
            const SizedBox(height: 24),

            // Categories
            FadeInAnimation(
              delay: const Duration(milliseconds: 500),
              child: Text(
                'Categories',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 12),

            FadeInAnimation(
              delay: const Duration(milliseconds: 600),
              child: SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: mockCuisines.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    final category = mockCuisines[index];
                    final isSelected = category.id == _selectedCuisineId;
                    return ChoiceChip(
                      label: Text(category.name),
                      selected: isSelected,
                      onSelected: (selected) {
                        if (selected) {
                          setState(() {
                            _selectedCuisineId = category.id;
                            _searchQuery = '';
                            _searchController.clear();
                            FocusScope.of(context).unfocus();
                          });
                        }
                      },
                      backgroundColor: Colors.grey.shade200,
                      selectedColor: Colors.teal,
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.white : Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      side: BorderSide.none,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.5,
              ),
              itemCount: _filteredRecipes.length,
              itemBuilder: (context, index) {
                return FadeInAnimation(
                  delay: Duration(milliseconds: 700 + (index * 100)),
                  child: RecipeCard(recipe: _filteredRecipes[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
