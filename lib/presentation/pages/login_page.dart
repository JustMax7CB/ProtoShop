import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protoshop/presentation/components/base_page.dart';
import 'package:protoshop/presentation/components/checkbox_action.dart';
import 'package:protoshop/presentation/components/divider.dart';
import 'package:protoshop/presentation/components/elevated_btn_w_shadow.dart';
import 'package:protoshop/presentation/components/input_field.dart';
import 'package:protoshop/resources/resources.dart';
import 'package:protoshop/resources/strings.dart';
import 'package:protoshop/theme/text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return BasePage(
      title: Image.asset(
        Images.protoShop,
        width: MediaQuery.sizeOf(context).width * 0.7,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(Strings.loginTitle, style: subtitleStyle),
            ),
            SizedBox(
              height: (inputFieldHeight * 2) + 12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InputField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hintText: Strings.emailLoginHint,
                  ),
                  InputField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: Strings.passwordHint,
                    obscure: true,
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        Svgs.passwordVisible,
                        width: 20,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CheckboxAction(
                    label: Strings.rememberMe, onChanged: (value) {}, value: false),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      Strings.forgetPassword,
                      style: textBtnStyle,
                    ))
              ],
            ),
            ElevatedBtnWShadow(
              onPressed: () async {
                await Navigator.popAndPushNamed(context, "/main");
              },
              content: Text(
                Strings.signInBtn,
                style: btnTextStyle,
              ),
              height: 40,
              horizontalMargin: 70,
            ),
            const MyDivider(),
            ElevatedBtnWShadow(
              onPressed: () {},
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(Svgs.googleLogoIcon),
                  Text(
                    Strings.googleSignInBtn,
                    style: btnTextStyle,
                  ),
                ],
              ),
              height: 45,
              horizontalMargin: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  Strings.dontHaveAccount,
                  style: btnTextStyle,
                ),
                TextButton(
                    onPressed: () async {
                      await Navigator.pushNamed(context, "/register");
                    },
                    child: Text(
                      Strings.signUpNow,
                      style: textBtnStyle,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
