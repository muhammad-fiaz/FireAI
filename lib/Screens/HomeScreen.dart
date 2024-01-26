import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          SizedBox(width: 16),
          _buildGetPlusButton(),
          SizedBox(width: 16),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Implement your edit logic here
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Implement your more options logic here
            },
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/android/res/drawable-hdpi/image_4_modified.png',
                width: 150,
                height: 150,
              ),
            ),
          ),
          SizedBox(height: 16),
          _buildTextArea(),
          SizedBox(height: 16),
          Text(
            'Fire AI may make Mistakes. Consider checking the info ',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildGetPlusButton() {
    return ElevatedButton.icon(
      onPressed: () {
        // Implement your logic for the "Get Plus" button
      },
      icon: Icon(Icons.add),
      label: Text('Get Plus'),
    );
  }
  Widget _buildTextArea() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  maxLines: null, // Allows the text area to expand as needed
                  decoration: InputDecoration(
                    hintText: 'Type here...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 8.0,
              child: IconButton(
                icon: Icon(Icons.add, color: Colors.grey),
                onPressed: () {
                  // Implement your add logic here
                },
              ),
            ),
            Positioned(
              right: 8.0,
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  // Implement your send logic here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


  }




class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final List<String> tabs = [
    'Tab 1',
    'Tab 2',
    'Tab 3',
    'Tab 4',
    'Tab 5',
    'Tab 6',
    'Tab 7',
    'Tab 8',
    'Tab 9',
    'Tab 10'
  ]; // Add more tabs if needed
  late List<String> filteredTabs;

  @override
  void initState() {
    super.initState();
    filteredTabs = List.from(tabs);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _buildSearchBar(),
          ListTile(
            title: ElevatedButton.icon(
              onPressed: () {
                _createNewChat(context);
              },
              icon: Icon(Icons.chat),
              label: Text('New Chat'),
              style: ElevatedButton.styleFrom(
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (String tab in filteredTabs)
                    ListTile(
                      title: Text(tab),
                      onTap: () {
                        _navigateToConversationHistory(context, tab);
                      },
                    ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16), // Add margin above the account section
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            leading: CircleAvatar(
              // Replace with user's profile image
              backgroundImage: AssetImage('assets/android/res/drawable-hdpi/image_4_modified.png'),
            ),
            title: Text('John Doe'), // Replace with user's name
            trailing: Icon(Icons.more_horiz), // Replace with three dots icon
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            onChanged: (value) {
              setState(() {
                filteredTabs = tabs
                    .where((tab) => tab.toLowerCase().contains(value.toLowerCase()))
                    .toList();
              });
            },
            decoration: InputDecoration(
              hintText: 'Search Tabs',
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  void _createNewChat(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('New Chat'),
          content: Text('Implement your logic to create a new chat here.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _navigateToConversationHistory(BuildContext context, String tab) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Navigate to $tab'),
          content: Text('Implement your logic to navigate to $tab here.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
