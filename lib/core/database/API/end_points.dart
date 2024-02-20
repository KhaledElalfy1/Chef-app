class EndPoints {
  static const String baseUrl = 'https://food-api-omega.vercel.app/api/v1/';
  static const String chefSignIn = 'chef/signin';
  static const String chefChangePassword = 'chef/change-password';
  static const String chefDelete = 'chef/delete';
  static const String chefGet = 'chef/get-chef';
  static const String changeForgottenPassword = 'chef/change-forgotten-password';
  static const String updateChef = 'chef/update';
  static const String logOut = 'chef/logout';
  static const String addMeal = 'meal/add-to-menu';
  static const String updateMeal = 'chef/update-meal/64a6e3ea0f8c2b74e0eb2d77';
  static const String getAllMeals = 'meal/get-meals';
  static const String deleteMeal = 'meal/delete-meal/';

  static String getChefDataEndPoint(id) {
    return '$chefGet$id';
  }
  static String getUpdateMealEndPoint(id) {
    return '$updateMeal$id';
  }
  static String deleteMealEndPoint(id) {
    return '$deleteMeal$id';
  }
}
