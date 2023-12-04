import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:snapshare/utils/colors.dart';
import 'package:snapshare/utils/constant.dart';
import 'package:snapshare/view/screen/auth/login_screen.dart';
import 'package:snapshare/view/screen/auth/signup_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context).brightness;
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(
                Theme.of(context).brightness == Brightness.dark ?
                Constant.sociaLiveTextLogoWhitePNG:
                Constant.sociaLiveTextLogoBlackPNG
            ),),
            const SizedBox(height: 50,),
            SizedBox(
              child: ElevatedButton(
                  onPressed: (){
                    Get.to(()=> const SignupScreen());
                  },
                  child: const Text("Create Account")),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                    Get.to(()=> const LoginScreen());
                  },
                  child: Text("Log In",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color(0xFF4478FF)
                  )),
                ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Iconsax.arrow_down_1,
                  color: AppColors.iconColor,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
