import '../models/company_info.dart';

class DataService {
  static CompanyInfo getCompanyInfo() {
    return CompanyInfo(
      name: 'JasaJoki',
      tagline: 'Partner Gaming Terpercaya Anda',
      description:
          'JasaJoki adalah platform marketplace yang menghubungkan pemain game dengan joki profesional. Kami menyediakan berbagai layanan joki game mulai dari battle pass, rank push, top up, hingga daily commissions untuk game-game populer seperti Genshin Impact, Mobile Legends, Honor of Kings, dan Fortnite.',
      vision:
          'Menjadi platform jasa joki game terbesar dan terpercaya di Indonesia.',
      mission:
          'Menyediakan layanan joki game berkualitas tinggi dengan harga terjangkau.\nMenghubungkan pemain game dengan joki profesional dan terpercaya.\nMemberikan pengalaman gaming yang lebih menyenangkan bagi semua orang.',
      email: 'hello@jasajoki.com',
      phone: '021-12345678',
      whatsapp: '6281234567890',
      address: 'Jl. Gaming No. 123',
      city: 'Jakarta',
      country: 'Indonesia',
      website: 'https://jasajoki.com',
      instagram: 'jasajoki_id',
      twitter: 'jasajoki_id',
      discord: 'discord.gg/jasajoki',
      foundedYear: 2023,
      totalCustomers: 1500,
      totalJockeys: 50,
      totalOrdersCompleted: 5000,
      averageRating: 4.8,
    );
  }
}
