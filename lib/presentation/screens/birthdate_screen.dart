import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/presentation/notifier/providers.dart';

class BirthdateScreen extends ConsumerStatefulWidget {
  const BirthdateScreen({super.key});

  @override
  ConsumerState<BirthdateScreen> createState() => _BirthdateScreenState();
}

class _BirthdateScreenState extends ConsumerState<BirthdateScreen> {
  int? year;
  int? month;
  int? day;

  @override
  Widget build(BuildContext context) {
    final flowAsync = ref.watch(birthdateFlowProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('生年月日登録'),
      ),
      body: flowAsync.when(
        data: (flow) {
          year ??= flow.years.first;
          month ??= flow.months.first;
          day ??= flow.days.first;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: LinearProgressIndicator(
                  value: flow.currentStep / flow.totalSteps,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    _picker(flow.years, year!, (v) => setState(() => year = v)),
                    _picker(flow.months, month!, (v) => setState(() => month = v)),
                    _picker(flow.days, day!, (v) => setState(() => day = v)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => context.push('/guideline'),
                    child: const Text('次へ'),
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('エラー: $e')),
      ),
    );
  }

  Widget _picker(List<int> values, int initial, ValueChanged<int> onSelected) {
    final controller = FixedExtentScrollController(
      initialItem: values.indexOf(initial),
    );
    return Expanded(
      child: CupertinoPicker(
        scrollController: controller,
        itemExtent: 40,
        onSelectedItemChanged: (idx) => onSelected(values[idx]),
        children: values.map((v) => Center(child: Text('$v'))).toList(),
      ),
    );
  }
}
