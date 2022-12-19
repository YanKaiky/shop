import 'package:flutter/material.dart';
import 'package:shop/components/app.menu.drawer.dart';
import 'package:shop/src/screens/dashboard/components/body.dart';
import 'package:shop/src/utils/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yChartBgColor,
      drawer: AppMenuDrawer(),
      appBar: AppBar(
        elevation: 0,
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
      body: Body(),
    );
  }
}
