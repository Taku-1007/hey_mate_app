import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/presentation/notifier/providers.dart';

class KycStepsScreen extends ConsumerWidget {
  const KycStepsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flowAsync = ref.watch(kycFlowProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('本人確認・登録'),
      ),
      body: flowAsync.when(
        data: (flow) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text('安全なコミュニティのために',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 16),
            ...flow.steps.map((s) => _stepCard(context, s.title, s.description, s.tips)),
            const SizedBox(height: 12),
            Text('近くのジム', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            ...flow.nearbyGyms.map((g) => ListTile(
                  title: Text(g.name),
                  subtitle: Text(g.address),
                  trailing: const Icon(Icons.chevron_right),
                )),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.push('/kyc/upload'),
              child: const Text('登録を完了して次へ'),
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('エラー: $e')),
      ),
    );
  }

  Widget _stepCard(
      BuildContext context, String title, String description, List<String> tips) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE3E7EE)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 6),
          Text(description),
          const SizedBox(height: 8),
          ...tips.map((t) => Row(
                children: [
                  const Icon(Icons.check_circle, size: 16, color: Colors.green),
                  const SizedBox(width: 6),
                  Expanded(child: Text(t)),
                ],
              )),
        ],
      ),
    );
  }
}
