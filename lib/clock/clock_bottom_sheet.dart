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
            ),
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
    final BottomSheetState state =
        ref.watch(clockViewModelProvider).bottomSheetState;

    void onChanged(String? value) {
      viewModel.onTap(value!);
    }

    return ListView(
      children: state.stations.map((item) {
        return GestureDetector(
          onTap: () {
            viewModel.onTap(item);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Radio(
                  value: item,
                  groupValue: state.selectedStation,
                  onChanged: onChanged,
                ),
                const SizedBox(width: 8),
                Text(
                  item,
                  style: const TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
