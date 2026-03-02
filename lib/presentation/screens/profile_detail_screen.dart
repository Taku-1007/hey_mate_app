import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/presentation/notifier/providers.dart';

class ProfileDetailScreen extends ConsumerWidget {
  const ProfileDetailScreen({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(profileProvider(userId));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('プロフィール'),
      ),
      body: profileAsync.when(
        data: (p) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Center(
              child: CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage('assets/images/a1.png'),
                onBackgroundImageError: (_, __) {},
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Text('${p.name} (${p.age})',
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            const SizedBox(height: 6),
            Center(child: Text('${p.location} / ${p.gym}')),
            const SizedBox(height: 12),
            _statCard(context, '信頼スコア', '${p.trustScore}/100'),
            const SizedBox(height: 12),
            Text('BIG3', style: Theme.of(context).textTheme.titleMedium),
            ...p.lifts.map(
              (l) => ListTile(
                title: Text(l.label),
                subtitle: LinearProgressIndicator(
                  value: l.valueKg / l.maxKg,
                  minHeight: 8,
                ),
                trailing: Text('${l.valueKg}kg'),
              ),
            ),
            const SizedBox(height: 12),
            Text('週間スケジュール', style: Theme.of(context).textTheme.titleMedium),
            Wrap(
              spacing: 8,
              children: p.schedule
                  .map((s) => Chip(
                        label: Text(
                            '${s.dayOfWeek}: 朝${s.morningAvailable ? "◯" : "×"} 夜${s.nightAvailable ? "◯" : "×"}'),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 12),
            Text('レビュー', style: Theme.of(context).textTheme.titleMedium),
            ...p.reviews.map((r) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(r.avatarUrl),
                    onBackgroundImageError: (_, __) {},
                  ),
                  title: Text(r.authorName),
                  subtitle: Text(r.text),
                  trailing: Text(r.postedAgoText),
                )),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('パートナー申請'),
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('エラー: $e')),
      ),
    );
  }

  Widget _statCard(BuildContext context, String title, String value) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE3E7EE)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          Text(value, style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    );
  }
}
