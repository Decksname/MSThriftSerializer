#!/bin/bash

#ObjectiveC
echo Generate ObjectiveC code

thrift  --gen cocoa SimpleObject.thrift
thrift  --gen cocoa SimpleObjectList.thrift

echo Done
