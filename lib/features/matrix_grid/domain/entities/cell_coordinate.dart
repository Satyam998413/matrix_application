class CellCoordinate {
  const CellCoordinate(this.row, this.col);

  final int row;
  final int col;

  String toKey() => '${row}_$col';

  static CellCoordinate fromKey(String key) {
    final parts = key.split('_');
    return CellCoordinate(int.parse(parts[0]), int.parse(parts[1]));
  }
}
