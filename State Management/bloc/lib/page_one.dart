import 'package:flutter/material.dart';
import 'package:flutter_application_2/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'page_two.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page1"),
            BlocBuilder<CounterCubit,int>(builder: (context,state)
            {
                return Text("CUbit Value : $state");
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Page2()));
              },
              child: Text("Go to Page 2"),
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
