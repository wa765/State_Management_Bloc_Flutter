import 'dart:async';

import 'package:flutter/widgets.dart';

class CounterBloc {
  int _counter = 0;
  //
  // getter untuk initialiteData
  // mengembalikan nilai counter saat ini
  int get initialData => _counter;
  //
  // untuk Controller input
  final StreamController _inputController = StreamController();
  // untuk inputan
  StreamSink get inputan => _inputController.sink;

// Controller Output
// karena ini sifatnya di dalam mesin jadi buat fungsinya di dalam constructor
  final StreamController _outputController = StreamController();
  // Output
  StreamSink get _Sinkout => _outputController.sink;
  //
  Stream get outputan => _outputController.stream;
  // ini mesinnya dirun di Constructor
  CounterBloc() {
    // event adalah data dari inputan dari fungsi pertama yang dilakukan
    _inputController.stream.listen(
      (event) {
        if (event == "add") {
          _counter++;
        } else if (event == "minus") {
          _counter--;
          // kalo 0 dia mentok
          _counter = 0;
        }
        // datanya itu counter
        _Sinkout.add(_counter);
      },
    );
  }
  // close biar tidak mengalir terus misalnya sudah ganti page gak muter terus
  void dispose() {
    _inputController.close();
    _outputController.close();
  }
}
