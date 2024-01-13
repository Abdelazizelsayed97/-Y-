import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yadlo/cache/colors/colors.dart';
import 'package:yadlo/cache/text_styles/text_styles.dart';
import 'package:yadlo/cache/themData/them_data.dart';
import 'package:yadlo/core/buttons/general_button.dart';
import 'package:yadlo/core/textForm/custom_textform.dart';
import 'package:yadlo/features/posts/presentation/pages/place_review.dart';
import 'package:yadlo/features/posts/presentation/widgets/custom_title.dart';

import '../../../../core/textForm/dropdown_textform.dart';

List category = ['Tech', 'Electronics'];

class AddReview2 extends StatefulWidget {
  AddReview2({super.key});

  @override
  State<AddReview2> createState() => _AddReview2State();
}

class _AddReview2State extends State<AddReview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Opacity(
          opacity: .050,
          child: ThemeDataApp(),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w).copyWith(top: 25.h),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTitleProduct(),
                  SizedBox(
                    height: 50.h,
                  ),
                  const Row(
                    children: [
                      CustomStyle12(text: 'Category'),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DropDownTextForm(
                    text: 'Tech',
                    hint: const Text("Tech"),
                    text2: 'Electronics',
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const Row(
                    children: [
                      CustomStyle12(text: 'SubCategory'),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DropDownTextForm(
                    text: 'Mobile',
                    hint: const Text("Router"),
                    text2: 'PS',
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextForm2(text: 'Name', hintText: 'Product Name'),
                  SizedBox(
                    height: 40.h,
                  ),
                  GeneralButton1(
                    colors: ig3,
                    text: "Next",
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlaceReviewBody()));
                    },
                  ),
                  DropDownTextForm2(text: 'fbuybw', text2: 'jnsjkd', hint: Text('fhabj'))
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
