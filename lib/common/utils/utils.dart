abstract class Utils {
  static String formatTimeElapsedDuration(Duration duration) {
    if (duration.inDays > 365) {
      return '${duration.inDays ~/ 365} 년 전';
    } else if (duration.inDays > 30) {
      return '${duration.inDays ~/ 30} 달 전';
    } else if (duration.inDays > 0) {
      if (duration.inDays == 1) {
        return '어제';
      } else {
        return '${duration.inDays} 일 전';
      }
    } else if (duration.inHours > 0) {
      return '${duration.inHours} 시간 전';
    } else if (duration.inMinutes > 0) {
      return '${duration.inMinutes} 분 전';
    } else {
      return '방금 전';
    }
  }
}