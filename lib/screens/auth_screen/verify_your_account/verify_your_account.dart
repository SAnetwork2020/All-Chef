import 'package:all_chef/colors.dart';
import 'package:all_chef/extension.dart';
import 'package:all_chef/gen/assets.gen.dart';
import 'package:all_chef/routes/routes.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../onboarding_screen/onboarding_screen.dart';

@RoutePage()
class VerifyAccountScreen extends StatefulWidget {
  // static String routeName = 'verify account';
  const VerifyAccountScreen({Key? key}) : super(key: key);

  @override
  State<VerifyAccountScreen> createState() => _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends State<VerifyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Verify Your Account',
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //         fontFamily: 'Poppins',
      //         fontSize: 20,
      //         fontWeight: FontWeight.w400,
      //         color: Colors.white),
      //   ),
      //   centerTitle: true,
      // ),
      body: Column(
        children: [
          const SizedBox(
            height: 48,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.99.w),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      context.popRoute();
                    },
                    child: Assets.icons.back.svg()),
                57.01.toRowSizedBox(),
                const Text(
                  'Verify Your Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: black_10,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(41.0),
                    child: Assets.images.verify.image(
                      width: 54,
                      height: 46,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'A 6-digit verification code has been sent to '
                  '\n+234678708708xxx and ynwa@hotmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: kBlack,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.0.w),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      6,
                      (index) => Container(
                        height: 54,
                        width: 50,
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        child: TextField(
                          decoration: const InputDecoration(
                            fillColor: Color(0xffF0F0F0),
                            filled: true,
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DefaultButton(
              height: 50.h,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      content: Container(
                        width: 370.w,
                        // height: 291.h,
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            40.08.toColumnSizedBox(),
                            Assets.icons.star.svg(),
                            16.toColumnSizedBox(),
                            const Text(
                              'Phone Number Verified',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: black_10,
                              ),
                            ),
                            16.toColumnSizedBox(),
                            DefaultButton(
                              height: 50,
                              width: 322,
                              text: "Proceed",
                              onTap: () {
                                context.popRoute();
                                context.pushRoute(
                                    const CustomizePreferenceRoute());
                              },
                            ),
                            52.toColumnSizedBox(),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              text: 'Verify',
            ),
          )
        ],
      ),
    ));
  }
}
