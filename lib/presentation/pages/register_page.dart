import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protoshop/presentation/components/base_page.dart';
import 'package:protoshop/presentation/components/elevated_btn_w_shadow.dart';
import 'package:protoshop/presentation/components/input_field.dart';
import 'package:protoshop/resources/resources.dart';
import 'package:protoshop/resources/strings.dart';
import 'package:protoshop/theme/text_styles.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final nameController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return BasePage(
      title: Image.asset(
        Images.protoShop,
        width: MediaQuery.sizeOf(context).width * 0.7,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(Strings.registerTitle, style: subtitleStyle),
            ),
            SizedBox(
              height: (inputFieldHeight * 4) + 24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InputField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hintText: Strings.emailRegisterHint,
                  ),
                  InputField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    hintText: Strings.fullNameHint,
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
                  InputField(
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: Strings.passwordConfirm,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: ElevatedBtnWShadow(
                onPressed: () async {
                  await Navigator.popAndPushNamed(context, "/");
                },
                content: Text(
                  Strings.signUpBtn,
                  style: btnTextStyle,
                ),
                height: 40,
                horizontalMargin: 70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0,left: 20,right: 20),
              child: Text(
                Strings.agreeToTerms,
                textAlign: TextAlign.center,
                style: termsTextStyle,
              ),
            ),
            ElevatedBtnWShadow(
              onPressed: () async {
                Navigator.pop(context);
              },
              content: Text(
                Strings.back,
                style: btnTextStyle,
              ),
              height: 40,
              horizontalMargin: 100,
            )
          ],
        ),
      ),
    );
  }
}
