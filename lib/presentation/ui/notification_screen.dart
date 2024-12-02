import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/core/utils/logger.dart';
import 'package:authentication/presentation/ui/widgets/notification_tile.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return NotificationTileWidget(
                  index: index,
                  onTap: () {
                    Log.d("Notification Tapped: $index");
                  },
                  isRead: index % 2 == 0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
