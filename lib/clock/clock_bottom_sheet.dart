import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'clock_ui_state.dart';
import 'clock_view_model.dart';

void showClockBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    showDragHandle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
    ),
    builder: (builder) {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            _Header(),
            SizedBox(
              height: 200,
              child: _StationList(),
            )
          ],
        ),
      );
    },
  );
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    void closeModal() {
      Navigator.of(context).pop();
    }

    return Stack(
      children: [
        const Align(
          alignment: Alignment.center,
          child: Text(
            '駅の選択',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: closeModal,
            icon: const Icon(
              Icons.close,
              size: 32,
            ),
          ),
        )
      ],
    );
  }
}

class _StationList extends ConsumerWidget {
  const _StationList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(clockViewModelProvider.notifier);
    final List<StationItem> items = ref.watch(clockViewModelProvider).stations;

    return ListView(
      children: items.map((item) {
        return GestureDetector(
          onTap: () {
            viewModel.onTap(item);
          },
          child: Row(
            children: [
              Icon(
                Icons.directions_bus,
                color: (item.isSelected)
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).disabledColor,
              ),
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
  }
}
