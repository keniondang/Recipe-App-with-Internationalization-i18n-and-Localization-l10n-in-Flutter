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

// List of all available recipes with localization keys, dates, and prices
final List<Recipe> mockRecipes = [
  // WESTERN CUISINE
  Recipe(
    id: 'beef_steak',
    nameKey: 'beefSteakName',
    image: 'assets/images/recipes/beef_steak.jpg',
    calories: 450,
    time: 25,
    rating: 4.6,
    descriptionKey: 'beefSteakDescription',
    servings: 2,
    cuisine: 'western',
    createdAt: DateTime.now().subtract(const Duration(days: 15)),
    updatedAt: DateTime.now().subtract(const Duration(hours: 2)),
    basePrice: 18.50, // Premium price for quality beef
    originalCurrency: 'USD',
    ingredients: const [
      RecipeIngredient(
        quantityKey: 'beefSteakIngredient1Quantity',
        nameKey: 'beefSteakIngredient1Name',
      ),
      RecipeIngredient(
        quantityKey: 'beefSteakIngredient2Quantity',
        nameKey: 'beefSteakIngredient2Name',
      ),
      RecipeIngredient(
        quantityKey: 'beefSteakIngredient3Quantity',
        nameKey: 'beefSteakIngredient3Name',
      ),
      RecipeIngredient(
        quantityKey: 'beefSteakIngredient4Quantity',
        nameKey: 'beefSteakIngredient4Name',
      ),
    ],
    stepKeys: const [
      'beefSteakStep1',
      'beefSteakStep2',
      'beefSteakStep3',
      'beefSteakStep4',
      'beefSteakStep5',
      'beefSteakStep6',
    ],
  ),
  
  // VIETNAMESE CUISINE
  Recipe(
    id: 'pho_bo',
    nameKey: 'phoBoName',
    image: 'assets/images/recipes/pho_bo.jpg',
    calories: 280,
    time: 45,
    rating: 4.8,
    descriptionKey: 'phoBoDescription',
    servings: 4,
    cuisine: 'vietnamese',
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(minutes: 30)),
    basePrice: 12.75, // Moderate price
    originalCurrency: 'USD',
    ingredients: const [
      RecipeIngredient(
        quantityKey: 'phoBoIngredient1Quantity',
        nameKey: 'phoBoIngredient1Name',
      ),
      RecipeIngredient(
        quantityKey: 'phoBoIngredient2Quantity',
        nameKey: 'phoBoIngredient2Name',
      ),
      RecipeIngredient(
        quantityKey: 'phoBoIngredient3Quantity',
        nameKey: 'phoBoIngredient3Name',
      ),
      RecipeIngredient(
        quantityKey: 'phoBoIngredient4Quantity',
        nameKey: 'phoBoIngredient4Name',
      ),
    ],
    stepKeys: const [
      'phoBoStep1',
      'phoBoStep2',
      'phoBoStep3',
      'phoBoStep4',
      'phoBoStep5',
      'phoBoStep6',
    ],
  ),
  
  Recipe(
    id: 'banh_mi',
    nameKey: 'banhMiName',
    image: 'assets/images/recipes/banh_mi.jpg',
    calories: 380,
    time: 25,
    rating: 4.6,
    descriptionKey: 'banhMiDescription',
    servings: 2,
    cuisine: 'vietnamese',
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(hours: 12)),
    basePrice: 4.25, // Budget friendly
    originalCurrency: 'USD',
    ingredients: const [
      RecipeIngredient(
        quantityKey: 'banhMiIngredient1Quantity',
        nameKey: 'banhMiIngredient1Name',
      ),
      RecipeIngredient(
        quantityKey: 'banhMiIngredient2Quantity',
        nameKey: 'banhMiIngredient2Name',
      ),
      RecipeIngredient(
        quantityKey: 'banhMiIngredient3Quantity',
        nameKey: 'banhMiIngredient3Name',
      ),
      RecipeIngredient(
        quantityKey: 'banhMiIngredient4Quantity',
        nameKey: 'banhMiIngredient4Name',
      ),
    ],
    stepKeys: const [
      'banhMiStep1',
      'banhMiStep2',
      'banhMiStep3',
      'banhMiStep4',
      'banhMiStep5',
      'banhMiStep6',
    ],
  ),
  
  Recipe(
    id: 'bun_bo_hue',
    nameKey: 'bunBoHueName',
    image: 'assets/images/recipes/bun_bo_hue.jpg',
    calories: 420,
    time: 60,
    rating: 4.8,
    descriptionKey: 'bunBoHueDescription',
    servings: 4,
    cuisine: 'vietnamese',
    createdAt: DateTime.now().subtract(const Duration(days: 22)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    basePrice: 14.90, // Moderate price
    originalCurrency: 'USD',
    ingredients: const [
      RecipeIngredient(
        quantityKey: 'bunBoHueIngredient1Quantity',
        nameKey: 'bunBoHueIngredient1Name',
      ),
      RecipeIngredient(
        quantityKey: 'bunBoHueIngredient2Quantity',
        nameKey: 'bunBoHueIngredient2Name',
      ),
      RecipeIngredient(
        quantityKey: 'bunBoHueIngredient3Quantity',
        nameKey: 'bunBoHueIngredient3Name',
      ),
      RecipeIngredient(
        quantityKey: 'bunBoHueIngredient4Quantity',
        nameKey: 'bunBoHueIngredient4Name',
      ),
      RecipeIngredient(
        quantityKey: 'bunBoHueIngredient5Quantity',
        nameKey: 'bunBoHueIngredient5Name',
      ),
    ],
    stepKeys: const [
      'bunBoHueStep1',
      'bunBoHueStep2',
      'bunBoHueStep3',
      'bunBoHueStep4',
      'bunBoHueStep5',
      'bunBoHueStep6',
    ],
  ),
  
  // INDONESIAN CUISINE
  Recipe(
    id: 'rendang',
    nameKey: 'rendangName',
    image: 'assets/images/recipes/rendang.jpg',
    calories: 450,
    time: 90,
    rating: 4.9,
    descriptionKey: 'rendangDescription',
    servings: 4,
    cuisine: 'indonesian',
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(hours: 6)),
    basePrice: 16.30, // Premium due to long cooking time and spices
    originalCurrency: 'USD',
    ingredients: const [
      RecipeIngredient(
        quantityKey: 'rendangIngredient1Quantity',
        nameKey: 'rendangIngredient1Name',
      ),
      RecipeIngredient(
        quantityKey: 'rendangIngredient2Quantity',
        nameKey: 'rendangIngredient2Name',
      ),
      RecipeIngredient(
        quantityKey: 'rendangIngredient3Quantity',
        nameKey: 'rendangIngredient3Name',
      ),
      RecipeIngredient(
        quantityKey: 'rendangIngredient4Quantity',
        nameKey: 'rendangIngredient4Name',
      ),
    ],
    stepKeys: const [
      'rendangStep1',
      'rendangStep2',
      'rendangStep3',
      'rendangStep4',
      'rendangStep5',
      'rendangStep6',
    ],
  ),
  
  Recipe(
    id: 'satay',
    nameKey: 'satayName',
    image: 'assets/images/recipes/satay.jpg',
    calories: 320,
    time: 40,
    rating: 4.7,
    descriptionKey: 'satayDescription',
    servings: 4,
    cuisine: 'indonesian',
    createdAt: DateTime.now().subtract(const Duration(days: 12)),
    updatedAt: DateTime.now().subtract(const Duration(hours: 18)),
    basePrice: 8.75, // Moderate price
    originalCurrency: 'USD',
    ingredients: const [
      RecipeIngredient(
        quantityKey: 'satayIngredient1Quantity',
        nameKey: 'satayIngredient1Name',
      ),
      RecipeIngredient(
        quantityKey: 'satayIngredient2Quantity',
        nameKey: 'satayIngredient2Name',
      ),
      RecipeIngredient(
        quantityKey: 'satayIngredient3Quantity',
        nameKey: 'satayIngredient3Name',
      ),
      RecipeIngredient(
        quantityKey: 'satayIngredient4Quantity',
        nameKey: 'satayIngredient4Name',
      ),
      RecipeIngredient(
        quantityKey: 'satayIngredient5Quantity',
        nameKey: 'satayIngredient5Name',
      ),
    ],
    stepKeys: const [
      'satayStep1',
      'satayStep2',
      'satayStep3',
      'satayStep4',
      'satayStep5',
      'satayStep6',
    ],
  ),

  // CHINESE CUISINE
  Recipe(
    id: 'kung_pao_chicken',
    nameKey: 'kungPaoChickenName',
    image: 'assets/images/recipes/kung_pao_chicken.jpg',
    calories: 320,
    time: 25,
    rating: 4.6,
    descriptionKey: 'kungPaoChickenDescription',
    servings: 3,
    cuisine: 'chinese',
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(minutes: 45)),
    basePrice: 7.40, // Moderate price
    originalCurrency: 'USD',
    ingredients: const [
      RecipeIngredient(
        quantityKey: 'kungPaoChickenIngredient1Quantity',
        nameKey: 'kungPaoChickenIngredient1Name',
      ),
      RecipeIngredient(
        quantityKey: 'kungPaoChickenIngredient2Quantity',
        nameKey: 'kungPaoChickenIngredient2Name',
      ),
      RecipeIngredient(
        quantityKey: 'kungPaoChickenIngredient3Quantity',
        nameKey: 'kungPaoChickenIngredient3Name',
      ),
      RecipeIngredient(
        quantityKey: 'kungPaoChickenIngredient4Quantity',
        nameKey: 'kungPaoChickenIngredient4Name',
      ),
    ],
    stepKeys: const [
      'kungPaoChickenStep1',
      'kungPaoChickenStep2',
      'kungPaoChickenStep3',
      'kungPaoChickenStep4',
      'kungPaoChickenStep5',
      'kungPaoChickenStep6',
    ],
  ),
];