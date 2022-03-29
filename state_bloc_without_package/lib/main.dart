import 'package:flutter/material.dart';
import 'package:state_management_bloc/bloc/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  // object
  CounterBloc stateBloc = CounterBloc();
  //
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Program with State Bloc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Streambuilder untuk UI agar berubah saat ada event
            StreamBuilder(
                // di streamBuilder ada initialData jika tidak diset snapshotnya akan ull
                initialData: stateBloc.initialData,
                stream: stateBloc.outputan,
                // snapshot : hasil outputan
                builder: (context, snapshot) {
                  return Text(
                    "Angka Saat ini ${snapshot.data}",
                    style: TextStyle(fontSize: 25),
                  );
                }),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    stateBloc.inputan.add("minus");
                  },
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    stateBloc.inputan.add("add");
                  },
                  icon: Icon(
                    Icons.add,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
