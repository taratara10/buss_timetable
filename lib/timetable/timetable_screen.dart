import 'package:buss_timetable/model/day_type.dart';
import 'package:buss_timetable/model/station_name.dart';
import 'package:buss_timetable/timetable/timetable_section.dart';
import 'package:buss_timetable/timetable/timetable_ui_state.dart';
import 'package:buss_timetable/timetable/timetable_view_model.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      appBar: AppBar(
        title: const _AppBarTitle(),
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 16),
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
    final StationName title =
        ref.watch(timetableViewModelNotifierProvider).stationName;
    return Text(title.value);
  }
}

class _TimetablePager extends ConsumerWidget {
  const _TimetablePager();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TimetableUiState state =
        ref.watch(timetableViewModelNotifierProvider);
    final viewModel = ref.read(timetableViewModelNotifierProvider.notifier);
    final controller = PageController(initialPage: state.pageIndex);

    /// TimetableUiStateの値が変化したら、呼び出される
    /// _TimetableIndicatorで変更されたindexにpageを遷移させる
    ref.listen(timetableViewModelNotifierProvider, (previous, next) {
      controller.animateToPage(
        next.pageIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastEaseInToSlowEaseOut,
      );
    });

    return PageView.builder(
      controller: controller,
      itemCount: state.timetables.length,
      onPageChanged: (int page) {
        viewModel.updatePageIndex(page);
      },
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TimetableSection(state.timetables[index]));
      },
    );
  }
}

class _TimetableIndicator extends ConsumerWidget {
  const _TimetableIndicator();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TimetableUiState state =
        ref.watch(timetableViewModelNotifierProvider);
    final viewModel = ref.read(timetableViewModelNotifierProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      ),
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
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Column(
        children: [
          Text(name),
          const SizedBox(height: 4),
          Container(
            height: 3,
            width: 64,
            color: (isSelected)
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
          )
        ],
      ),
    );
  }
}
