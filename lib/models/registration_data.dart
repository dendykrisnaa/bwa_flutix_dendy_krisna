part of 'models.dart';

class RegistrationData {
  String name;
  String email;
  String password;
  List<String> selectedGenres;
  String selectedLang;
  File profileimage;

  RegistrationData(
      {this.name = "",
      this.email = "",
      this.password = "",
      this.selectedGenres = const [],
      this.selectedLang = "",
      this.profileimage});
}
