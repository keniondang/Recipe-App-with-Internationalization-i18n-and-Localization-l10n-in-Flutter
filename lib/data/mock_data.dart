import '../models/cuisine.dart';
import '../models/recipe.dart';

// List of available cuisines
final List<Cuisine> mockCuisines = [
  const Cuisine(id: 'all', name: 'All'),
  const Cuisine(id: 'vietnamese', name: 'Vietnamese'),
  const Cuisine(id: 'western', name: 'Western'),
  const Cuisine(id: 'indonesian', name: 'Indonesian'),
  const Cuisine(id: 'chinese', name: 'Chinese'),
];

// List of all available recipes
final List<Recipe> mockRecipes = [
  const Recipe(
    id: 'butter_paneer',
    name: 'Butter Paneer',
    image:
        'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?w=400&h=300&fit=crop',
    calories: 300,
    time: 25,
    rating: 4.8,
    description: 'Creamy and rich Indian cottage cheese curry.',
    servings: 4,
    cuisine: 'indian',
    ingredients: [
      {'quantity': '250g', 'name': 'paneer, cubed'},
      {'quantity': '2 tbsp', 'name': 'butter'},
      {'quantity': '1 cup', 'name': 'tomato puree'},
      {'quantity': '1/2 cup', 'name': 'heavy cream'},
      {'quantity': '1 tsp', 'name': 'garam masala'},
    ],
    steps: [
      'Heat butter in a pan and sauté onions until golden brown.',
      'Add ginger-garlic paste and cook for 2 minutes until fragrant.',
      'Add tomato puree and cook until thick and oil separates.',
      'Add spices and paneer cubes, mix gently.',
      'Pour cream and simmer for 5 minutes.',
      'Garnish with coriander and serve hot with rice or naan.',
    ],
  ),
  const Recipe(
    id: 'beef_steak',
    name: 'Beef Steak',
    image:
        'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=400&h=300&fit=crop',
    calories: 450,
    time: 25,
    rating: 4.6,
    description: 'Perfectly grilled beef steak with herbs.',
    servings: 2,
    cuisine: 'western',
    ingredients: [
      {'quantity': '2 pieces', 'name': 'beef steaks (8oz each)'},
      {'quantity': '2 tbsp', 'name': 'olive oil'},
      {'quantity': '1 tsp', 'name': 'salt'},
      {'quantity': '1/2 tsp', 'name': 'black pepper'},
    ],
    steps: [
      'Season steaks with salt and pepper on both sides.',
      'Heat olive oil in a cast iron pan over high heat.',
      'Sear steaks for 3-4 minutes each side for medium-rare.',
      'Add butter, garlic, and rosemary to the pan.',
      'Baste steaks with herb butter for extra flavor.',
      'Rest for 5 minutes before serving.',
    ],
  ),
  const Recipe(
    id: 'pho_bo',
    name: 'Pho Bo',
    image:
        'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=400&h=300&fit=crop',
    calories: 280,
    time: 45,
    rating: 4.8,
    description: 'Traditional Vietnamese beef noodle soup.',
    servings: 4,
    cuisine: 'vietnamese',
    ingredients: [
      {'quantity': '1 kg', 'name': 'beef bones'},
      {'quantity': '400g', 'name': 'rice noodles (bánh phở)'},
      {'quantity': '3 pieces', 'name': 'star anise'},
      {'quantity': '1 stick', 'name': 'cinnamon'},
    ],
    steps: [
      'Char onion and ginger over open flame until fragrant.',
      'Boil beef bones with spices for 3 hours to make broth.',
      'Cook rice noodles according to package instructions.',
      'Slice beef thinly for quick cooking.',
      'Assemble bowls with noodles and raw beef.',
      'Pour hot broth over to cook beef and garnish with herbs.',
    ],
  ),
  const Recipe(
    id: 'nasi_goreng',
    name: 'Nasi Goreng',
    image:
        'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=400&h=300&fit=crop',
    calories: 350,
    time: 30,
    rating: 4.7,
    description: 'Indonesian fried rice with aromatic spices.',
    servings: 4,
    cuisine: 'indonesian',
    ingredients: [
      {'quantity': '4 cups', 'name': 'cooked rice, day-old'},
      {'quantity': '2 tbsp', 'name': 'shrimp paste (terasi)'},
      {'quantity': '3 tbsp', 'name': 'sweet soy sauce (kecap manis)'},
      {'quantity': '2', 'name': 'eggs'},
    ],
    steps: [
      'Prepare spice paste by grinding chilies, garlic, shallots.',
      'Scramble eggs and set aside.',
      'Stir-fry spice paste until fragrant.',
      'Add rice and seasonings, mix well.',
      'Add vegetables and scrambled eggs.',
      'Garnish with fried shallots and serve.',
    ],
  ),
  const Recipe(
    id: 'kung_pao_chicken',
    name: 'Kung Pao Chicken',
    image:
        'https://images.unsplash.com/photo-1596797038530-2c107229654b?w=400&h=300&fit=crop',
    calories: 320,
    time: 25,
    rating: 4.6,
    description: 'Spicy Sichuan chicken with peanuts.',
    servings: 3,
    cuisine: 'chinese',
    ingredients: [
      {'quantity': '500g', 'name': 'chicken breast, diced'},
      {'quantity': '1/2 cup', 'name': 'roasted peanuts'},
      {'quantity': '8-10', 'name': 'dried chilies'},
      {'quantity': '1 tsp', 'name': 'Sichuan peppercorns'},
    ],
    steps: [
      'Marinate chicken pieces in soy sauce and rice wine.',
      'Toast peanuts and dried chilies until fragrant.',
      'Stir-fry chicken until golden brown.',
      'Add aromatics and sauce, toss well.',
      'Add peanuts and mix everything together.',
      'Serve hot with steamed rice.',
    ],
  ),
];
