import 'package:flutter/material.dart';
import 'package:c_course/utils/text_components.dart';
import '../utils/constants.dart';

class AdvancedDataStructuresScreen extends StatelessWidget {
  const AdvancedDataStructuresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced Data Structures in C',
            style: TextComponents.pageTitle),
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Advanced Data Structures in C',
              style: TextComponents.pageTitle.copyWith(
                fontSize: 22.0,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Advanced data structures in C include trees, graphs, hash tables, and heaps, which are essential for organizing and managing data in complex programs. '
                  'Each structure has unique properties that make it suitable for specific operations and algorithms.',
              style: TextStyle(fontSize: 16.0, color: Colors.black87, height: 1.5),
            ),
            const SizedBox(height: 20.0),
            _buildDataStructureSection(
              '1. Trees:',
              'A tree is a hierarchical data structure with a root node and child nodes, commonly used in file systems, databases, and sorting algorithms. '
                  'Binary Trees and Binary Search Trees (BST) are common tree types.',
            ),
            _buildDataStructureSection(
              '2. Graphs:',
              'Graphs are networks of nodes (vertices) connected by edges, ideal for representing connections like social networks, transportation systems, and network flows.',
            ),
            _buildDataStructureSection(
              '3. Hash Tables:',
              'Hash tables store key-value pairs, enabling efficient search, insertion, and deletion operations. Hash functions map keys to unique indices for quick access.',
            ),
            _buildDataStructureSection(
              '4. Heaps:',
              'A heap is a binary tree with specific properties, primarily used in priority queues and algorithms like heapsort.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDataStructureSection(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextComponents.subheading.copyWith(
            fontSize: 18.0,
            color: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          description,
          style: TextComponents.bodyText.copyWith(
            fontSize: 16.0,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 10.0),
        const Divider(height: 20.0, color: Colors.grey),
      ],
    );
  }
}
