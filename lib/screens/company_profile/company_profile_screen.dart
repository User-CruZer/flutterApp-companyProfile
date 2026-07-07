import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../core/theme/app_theme.dart';
import '../../services/data_service.dart';

class CompanyProfileScreen extends StatelessWidget {
  const CompanyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final company = DataService.getCompanyInfo();

    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Kami')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppTheme.primaryColor.withAlpha(60),
                    AppTheme.surfaceColor,
                  ],
                ),
              ),
              child: Image.asset(
                'assets/logo.png',
                height: 120,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tentang Kami',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    company.description,
                    style: const TextStyle(
                      color: AppTheme.textSecondary,
                      height: 1.6,
                      fontSize: 14,
                    ),
                  ),
                  if (company.vision != null) ...[
                    const SizedBox(height: 24),
                    const Text(
                      'Visi',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            const Icon(Icons.visibility,
                                color: AppTheme.primaryColor),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(company.vision!),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  if (company.mission != null) ...[
                    const SizedBox(height: 16),
                    const Text(
                      'Misi',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ...company.mission!
                        .split('\n')
                        .map((m) => Card(
                              margin: const EdgeInsets.only(bottom: 8),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    const Icon(Icons.check_circle,
                                        color: AppTheme.successColor,
                                        size: 20),
                                    const SizedBox(width: 12),
                                    Expanded(child: Text(m)),
                                  ],
                                ),
                              ),
                            )),
                  ],
                  const SizedBox(height: 24),
                  const Text(
                    'Kontak',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Card(
                    child: Column(
                      children: [
                        _contactItem(Icons.email, 'Email', company.email),

                        if (company.whatsapp != null)
                          _contactItem(FontAwesomeIcons.whatsapp,
                              'WhatsApp', company.whatsapp!),

                      ],
                    ),
                  ),
                  if (company.instagram != null ||
                      company.discord != null) ...[
                    const SizedBox(height: 24),
                    const Text(
                      'Media Sosial',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Card(
                      child: Column(
                        children: [
                          if (company.instagram != null)
                            _contactItem(FontAwesomeIcons.instagram,
                                'Instagram', '@${company.instagram}'),
                          if (company.discord != null)
                            _contactItem(FontAwesomeIcons.discord,
                                'Discord', company.discord!),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _contactItem(IconData icon, String label, String value) {
    return ListTile(
      leading: Icon(icon, color: AppTheme.primaryColor),
      title: Text(label, style: const TextStyle(fontSize: 12)),
      subtitle: Text(value),
    );
  }
}
