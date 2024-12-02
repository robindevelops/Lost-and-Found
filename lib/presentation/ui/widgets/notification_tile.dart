import 'package:authentication/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class NotificationTileWidget extends StatelessWidget {
  final int index;
  final Function onTap;
  final bool isRead;

  const NotificationTileWidget({
    super.key,
    required this.index,
    required this.onTap,
    required this.isRead,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: Dimensions.miniVerticalSpaces,
          horizontal: Dimensions.horizontalSpaces,
        ),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isRead ? Colors.grey.shade200 : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey.shade300,
              backgroundImage: const NetworkImage(
                "https://avatar.iran.liara.run/public",
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "David Lee - Added you as a follower on City gate front-end design",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isRead ? Colors.black : Colors.blue.shade700,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "1 hour ago",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.chevron_right,
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
