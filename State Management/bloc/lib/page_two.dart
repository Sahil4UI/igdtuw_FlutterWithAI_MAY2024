import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page2"),
            BlocBuilder<CounterCubit,int>(builder: (context,state)
            {
                return Text("CUbit Value : $state");
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go to Page 1"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
                BlocProvider.of<CounterCubit>(context).plus();

      },
      child: Icon(Icons.add),
      ),
    );
  }
  }
