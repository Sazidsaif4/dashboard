import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF2A2B2E),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Row(
        children: [
          // Side Navigation Bar
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 40),
                  // Profile
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage("https://via.placeholder.com/150"),
                  ),
                  SizedBox(height: 10),
                  Text('Pooja Mishra',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Admin', style: TextStyle(color: Colors.black)),
                  SizedBox(height: 20),

                  // Navigation Menu
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.people,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Employees',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.access_time,
                      color: Colors.black,
                    ),
                    title: Text('Attendance',
                        style: TextStyle(color: Colors.black)),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bar_chart,
                      color: Colors.black,
                    ),
                    title:
                        Text('Summary', style: TextStyle(color: Colors.black)),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                    title: Text('Information',
                        style: TextStyle(color: Colors.black)),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.workspace_premium,
                      color: Colors.black,
                    ),
                    title: Text('Workspaces',
                        style: TextStyle(color: Colors.black)),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    title:
                        Text('Setting', style: TextStyle(color: Colors.black)),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    title:
                        Text('Logout', style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ),

          // Main Content
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Rating Project Section
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.purple[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Top Rating Project',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Trending project and high rating\nProject Created by team.',
                            style: TextStyle(color: Colors.white),
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Learn More'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // All Projects and Top Creators Section
                  Row(
                    children: [
                      // All Projects
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF333466),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'All Projects',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading:
                                        Icon(Icons.book, color: Colors.white),
                                    title: Text(
                                      'Technology behind the Blockchain',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    subtitle: Text(
                                      'Project #$index • See project details',
                                      style: TextStyle(color: Colors.white54),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 20),

                      // Top Creators
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF333466),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Top Creators',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.person,
                                          color: Colors.black),
                                    ),
                                    title: Text(
                                      '@madison_c21',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    trailing: Text(
                                      '9621',
                                      style: TextStyle(color: Colors.white54),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Performance Chart
                  Container(
                    height: 200,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text('Performance Chart Placeholder')),
                  ),
                ],
              ),
            ),
          ),

          // Right Sidebar
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFF333466),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  // Calendar
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text('Calendar Placeholder')),
                  ),

                  SizedBox(height: 20),

                  // Today's Birthdays
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF4A4A72),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Today Birthday',
                          style: TextStyle(color: Colors.white),
                        ),
                        // Birthday List
                        ListTile(
                          leading: CircleAvatar(child: Icon(Icons.person)),
                          title: Text('Username',
                              style: TextStyle(color: Colors.white)),
                          trailing: Icon(Icons.cake, color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // Anniversary
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF4A4A72),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Anniversary',
                          style: TextStyle(color: Colors.white),
                        ),
                        // Anniversary List
                        ListTile(
                          leading: CircleAvatar(child: Icon(Icons.person)),
                          title: Text('Username',
                              style: TextStyle(color: Colors.white)),
                          trailing: Icon(Icons.favorite, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
