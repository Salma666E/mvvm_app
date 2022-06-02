import 'package:flutter/material.dart';
import 'package:mvvm_apply/view_model/home_view_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // create instance form viewModel.
  var data = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${data.getCounter()}'),
            TextButton(
                onPressed: () {
                  // not write any business logic here
                  // I will send action to viewModel
                  setState(() {
                    data.inc();
                  });
                },
                child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
