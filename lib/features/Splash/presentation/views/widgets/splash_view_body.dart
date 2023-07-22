import 'package:bookly/core/ulits/assets.dart';
import 'package:flutter/cupertino.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetData.logo),
        SizedBox(
          height: 4,
        ),
        Text(
          'Read Free Books',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
