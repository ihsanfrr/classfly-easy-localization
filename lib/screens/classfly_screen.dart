import 'package:flutter/material.dart';

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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Find the perfect',
                      style: TextStyle(
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
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Music',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: ' Teacher',
                                style: TextStyle(
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Learn easily different type of music instruments',
                      style: TextStyle(
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
                              const Text(
                                'Select a Language',
                                style: TextStyle(
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
                                  const Text(
                                    'Indonesian',
                                    style: TextStyle(
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
                                  const Text(
                                    'English',
                                    style: TextStyle(
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
                                  const Text(
                                    'Espanol',
                                    style: TextStyle(
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
                  child: const Center(
                    child: Text(
                      'Select a Language',
                      style: TextStyle(
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

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pop(context);
    });
  }
}
