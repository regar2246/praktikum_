import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_oop/main.dart'; // Pastikan path sesuai dengan lokasi main.dart Anda

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Membangun aplikasi dan memicu frame
    await tester.pumpWidget(const MyApp()); // Gunakan const di sini

    // Tambahkan pengujian widget Anda di sini
    expect(find.byType(MyApp), findsOneWidget);
  });
}
