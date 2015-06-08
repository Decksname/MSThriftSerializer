include "SimpleObject.thrift"

struct SimpleObjectList {
  1: string someIdentifier,
  2: list<SimpleObject.SimpleObject> objects
}