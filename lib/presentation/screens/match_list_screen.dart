import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/presentation/notifier/providers.dart';

class MatchListScreen extends ConsumerWidget {
  const MatchListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchesAsync = ref.watch(matchesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('マッチ一覧'),
      ),
      body: matchesAsync.when(
        data: (list) => ListView.separated(
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            final item = list[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(item.avatarUrl),
                onBackgroundImageError: (_, __) {},
              ),
              title: Text(item.name),
              subtitle: Text('${item.gym}・${item.distanceKm}km'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('信頼 ${item.trustScore}'),
                  Icon(
                    item.isOnline ? Icons.circle : Icons.circle_outlined,
                    color: item.isOnline ? Colors.green : Colors.grey,
                    size: 12,
                  )
                ],
              ),
              onTap: () => context.push('/profile/${item.id}'),
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: list.length,
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('エラー: $e')),
      ),
    );
  }
}
