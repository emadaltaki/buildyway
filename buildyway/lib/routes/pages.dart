enum Pages {
  dashboard("dashboard", "/dashboard"),
  ;

  const Pages(this.name, this.route);
  final String name;
  final String route;
}
