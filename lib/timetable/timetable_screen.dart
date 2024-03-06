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

class TimetableRoute extends StatelessWidget {
  const TimetableRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: _AppBarTitle()),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 42),
              child: _TimetablePager(),
            ),
            _TimetableIndicator(),
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

class _AppBarTitle extends ConsumerWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String title = ref.watch(timetableViewModelProvider).stationName;
    return Text(title);
  }
}

class _TimetablePager extends ConsumerWidget {
  const _TimetablePager();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TimetableUiState state = ref.watch(timetableViewModelProvider);
    final viewModel = ref.read(timetableViewModelProvider.notifier);
    // todo indexの変化でcontrollerのcallbackを呼び出す
    final controller = PageController(initialPage: state.pageIndex);
    return PageView.builder(
      controller: controller,
      itemCount: state.timetables.length,
      onPageChanged: (int page) {
        viewModel.updatePageIndex(page);
      },
      itemBuilder: (context, index) {
        return TimetableSection(state.timetables[index]);
      },
    );
  }
}

class _TimetableIndicator extends ConsumerWidget {
  const _TimetableIndicator();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TimetableUiState state = ref.watch(timetableViewModelProvider);
    final viewModel = ref.read(timetableViewModelProvider.notifier);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: state.timetables
          .mapIndexed(
            (i, item) => _IndicatorCell(
              isSelected: i == state.pageIndex,
              name: item.dayType.stringValue,
              onClick: () {
                viewModel.updatePageIndex(i);
              },
            ),
          )
          .toList(),
    );
  }
}

class _IndicatorCell extends StatelessWidget {
  final bool isSelected;
  final String name;
  final Function onClick;

  const _IndicatorCell(
      {required this.isSelected, required this.name, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: () {
          onClick();
        },
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
      ),
    );
  }
}
