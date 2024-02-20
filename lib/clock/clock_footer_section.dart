import 'package:buss_timetable/timetable/timetable_screen.dart';
import 'package:flutter/material.dart';

import 'clock_ui_state.dart';

class ClockFooterSection extends StatelessWidget {
  const ClockFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle mediumButtonStyle = ElevatedButton.styleFrom(
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(16),
    );

    final ButtonStyle largeButtonStyle = ElevatedButton.styleFrom(
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(20),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            navigateToTimetableRoute(context);
          },
          style: mediumButtonStyle,
          child: const Icon(Icons.view_timeline_outlined, size: 28),
        ),
        ElevatedButton(
          onPressed: () {
            _showClockBottomSheet(
              context: context,
              items: [
                StationItem(isSelected: true, name: 'name'),
                StationItem(isSelected: false, name: '津田沼'),
              ],
              onTap: (item) {},
            );
          },
          style: largeButtonStyle,
          child: const Icon(Icons.change_circle, size: 34),
        ),
        ElevatedButton(
          onPressed: () {},
          style: mediumButtonStyle,
          child: const Icon(Icons.settings, size: 28),
        ),
      ],
    );
  }
}

void _showClockBottomSheet({
  required BuildContext context,
  required List<StationItem> items,
  required Function(StationItem) onTap,
}) {
  showModalBottomSheet(
    context: context,
    showDragHandle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
    ),
    builder: (builder) {
      return ListView(
        children: items.map((item) {
          return GestureDetector(
            onTap: () {
              onTap(item);
            },
            child: Row(
              children: [
                Icon(Icons.directions_bus,
                    color: (item.isSelected)
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).disabledColor),
                const SizedBox(width: 8),
                Text(
                  item.name,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          );
        }).toList(),
      );
    },
  );
}
