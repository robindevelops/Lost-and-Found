import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/presentation/notifiers/tab_notifier.dart';
import 'package:authentication/presentation/ui/dashboard/modules/lost_product/lost_item_screen.dart';
import 'package:authentication/presentation/ui/dashboard/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyreportsScreen extends StatefulWidget {
  const MyreportsScreen({super.key});

  @override
  State<MyreportsScreen> createState() => _MyreportsScreenState();
}

class _MyreportsScreenState extends State<MyreportsScreen> {
  // List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    final tabnotifier = context.watch<TabNotifier>();
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: CustomAppbar(),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Reports",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                    ),
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LostItemScreen();
                          },
                        ),
                      );
                    },
                    label: Text(
                      "Add Report",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            TabBar(
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              indicatorColor: Colors.blue[800],
              labelColor: Colors.blue[800],
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(text: "I Found"),
                Tab(text: "I Lost"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: tabnotifier.screen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
