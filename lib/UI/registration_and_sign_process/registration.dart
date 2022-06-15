import 'package:flutter/material.dart';
import 'package:fresh_fruits/constants/app_colors.dart';
import 'package:fresh_fruits/constants/reusable_card.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/istockphoto-853982916-1024x1024.jpg'),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                  padding:
                      const EdgeInsets.only(right: 330, top: 20, bottom: 230),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 40,
                  )),
              Container(
                height: 352,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(28),
                      child: Row(
                        children: [
                          const Text(
                            'Create your account',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          const SizedBox(
                            width: 130,
                          ),
                          Expanded(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.cancel,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 28, right: 28),
                        child: Row(
                          children: const [
                            SmallReusableCard(hintText: 'Your surname'),
                            SizedBox(
                              width: 19,
                            ),
                            SmallReusableCard(hintText: 'Your name'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const ReusableCard(hintText: 'Your email'),
                    const SizedBox(
                      height: 5,
                    ),
                    const ReusableCard(hintText: 'Your password'),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 50, right: 49),
                      child: RichText(
                        text: TextSpan(
                            text: 'By tapping Sign up you accept all ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' terms',
                                style: TextStyle(color: AppColors.wordColor),
                              ),
                              TextSpan(
                                text: ' and',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              TextSpan(
                                text: ' conditions',
                                style: TextStyle(
                                    color: AppColors.wordColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(100, 18, 100, 18),
                        decoration: const BoxDecoration(
                            color: Color(0xFFFEC54B),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Text(
                          'CREATE AN ACCOUNT',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class SmallReusableCard extends StatelessWidget {
  final String hintText;

  const SmallReusableCard({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          hintText: hintText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFE67F1E),
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
      ),
    );
  }
}
