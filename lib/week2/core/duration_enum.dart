enum DurationEnums { LOW, NORMAL, HIGH }

extension DurationEnumsExtension on DurationEnums {
  Duration time() {
    switch (this) {
      case DurationEnums.HIGH:
        return Duration(seconds: 10);

      case DurationEnums.NORMAL:
        return Duration(seconds: 5);

      case DurationEnums.LOW:
        return Duration(seconds: 2);

      default:
        throw Exception('Not found enum value $this');
    }
  }
}
