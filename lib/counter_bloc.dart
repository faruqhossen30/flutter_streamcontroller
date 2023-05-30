
import 'dart:async';

class CounterBloc{
  CounterBloc(){
    _valueController.sink.add(_value);
  }
  int _value = 0;
  StreamController<int> _valueController = StreamController();

  void increment(){
    _value++;
    _valueController.sink.add(_value);
  }

  Stream<int> getStream(){
    return _valueController.stream;
  }

  void dispose(){
    _valueController.close();
  }
}