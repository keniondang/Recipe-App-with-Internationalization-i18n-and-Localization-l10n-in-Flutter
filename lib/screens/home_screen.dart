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

class _HomeScreenState extends State<HomeScreen>
    with TickerProviderStateMixin {
  String _selectedCuisineId = 'all';
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  
  // Animation controllers for header behavior
  late AnimationController _headerAnimationController;
  late Animation<double> _headerAnimation;
  
  // Scroll tracking variables
  double _previousScrollOffset = 0;
  bool _isHeaderVisible = true;
  bool _showCategories = true;
  bool _showFilterButton = false;
  bool _showFilterOverlay = false;

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
  void initState() {
    super.initState();
    
    // Initialize header animation controller
    _headerAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    
    _headerAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _headerAnimationController,
      curve: Curves.easeInOut,
    ));
    
    // Start with header visible
    _headerAnimationController.forward();
    
    // Listen to scroll changes
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    final currentScrollOffset = _scrollController.offset;
    final scrollDelta = currentScrollOffset - _previousScrollOffset;
    
    // Determine if categories should be visible (near top of page)
    final shouldShowCategories = currentScrollOffset < 200;
    
    // Determine scroll direction and header visibility
    bool shouldShowHeader;
    
    if (scrollDelta > 5) {
      // Scrolling down - hide header
      shouldShowHeader = false;
    } else if (scrollDelta < -5) {
      // Scrolling up - show header
      shouldShowHeader = true;
    } else {
      // Small movements - keep current state
      shouldShowHeader = _isHeaderVisible;
    }
    
    // Update states if changed
    if (shouldShowHeader != _isHeaderVisible || 
        shouldShowCategories != _showCategories) {
      setState(() {
        _isHeaderVisible = shouldShowHeader;
        _showCategories = shouldShowCategories;
        _showFilterButton = !_showCategories && _isHeaderVisible;
        
        // Hide filter overlay when scrolling
        if (scrollDelta.abs() > 2) {
          _showFilterOverlay = false;
        }
      });
      
      // Animate header
      if (_isHeaderVisible) {
        _headerAnimationController.forward();
      } else {
        _headerAnimationController.reverse();
      }
    }
    
    _previousScrollOffset = currentScrollOffset;
  }

  void _toggleFilterOverlay() {
    setState(() {
      _showFilterOverlay = !_showFilterOverlay;
    });
  }

  void _selectCuisine(String cuisineId) {
    setState(() {
      _selectedCuisineId = cuisineId;
      _searchQuery = '';
      _searchController.clear();
      _showFilterOverlay = false;
    });
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    _headerAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              // Fixed spacing for header
              SliverToBoxAdapter(
                child: SizedBox(
                  height: _showCategories ? 200 : 120, // Adjust based on categories
                ),
              ),
              
              // Banner
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: FadeInAnimation(
                    delay: Duration(milliseconds: 400),
                    child: PromoBanner(),
                  ),
                ),
              ),
              
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              
              // Categories (only when at top)
              if (_showCategories) ...[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: FadeInAnimation(
                      delay: const Duration(milliseconds: 500),
                      child: Text(
                        'Categories',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                ),
                
                const SliverToBoxAdapter(child: SizedBox(height: 12)),
                
                SliverToBoxAdapter(
                  child: FadeInAnimation(
                    delay: const Duration(milliseconds: 600),
                    child: SizedBox(
                      height: 40,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                                _selectCuisine(category.id);
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
                ),
                
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
              ],
              
              // Recipe Grid
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return FadeInAnimation(
                        delay: Duration(milliseconds: 700 + (index * 100)),
                        child: RecipeCard(recipe: _filteredRecipes[index]),
                      );
                    },
                    childCount: _filteredRecipes.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.5,
                  ),
                ),
              ),
              
              // Bottom padding
              const SliverToBoxAdapter(child: SizedBox(height: 100)),
            ],
          ),
          
          // Animated Header
          AnimatedBuilder(
            animation: _headerAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, -120 * (1 - _headerAnimation.value)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    boxShadow: _headerAnimation.value > 0.5
                        ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Title (only show when categories are visible)
                          if (_showCategories)
                            const FadeInAnimation(
                              delay: Duration(milliseconds: 200),
                              child: Text(
                                'What are you\ncooking today?',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          
                          SizedBox(height: _showCategories ? 20 : 8),
                          
                          // Search bar with optional filter button
                          Row(
                            children: [
                              Expanded(
                                child: FadeInAnimation(
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
                              ),
                              
                              // Filter button (only when categories are hidden)
                              if (_showFilterButton) ...[
                                const SizedBox(width: 12),
                                AnimatedScale(
                                  scale: _showFilterButton ? 1.0 : 0.0,
                                  duration: const Duration(milliseconds: 300),
                                  child: Container(
                                    height: 56,
                                    width: 56,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.teal.withOpacity(0.3),
                                          blurRadius: 8,
                                          offset: const Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: IconButton(
                                      onPressed: _toggleFilterOverlay,
                                      icon: Icon(
                                        _showFilterOverlay 
                                            ? Icons.close 
                                            : Icons.tune,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          
          // Filter Overlay
          if (_showFilterOverlay)
            AnimatedOpacity(
              opacity: _showFilterOverlay ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 120,
                  left: 16,
                  right: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Filter by Cuisine',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ...mockCuisines.map((cuisine) {
                      final isSelected = cuisine.id == _selectedCuisineId;
                      return ListTile(
                        title: Text(cuisine.name),
                        trailing: isSelected
                            ? const Icon(Icons.check, color: Colors.teal)
                            : null,
                        onTap: () => _selectCuisine(cuisine.id),
                        tileColor: isSelected 
                            ? Colors.teal.withOpacity(0.1) 
                            : null,
                      );
                    }).toList(),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}