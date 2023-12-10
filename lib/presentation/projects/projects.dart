import 'package:ana_app/presentation/analytics/analytics.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  Projects({super.key});

  final List<String> entries = <String>['Test Project 1', 'Funtime'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'All Projects',
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: const [
            Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 10),
          ],
          backgroundColor: Colors.black,
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Analytics(
                    project: (index == 1),
                  ),
                ),
              ),
              child: SizedBox(
                height: 50,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Entry ${entries[index]}',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
