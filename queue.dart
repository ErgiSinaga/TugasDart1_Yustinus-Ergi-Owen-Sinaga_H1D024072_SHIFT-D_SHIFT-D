class Queue<T> {
  final List<T> _items = [];

  bool get isEmpty => _items.isEmpty;
  int get length => _items.length;

  void enqueue(T item) {
    _items.add(item);
  }

  T pop() {
    if (isEmpty) {
      throw StateError('Queue kosong, tidak ada elemen untuk di-pop');
    }
    return _items.removeAt(0);
  }
}

void main() {
  final antrian = Queue<String>();

  antrian.enqueue('Ani');
  antrian.enqueue('Budi');
  antrian.enqueue('Citra');

  print(antrian.pop()); // Ani
  print(antrian.pop()); // Budi
  print('Sisa antrian: ${antrian.length}'); // 1

  antrian.pop(); // Citra
  try {
    antrian.pop();
  } catch (e) {
    print(e);
  }
}