import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ClassFlyScreen extends StatefulWidget {
  const ClassFlyScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ClassFlyScreen> createState() => _ClassFlyScreenState();
}

class _ClassFlyScreenState extends State<ClassFlyScreen> {
  String? languages = 'Indonesia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                    height: 39,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'title'.tr(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.centerStart,
                    children: [
                      Image.asset(
                        'assets/images/background_text.png',
                        width: 280,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'first_title'.tr(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'second_title'.tr(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'content'.tr(),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 60),
                child: Image.asset(
                  'assets/images/background.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return StatefulBuilder(builder: (context, setState) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 36,
                          ),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'select'.tr(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Radio<String>(
                                    value: 'Indonesia',
                                    groupValue: languages,
                                    onChanged: (val) => setLocale(context, val),
                                  ),
                                  Text(
                                    'id'.tr(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Radio<String>(
                                    value: 'Inggris',
                                    groupValue: languages,
                                    onChanged: (val) => setLocale(context, val),
                                  ),
                                  Text(
                                    'en'.tr(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Radio<String>(
                                    value: 'Spanyol',
                                    groupValue: languages,
                                    onChanged: (val) => setLocale(context, val),
                                  ),
                                  Text(
                                    'es'.tr(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      });
                    },
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  height: 54,
                  width: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xFF202737),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Center(
                    child: Text(
                      'select'.tr(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void setLocale(BuildContext context, String? language) {
    setState(() {
      languages = language;
    });

    if (languages == 'Indonesia') {
      context.setLocale(
        const Locale('id', 'ID'),
      );
    } else if (languages == 'Inggris') {
      context.setLocale(
        const Locale('en', 'US'),
      );
    } else {
      context.setLocale(
        const Locale('es', 'ES'),
      );
    }

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pop(context);
    });
  }
}
