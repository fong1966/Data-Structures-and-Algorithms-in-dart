void run() {
  var a = List<int>.generate(20, (i) => i * i, growable: false);
  print(a);
  var key = 361;
  if (bsearch(key, a, 0, a.length - 1)) {
    print('found it! key: $key');
  }

  key = 101;
  if (!bsearch(key, a, 0, a.length - 1)) {
    print('can not find: $key');
  }
}

bool bsearch(int key, List<int> a, int start, int end) {
  if (start > end) return false;
  var mid = (start + end) ~/ 2;
  if (a[mid] == key) {
    return true;
  } else if (a[mid] > key) {
    return bsearch(key, a, start, mid - 1);
  } else {
    return bsearch(key, a, mid + 1, end);
  }
}
