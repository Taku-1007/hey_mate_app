import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class KycUploadScreen extends StatelessWidget {
  const KycUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('書類のアップロード'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE3E7EE)),
              ),
              child: const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.camera_alt_outlined, size: 40),
                    SizedBox(height: 8),
                    Text('表面を撮影してください'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text('撮影のポイント: 明るい場所で、反射を避けてください。'),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.pushReplacement('/home'),
                child: const Text('次へ進む'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
