import 'package:mvvm_apply/model/counter_model.dart';

class HomeViewModel {
  // this will provide all data the view needs.
  String title = 'First Page ViewModel';
  var counter = CounterModel();
  getCounter(){
    return counter.count;
  }
  inc(){
    counter.count++;
  }
}
