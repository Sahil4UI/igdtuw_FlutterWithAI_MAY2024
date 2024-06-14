
import 'package:flutter/material.dart';
import 'package:flutter_application_2/counter.dart';
import 'package:flutter_application_2/page_one.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()
{
   runApp(
    BlocProvider(create: (_)=> CounterCubit(),
    child: const MaterialApp(home: Page1(),),
    )
   );
}