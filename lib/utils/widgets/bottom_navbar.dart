import 'package:figma_ui/utils/theme/theme.dart';
import 'package:figma_ui/view/account/account.dart';
import 'package:figma_ui/view/freelisting/freelist.dart';
import 'package:figma_ui/view/invite/invite.dart';
import 'package:flutter/material.dart';

import '../../view/home/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;
  final List pages = [
    HomePage(),
    const InvitePage(),
    const FreeListPage(),
    const AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            pages[_currentIndex],
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.9),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  child: ColoredBox(
                    color: Colors.white,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        selectedItemColor: lightPrimary,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        selectedFontSize: 11.0,
                        unselectedItemColor: Colors.grey,
                        unselectedFontSize: 11.0,
                        currentIndex: _currentIndex,
                        onTap: (newIndex) {
                          setState(() {
                            _currentIndex = newIndex;
                          });
                        },
                        items: const [
                          BottomNavigationBarItem(
                              icon: Icon(Icons.home), label: "Home"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.supervisor_account),
                              label: "invite & earn"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.list_alt),
                              label: "Free listing"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.account_circle_rounded),
                              label: "Account")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
