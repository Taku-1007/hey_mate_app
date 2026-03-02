import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hey_mate_app/presentation/notifier/providers.dart';

class MypageScreen extends ConsumerWidget {
  const MypageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mypageAsync = ref.watch(mypageProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('マイページ'),
      ),
      body: mypageAsync.when(
        data: (p) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Center(
              child: CircleAvatar(
                radius: 44,
                backgroundImage: AssetImage(p.avatarUrl),
                onBackgroundImageError: (_, __) {},
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text('${p.name} (${p.age})',
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            const SizedBox(height: 8),
            Center(child: Text('信頼スコア ${p.trustScore}')),
            const SizedBox(height: 16),
            ...p.menus.map(
              (m) => ListTile(
                title: Text(m.title),
                subtitle: Text(m.subtitle),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 16),
            Center(child: Text('バージョン ${p.appVersion}')),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('エラー: $e')),
      ),
    );
  }
}
