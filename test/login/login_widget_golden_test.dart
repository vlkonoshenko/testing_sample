import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:provider_shopper/common/theme.dart';
import 'package:provider_shopper/screens/login.dart';

void main() {
  testGoldens('golden test', (tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidgetBuilder(MyLogin(),
          wrapper: materialAppWrapper(theme: appTheme));
    });

    await multiScreenGolden(tester, 'login_screen');
  });
}
