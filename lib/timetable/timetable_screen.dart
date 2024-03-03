import 'package:buss_timetable/timetable/timetable_section.dart';
import 'package:buss_timetable/timetable/timetable_ui_state.dart';
import 'package:buss_timetable/timetable/timetable_view_model.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/timetable.dart';

void navigateToTimetableRoute(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const TimetableRoute()),
  );
}

class TimetableRoute extends ConsumerWidget {
  const TimetableRoute({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TimetableUiState state = ref.watch(timetableViewModelProvider);
    final String title = ref.watch(timetableViewModelProvider).stationName;
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 42),
              child: _TimetablePager(),
            ),
            _TimetableIndicator(
              index: state.pageIndex,
              data: state.timetables,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class _TimetablePager extends ConsumerWidget {
  const _TimetablePager();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Timetable> timetables =
        ref.watch(timetableViewModelProvider).timetables;
    final viewModel = ref.read(timetableViewModelProvider.notifier);
    return PageView.builder(
      itemCount: timetables.length,
      onPageChanged: (int page) {
        viewModel.updatePageIndex(page);
      },
      itemBuilder: (context, index) {
        return TimetableSection(timetables[index]);
      },
    );
  }
}

class _TimetableIndicator extends StatelessWidget {
  final int index;
  final List<Timetable> data;

  const _TimetableIndicator({required this.index, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: data
          .mapIndexed(
            (i, item) => _IndicatorCell(
              isSelected: i == index,
              name: item.dayType.stringValue,
            ),
          )
          .toList(),
    );
  }
}

class _IndicatorCell extends StatelessWidget {
  final bool isSelected;
  final String name;

  const _IndicatorCell({required this.isSelected, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Text(name),
          const SizedBox(height: 4),
          (isSelected)
              ? Container(
                  height: 3,
                  width: 42,
                  color: Theme.of(context).colorScheme.primary,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
