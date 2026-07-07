class CompanyInfo {
  final String name;
  final String tagline;
  final String description;
  final String? vision;
  final String? mission;
  final String email;
  final String phone;
  final String? whatsapp;
  final String? address;
  final String? city;
  final String? country;
  final String? website;
  final String? instagram;
  final String? twitter;
  final String? discord;
  final int? foundedYear;
  final int totalCustomers;
  final int totalJockeys;
  final int totalOrdersCompleted;
  final double averageRating;

  CompanyInfo({
    required this.name,
    required this.tagline,
    required this.description,
    this.vision,
    this.mission,
    required this.email,
    required this.phone,
    this.whatsapp,
    this.address,
    this.city,
    this.country,
    this.website,
    this.instagram,
    this.twitter,
    this.discord,
    this.foundedYear,
    this.totalCustomers = 0,
    this.totalJockeys = 0,
    this.totalOrdersCompleted = 0,
    this.averageRating = 0.0,
  });
}
