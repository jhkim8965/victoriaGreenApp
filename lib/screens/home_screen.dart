import 'package:flutter/material.dart';
import '../widgets/message_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: const Text(
            'Dessert Home',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 1.0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: <Widget>() {
                return showDialog(
                  context: context,
                  //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return const MessageDialog(
                      title: Text('Menu Title - re'),
                      message: Text('Menu List'),
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: Column(
          children: [
            const TabBar(
              indicatorColor: Colors.red,
              tabs: [
                Tab(
                  child: Text(
                    '111',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    '222',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.orange,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
