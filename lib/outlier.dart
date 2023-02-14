abstract class Outlier {
  findOutlier();
}

class IntOutlier implements Outlier {
  final List<int> numbers;
  int? outlierValue;
  @override
  findOutlier() {
    if (numbers.length >= 3) {
      try {
        final outlierValue = numbers.singleWhere((element) => element % 2 == 0);
        return outlierValue;
      } catch (e) {
        final outlierValue = numbers.singleWhere((element) => element % 2 != 0);
        return outlierValue;
      }
    }
  }

  IntOutlier(this.numbers);
}
