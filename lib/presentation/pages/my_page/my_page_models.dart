class LiftDisplayData {
  const LiftDisplayData({
    required this.label,
    required this.valueKg,
    required this.maxKg,
  });

  final String label;
  final int valueKg;
  final int maxKg;
}

class ScheduleDayData {
  const ScheduleDayData({
    required this.dayLabel,
    required this.statusLabel,
    required this.isActive,
  });

  final String dayLabel;
  final String statusLabel;
  final bool isActive;
}
