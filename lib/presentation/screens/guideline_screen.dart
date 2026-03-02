import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/presentation/notifier/providers.dart';

class GuidelineScreen extends ConsumerStatefulWidget {
  const GuidelineScreen({super.key});

  @override
  ConsumerState<GuidelineScreen> createState() => _GuidelineScreenState();
}

class _GuidelineScreenState extends ConsumerState<GuidelineScreen> {
  bool agreed = false;

  @override
  Widget build(BuildContext context) {
    final guidelineAsync = ref.watch(guidelineProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('コミュニティ規約'),
      ),
      body: guidelineAsync.when(
        data: (g) => Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(g.title, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 8),
              Text(g.subtitle, style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: g.items.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final item = g.items[index];
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFE3E7EE)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.title,
                              style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(height: 6),
                          Text(item.description),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: agreed,
                    onChanged: (v) => setState(() => agreed = v ?? false),
                  ),
                  Expanded(child: Text(g.agreeLabel)),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: agreed ? () => context.push('/kyc/steps') : null,
                  child: const Text('登録を完了する'),
                ),
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('エラー: $e')),
      ),
    );
  }
}
