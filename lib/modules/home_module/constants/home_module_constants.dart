/// EXAMPLE
sealed class HomeModuleConstants {
  static const moduleName = '/home';

  static const homePage = '/';

  static String getPageName({
    required String page,
  }) =>
      '$moduleName$page';
}
