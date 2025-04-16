import 'dart:async';

void main() {
  final controller = StreamController();
  final stream = controller.stream; // 1번 가능함함

  final streamListener1 = stream.listen((val){
    print('Listener 1: $val');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.add(6);

}