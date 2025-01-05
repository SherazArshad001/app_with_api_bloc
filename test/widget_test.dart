import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:senior_housing_central/main.dart';
import 'package:senior_housing_central/core/utils/shared_preference/shared_preference_helper.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/pages/log_in_screen.dart';
import 'package:senior_housing_central/core/common/widgets/bottom_navbar.dart';

class MockSharedPreferencesHelper extends Mock
    implements SharedPreferencesHelper {}

void main() {
  late MockSharedPreferencesHelper mockSharedPreferencesHelper;

  setUp(() {
    mockSharedPreferencesHelper = MockSharedPreferencesHelper();

    when(() => mockSharedPreferencesHelper.isLoggedIn()).thenReturn(true);
  });

  testWidgets('App login state test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyApp(isLoggedIn: mockSharedPreferencesHelper.isLoggedIn()),
    );

    expect(find.byType(CustomBottomNavbar), findsOneWidget);
    expect(find.byType(LogInScreen), findsNothing);
  });
}
