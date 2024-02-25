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
    return Scaffold(
      appBar: AppBar(title: const _AppBarTitle()),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Stack(
            children: [
              // todo
              TimetableSection(state.timetables.first),
              _TimetableIndicator(index: 0, data: state.timetables),
            ],
          ),
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

class Page extends StatelessWidget {
  final List<Timetable> data;

  const Page(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: data.length,
      onPageChanged: (int page) {},
      itemBuilder: (context, index) {
        return TimetableSection(data[index]);
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
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 32),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: data
                .mapIndexed(
                  (i, item) => _IndicatorCell(
                    isSelected: i == index,
                    name: item.dayType.stringValue,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class _IndicatorCell extends StatelessWidget {
  final bool isSelected;
  final String name;

  const _IndicatorCell({required this.isSelected, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        (isSelected)
            ? Container(height: 1, color: Colors.grey)
            : const SizedBox(),
      ],
    );
  }
}
