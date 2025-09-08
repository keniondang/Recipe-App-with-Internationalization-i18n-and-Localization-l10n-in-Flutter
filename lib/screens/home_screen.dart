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
          .where((recipe) =>
              recipe.name.toLowerCase().contains(_searchQuery.toLowerCase()))
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
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(milliseconds: 500));
          },
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              const FadeInAnimation(
                delay: Duration(milliseconds: 200),
                child: Text(
                  'What are you\ncooking today?',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
              const SizedBox(height: 28),
              
              FadeInAnimation(
                delay: const Duration(milliseconds: 300),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) => setState(() => _searchQuery = value),
                    decoration: InputDecoration(
                      hintText: 'Search for recipes...',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.grey.shade600,
                        size: 22,
                      ),
                      suffixIcon: _searchQuery.isNotEmpty
                          ? IconButton(
                              icon: Icon(
                                Icons.clear_rounded,
                                color: Colors.grey.shade600,
                                size: 20,
                              ),
                              onPressed: () {
                                _searchController.clear();
                                setState(() => _searchQuery = '');
                                FocusScope.of(context).unfocus();
                              },
                            )
                          : null,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28),

              // Banner
              const FadeInAnimation(
                delay: Duration(milliseconds: 400),
                child: PromoBanner(),
              ),
              const SizedBox(height: 32),
              
              // Categories
              FadeInAnimation(
                delay: const Duration(milliseconds: 500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (_selectedCuisineId != 'all')
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedCuisineId = 'all';
                            _searchQuery = '';
                            _searchController.clear();
                            FocusScope.of(context).unfocus();
                          });
                        },
                        child: const Text(
                          'View All',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              FadeInAnimation(
                delay: const Duration(milliseconds: 600),
                child: SizedBox(
                  height: 42,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: mockCuisines.length,
                    separatorBuilder: (context, index) => const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      final category = mockCuisines[index];
                      final isSelected = category.id == _selectedCuisineId;
                      return FilterChip(
                        label: Text(
                          category.name,
                          style: TextStyle(
                            color: isSelected ? Colors.white : const Color(0xFF374151),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
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
                        backgroundColor: Colors.grey.shade100,
                        selectedColor: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                        side: BorderSide.none,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 28),
              
              // Recipes Grid
              if (_filteredRecipes.isEmpty)
                FadeInAnimation(
                  delay: const Duration(milliseconds: 700),
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off_rounded,
                          size: 64,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No recipes found',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Try searching with different keywords',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                )
              else
                LayoutBuilder(
                  builder: (context, constraints) {
                    final crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;
                    final aspectRatio = constraints.maxWidth > 600 ? 0.75 : 0.75;
                    
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 20,
                        childAspectRatio: aspectRatio,
                      ),
                      itemCount: _filteredRecipes.length,
                      itemBuilder: (context, index) {
                        return FadeInAnimation(
                          delay: Duration(milliseconds: 700 + (index * 50)),
                          child: RecipeCard(recipe: _filteredRecipes[index]),
                        );
                      },
                    );
                  },
                ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}