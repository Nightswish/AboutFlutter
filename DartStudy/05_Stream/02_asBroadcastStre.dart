import 'dart:async';

void main() {
  final controller = StreamController();
  final stream = controller.stream.asBroadcastStream(); //여러번 가능함

  final streamListener1 = stream.where((val) => val % 2 == 0).listen((val){
    print('Listener 1: $val');
  });

  final streamListener2 = stream.where((val) => val % 2 == 1).listen((val){
    print('Listener 2: $val');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.add(6);

}