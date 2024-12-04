import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/heading.dart';
import 'package:authentication/presentation/ui/dashboard/widgets/custom_appbar.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/category_card.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/product_card.dart';
import 'package:authentication/presentation/ui/widgets/add_report_button.dart';
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
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return ProductCard();
                            },
                          ),
                        ),
                        CategoryCard(title: 'Lost'),
                        Heading(title: 'Recent Lost items'),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ProductCard();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AddReportButton(),
          ],
        ),
      ),
    );
  }
}
