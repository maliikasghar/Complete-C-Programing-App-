import 'package:flutter/material.dart';
import 'package:c_course/topics/10strings.dart';
import 'package:c_course/topics/11structuresandunion.dart';
import 'package:c_course/topics/12enmurateddatatypes.dart';
import 'package:c_course/topics/13filehandling.dart';
import 'package:c_course/topics/14memoryallocation.dart';
import 'package:c_course/topics/15preprocessorsandmacros.dart';
import 'package:c_course/topics/16typecastingg.dart';
import 'package:c_course/topics/17bitwiseoperators.dart';
import 'package:c_course/topics/18dynamicmemoryallocation.dart';
import 'package:c_course/topics/19commandlinearguments.dart';
import 'package:c_course/topics/20inputandoutput.dart';
import 'package:c_course/topics/21recursion.dart';
import 'package:c_course/topics/22errorhandling.dart';
import 'package:c_course/topics/23standard%20labraries.dart';
import 'package:c_course/topics/24advancedatastructure.dart';
import 'package:c_course/topics/25graphicinc.dart';
import 'package:c_course/topics/5controllstatemment.dart';
import 'package:c_course/topics/6loops.dart';
import 'package:c_course/topics/7functions.dart';
import 'package:c_course/topics/8arrays.dart';
import 'package:c_course/topics/9pointers.dart';
import 'package:c_course/topics/1introduction.dart';
import 'package:c_course/view/starting_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'C Language Course',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),

      routes: {
        '/introduction': (context) => const IntroductionScreen(),
        '/control_statements': (context) => const ControlStatementsScreen(),
        '/loops': (context) => const LoopsScreen(),
        '/functions': (context) => const FunctionsScreen(),
        '/arrays': (context) => const ArraysScreen(),
        '/pointers': (context) => const PointersScreen(),
        '/strings': (context) => const StringsScreen(),
        '/structures_and_unions': (context) => const StructuresAndUnionsScreen(),
        '/enumerated_data_types': (context) => const EnumeratedDataTypesScreen(),
        '/file_handling': (context) => const FileHandlingScreen(),
        '/memory_allocation': (context) => const MemoryAllocationScreen(),
        '/preprocessors_and_macros': (context) => const PreprocessorsAndMacrosScreen(),
        '/typecasting': (context) => const TypecastingScreen(),
        '/bitwise_operators': (context) => const BitwiseOperatorsScreen(),
        '/dynamic_memory_allocation': (context) => const DynamicMemoryAllocationScreen(),
        '/command_line_arguments': (context) => const CommandLineArgumentsScreen(),
        '/input_and_output': (context) => const InputAndOutputScreen(),
        '/recursion': (context) => const RecursionScreen(),
        '/error_handling': (context) => const ErrorHandlingScreen(),
        '/standard_libraries': (context) => const StandardLibrariesScreen(),
        '/advanced_data_structures': (context) => const AdvancedDataStructuresScreen(),
        '/graphics_in_c': (context) => const GraphicsInCScreen(),
      },
    );
  }
}
