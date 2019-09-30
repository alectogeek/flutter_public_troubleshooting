import 'package:flutter_app/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

class PageBloc extends BlocBase {

  PageBloc() {
    _taskTypeController =
        BehaviorSubject<Tuple2<String, String>>();
    outTaskType = _taskTypeController.stream;
    _inTaskType = _taskTypeController.sink;
    emulateStream();
  }

  emulateStream() async {
    for(int i = 0; i < 9999; i++) {
      await Future.delayed(
        Duration(seconds: 3),
          () {
          _inTaskType.add(Tuple2('', ''));
          }
      );
    }
  }


  // Pair of TaskType and word id
  BehaviorSubject<Tuple2<String, String>> _taskTypeController;

  Stream<Tuple2<String, String>> outTaskType;

  Sink<Tuple2<String, String>>_inTaskType;




  @override
  void dispose() {
    _taskTypeController.close();
  }



}