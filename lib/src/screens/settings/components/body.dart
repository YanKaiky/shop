import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop/components/biometric.dart';
import 'package:shop/src/screens/login/login.screen.dart';
import 'package:shop/src/utils/constants.dart';
import 'package:shop/src/utils/user.secure.storage.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, right: 16, left: 16),
      child: ListView(
        children: [
          Text(
            'Settings',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 40.0),
          Row(
            children: const [
              Icon(Icons.person_outline_rounded, color: Colors.green),
              SizedBox(width: 10.0),
              Text(
                'Account',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(height: 15, thickness: 2),
          SizedBox(height: 10.0),
          buildAccountOptionRow(context, 'Change Password', null),
          buildAccountOptionRow(
            context,
            'Profile',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Biometric()),
            ),
          ),
          buildAccountOptionRow(context, 'Content settings', null),
          buildAccountOptionRow(context, 'Social', null),
          buildAccountOptionRow(context, 'Language', null),
          buildAccountOptionRow(context, 'Privacy and Security', null),
          buildAccountOptionRow(
            context,
            'Close App',
            () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Close app?',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    actions: [
                      Center(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(10),
                            side: BorderSide(
                              color: Colors.red,
                              width: 1.0,
                            ),
                          ),
                          onPressed: () {
                            if (Platform.isAndroid) {
                              SystemNavigator.pop();
                            } else if (Platform.isIOS) {
                              exit(0);
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.close_rounded,
                                color: Colors.red,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Close App',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          SizedBox(height: 40.0),
          Row(
            children: const [
              Icon(Icons.volume_up_rounded, color: Colors.green),
              SizedBox(width: 10.0),
              Text(
                'Notifications',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(height: 15, thickness: 2),
          SizedBox(height: 10.0),
          buildNotificationOptionRow('New for you', true),
          buildNotificationOptionRow('Account activity', true),
          buildNotificationOptionRow('Opportunity', false),
          SizedBox(height: 40.0),
          Center(
            child: OutlinedButton(
              onPressed: () async {
                await UserSecureStorage.clearEmail();
                await UserSecureStorage.clearPassword();

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.logout_rounded),
                  SizedBox(width: 10),
                  Text(
                    'Logout',
                    style: TextStyle(
                      color: yPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildAccountOptionRow(
    BuildContext context,
    String title,
    VoidCallback? onTap,
  ) {
    return GestureDetector(
      onTap: onTap ??
          () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(title),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Text 1'),
                      Text('Text 2'),
                      Text('Text 3'),
                      Text('Text 4'),
                      Text('Text 5'),
                      Text('Text 6'),
                      Text('Text 7'),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(
                            'Close',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: yDefaultPadding / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey)
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool transformValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            value: transformValue,
            onChanged: (bool val) {},
          ),
        ),
      ],
    );
  }
}
