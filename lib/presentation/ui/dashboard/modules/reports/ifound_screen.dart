import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/presentation/notifiers/filter_notifier.dart';
import 'package:authentication/presentation/ui/dashboard/widgets/active_inactive_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoundScreen extends StatefulWidget {
  const FoundScreen({super.key});

  @override
  State<FoundScreen> createState() => _FoundScreenState();
}

class _FoundScreenState extends State<FoundScreen> {
  @override
  Widget build(BuildContext context) {
    FilterNotifier filterNotifier = Provider.of<FilterNotifier>(context);
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  buildChoiceChip(
                    label: "All",
                    index: 0,
                    filterNotifier: filterNotifier,
                  ),
                  const SizedBox(width: 15),
                  buildChoiceChip(
                    label: "Active",
                    index: 1,
                    filterNotifier: filterNotifier,
                  ),
                  const SizedBox(width: 15),
                  buildChoiceChip(
                    label: "Inactive",
                    index: 2,
                    filterNotifier: filterNotifier,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      activeCard(
                        isActive: true,
                      ),
                      activeCard(
                        isActive: true,
                      ),
                      activeCard(
                        isActive: false,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildChoiceChip({
  required String label,
  required int index,
  required FilterNotifier filterNotifier,
}) {
  bool isSelected = filterNotifier.selectedindex == index;
  return ChoiceChip(
    side: BorderSide.none,
    checkmarkColor: Colors.white,
    label: Text(
      label,
      style: TextStyle(
        fontSize: 16,
        color: isSelected ? Colors.white : Colors.black,
      ),
    ),
    selected: isSelected,
    onSelected: (bool selected) {
      filterNotifier.ChangeIndex(index);
    },
    selectedColor: Colors.blue[800],
    backgroundColor: Colors.grey[300],
  );
}
