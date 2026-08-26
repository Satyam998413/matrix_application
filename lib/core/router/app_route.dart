abstract class AppRoute {
  static const splash = 'splash';
  static const login = 'login';
  static const alreadySubmitted = 'alreadySubmitted';
  static const history = 'history';
  static const matrixDetail = 'matrixDetail';
  static const home = 'home';

  static const splashPath = '/splash';
  static const loginPath = '/login';
  static const alreadySubmittedPath = '/already-submitted';
  static const historyPath = '/history';
  static const matrixDetailPath = '/history/detail/:phone';
  static const homePath = '/home/:phone';

  static String matrixDetailPathFor(String phone) => '/history/detail/$phone';
  static String homePathFor(String phone) => '/home/$phone';
}
