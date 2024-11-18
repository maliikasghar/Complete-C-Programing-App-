import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../components/course_list_item.dart';
import '../../components/drawer_list_tile.dart';
import '../../utils/constants.dart';
import '../../utils/text_components.dart';
import '../drawer_screens/about_us.dart';
import '../drawer_screens/ccompiler.dart';
import '../drawer_screens/contact_us.dart';
import '../drawer_screens/quiz_screen.dart';
import '../drawer_screens/termsandconditions.dart';
import '../../topics/1introduction.dart';
import '../../topics/2datatypes.dart';
import '../../topics/3variableandconstant.dart';
import '../../topics/4operators.dart';
import '../../topics/5controllstatemment.dart';
import '../../topics/6loops.dart';
import '../../topics/7functions.dart';
import '../../topics/8arrays.dart';
import '../../topics/9pointers.dart';
import '../../topics/10strings.dart';
import '../../topics/11structuresandunion.dart';
import '../../topics/12enmurateddatatypes.dart';
import '../../topics/13filehandling.dart';
import '../../topics/14memoryallocation.dart';
import '../../topics/15preprocessorsandmacros.dart';
import '../../topics/16typecastingg.dart';
import '../../topics/17bitwiseoperators.dart';
import '../../topics/18dynamicmemoryallocation.dart';
import '../../topics/19commandlinearguments.dart';
import '../../topics/20inputandoutput.dart';
import '../../topics/21recursion.dart';
import '../../topics/22errorhandling.dart';
import '../../topics/23standard labraries.dart';
import '../../topics/24advancedatastructure.dart';
import '../../topics/25graphicinc.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> topics = [
    {'title': 'Introduction to C', 'screen': const IntroductionScreen()},
    {'title': 'Data Types', 'screen': const DataTypesScreen()},
    {'title': 'Variables and Constants', 'screen': const VariablesAndConstantsScreen()},
    {'title': 'Operators', 'screen': const OperatorsInCScreen()},
    {'title': 'Control Statements', 'screen': const ControlStatementsScreen()},
    {'title': 'Loops', 'screen': const LoopsScreen()},
    {'title': 'Functions', 'screen': const FunctionsScreen()},
    {'title': 'Arrays', 'screen': const ArraysScreen()},
    {'title': 'Pointers', 'screen': const PointersScreen()},
    {'title': 'Strings', 'screen': const StringsScreen()},
    {'title': 'Structures and Unions', 'screen': const StructuresAndUnionsScreen()},
    {'title': 'Enumerated Data Types', 'screen': const EnumeratedDataTypesScreen()},
    {'title': 'File Handling', 'screen': const FileHandlingScreen()},
    {'title': 'Memory Allocation', 'screen': const MemoryAllocationScreen()},
    {'title': 'Preprocessors and Macros', 'screen': const PreprocessorsAndMacrosScreen()},
    {'title': 'Typecasting', 'screen': const TypecastingScreen()},
    {'title': 'Bitwise Operators', 'screen': const BitwiseOperatorsScreen()},
    {'title': 'Dynamic Memory Allocation', 'screen': const DynamicMemoryAllocationScreen()},
    {'title': 'Command Line Arguments', 'screen': const CommandLineArgumentsScreen()},
    {'title': 'Input and Output', 'screen': const InputAndOutputScreen()},
    {'title': 'Recursion', 'screen': const RecursionScreen()},
    {'title': 'Error Handling', 'screen': const ErrorHandlingScreen()},
    {'title': 'Standard Libraries', 'screen': const StandardLibrariesScreen()},
    {'title': 'Advanced Data Structures (Linked Lists, Stacks, Queues)', 'screen': const AdvancedDataStructuresScreen()},
    {'title': 'Graphics in C', 'screen': const GraphicsInCScreen()},
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'C Language Course',
          style: TextComponents.pageTitle, // Using constants for consistent style
        ),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(

              decoration: BoxDecoration(color: AppColors.primaryColor),
              child: Text(
                'Menu',
                style: TextComponents.pageTitle, // Consistent Drawer header style
              ),
            ),
            DrawerListTile(
              title: 'Home',
              icon: Icons.home,
              onTap: () => Navigator.pop(context), // Closes the drawer
            ),
            DrawerListTile(
              title: 'Contact Us',
              icon: Icons.contact_mail,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactUs()),
                );
              },
            ),
            DrawerListTile(
              title: 'About Us',
              icon: Icons.info,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUsScreen()),
                );
              },
            ),
            DrawerListTile(
              title: 'Quiz', // New quiz item in Drawer
              icon: Icons.question_answer,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const QuizScreen()), // Navigate to QuizScreen
                );
              },
            ),
            DrawerListTile(
              title: 'Terms & Conditions',
              icon: Icons.book,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TermsAndConditionsScreen()),
                );
              },
            ),
            
            DrawerListTile(
              title: 'C Compiler',
              icon: Icons.code,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CCompilerScreen()),
                );
              },
            ),
            DrawerListTile(
              title: 'Exit',
              icon: Icons.exit_to_app,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Exit"),
                      content: const Text("Are you sure you want to exit?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          child: const Text("No"),
                        ),
                        TextButton(
                          onPressed: () {
                            SystemNavigator.pop(); // Exit the app
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),

          ],
        ),
      ),
      body: ListView.builder(
        itemCount: topics.length,
        itemBuilder: (context, index) {
          String topicTitle = topics[index]['title'];
          Widget topicScreen = topics[index]['screen'];

          return CourseListItem(
            title: topicTitle,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => topicScreen),
              );
            },
          );
        },
      ),
    );
  }
}
