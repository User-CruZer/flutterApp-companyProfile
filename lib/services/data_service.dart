import '../models/company_info.dart';

class DataService {
  static CompanyInfo getCompanyInfo() {
    return CompanyInfo(
      name: 'JasaJoki',
      tagline: 'Partner Gaming Terpercaya Anda',
      description:
          'Joki Jaki adalah platform marketplace yang menghubungkan client dengan penjoki. Kami menyediakan berbagai layanan joki game mulai dari perawatan akun, joki gendong, joki endgame, hingga berbagai joki event lainnya untuk game seperti, Genshin Impact, NTE, Wuthering waves, Arknights, arknights: endfield, Punishing Gray Raven, Honkai: Star Rail, Guardian Tales, dan Reverse: 1999',
      vision:
          'Menjadi platform jasa joki game terbesar dan terpercaya di Indonesia.',
      mission:
          'Menyediakan Layanan joki game berkualitas dengan harga terjangkau.\nMenghubungkan pemain dengan penjoki profesional dan terpercaya.\nMemberikan pengalaman yang aman dan nyaman bagi semua orang.',
      email: 'akangjoki@gmail.com',
      phone: '021-12345678',
      whatsapp: '6281234567890',
      address: 'Jl. Gaming No. 123',
      city: 'Jakarta',
      country: 'Indonesia',
      website: 'https://jasajoki.com',
      instagram: 'nasipadang',
      discord: 'discord.gg/NasiPadang',
      foundedYear: 2023,
      totalCustomers: 1500,
      totalJockeys: 50,
      totalOrdersCompleted: 5000,
      averageRating: 4.8,
    );
  }
}
