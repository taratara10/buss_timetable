import 'package:buss_timetable/clock/clock_footer_section.dart';
import 'package:buss_timetable/clock/clock_view_model.dart';
import 'package:buss_timetable/clock/timeline_section.dart';
import 'package:buss_timetable/model/station_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'clock_card_section.dart';

class ClockRoute extends StatelessWidget {
  const ClockRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const _AppBarTitle(),
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: ClockFooterSection(),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClockCardSection(),
              SizedBox(height: 32),
              // todo scrollable
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TimelineSection(),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBarTitle extends ConsumerWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final StationName title = ref
        .watch(clockViewModelNotifierProvider)
        .bottomSheetState
        .selectedStation;
    return Text("${title.value} 発");
  }
}
