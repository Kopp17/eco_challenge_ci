import 'package:flutter_test/flutter_test.dart';

import 'package:eco_challenge_ci/main.dart';


void main() {


  testWidgets('EcoChallenge CI app loads',
      (WidgetTester tester) async {


    await tester.pumpWidget(
      const EcoChallengeApp(),
    );


    expect(
      find.text("EcoChallenge CI"),
      findsWidgets,
    );


  });


}