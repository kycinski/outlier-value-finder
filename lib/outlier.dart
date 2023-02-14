abstract class Outlier {
  findOutlier();
}

class IntOutlier implements Outlier {
  List<int> numbers;
  @override
  findOutlier() {
    if (numbers.length >= 3) {
      try {
        int outlierValue = numbers.singleWhere((element) => element % 2 == 0);
        return outlierValue;
      } catch (e) {
        int outlierValue = numbers.singleWhere((element) => element % 2 != 0);
        return outlierValue;
      }
    }
  }

  IntOutlier(this.numbers);
}
