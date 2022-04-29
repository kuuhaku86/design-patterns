import 'IIterator.dart';

abstract class ICollection {
  IIterator createIterator();
}