extension StringExtension on String {
  String get capitalize => '${this[0].toUpperCase()}${substring(1)}';
  String get capitalizeWords => split(" ").map((e) => e.capitalize).join(" ");
}
