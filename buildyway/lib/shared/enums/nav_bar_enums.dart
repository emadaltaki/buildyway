enum NavBarEnum {
  dashboard("DASHBOARD", "/"),
  about("ABOUT", "/about"),
  contact("CONTACT", "/contact"),
  profile("PROFILE", "/profile");

  const NavBarEnum(this.name, this.route);
  final String name;
  final String route;
}
