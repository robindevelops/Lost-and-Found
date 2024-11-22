import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/alert_dialog.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/heading.dart';
import 'package:authentication/presentation/ui/dashboard/widgets/custom_appbar.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/category_card.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: CustomAppbar(),
      ),
      body: RefreshIndicator(
        backgroundColor: Colors.white,
        color: AppThemes.Mediumblue,
        onRefresh: () async {
          await Future.delayed(
            const Duration(seconds: 2),
          );
        },
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        CategoryCard(title: 'Found'),
                        Heading(title: 'Recent Found items'),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ProductCard(),
                              ProductCard(),
                              ProductCard(),
                              ProductCard(),
                              ProductCard(),
                            ],
                          ),
                        ),
                        CategoryCard(title: 'Lost'),
                        Heading(
                          title: 'Recent Lost items',
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ProductCard(),
                              ProductCard(),
                              ProductCard(),
                              ProductCard(),
                              ProductCard(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.blue[800],
                  ),
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomAlertDialog();
                      },
                    );
                  },
                  label: Text(
                    "Add Report",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
