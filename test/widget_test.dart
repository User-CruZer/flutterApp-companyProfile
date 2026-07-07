import 'package:flutter_test/flutter_test.dart';

import 'package:jasajoki_companyprofile/main.dart';

void main() {
  testWidgets('Company profile screen renders', (WidgetTester tester) async {
    await tester.pumpWidget(const JasajokiCompanyProfileApp());

    expect(find.text('JasaJoki'), findsOneWidget);
    expect(find.text('Tentang Kami'), findsWidgets);
  });
}
