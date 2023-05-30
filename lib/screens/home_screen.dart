import 'package:flutter/material.dart';
import '../models/menu_item.dart';
import '../widgets/menu_list.dart';
import '../widgets/message_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MenuItem> menuItemList = [];

  void setMenuItemList() {
    menuItemList.add(MenuItem(
      item: 'coffee',
      itemName: '아이스 아메리카노',
      price: 1500,
    ));
    menuItemList.add(MenuItem(
      item: 'orange',
      itemName: '오렌지 쥬스',
      price: 2500,
    ));
    menuItemList.add(MenuItem(
      item: 'milkTea',
      itemName: '밀크 티',
      price: 2000,
    ));
    menuItemList.add(MenuItem(
      item: 'coffee',
      itemName: '아이스 아메리카노',
      price: 1500,
    ));
    menuItemList.add(MenuItem(
      item: 'milkTea',
      itemName: '밀크 티',
      price: 2000,
    ));
    menuItemList.add(MenuItem(
      item: 'orange',
      itemName: '오렌지 쥬스',
      price: 2500,
    ));
    menuItemList.add(MenuItem(
      item: 'coffee',
      itemName: '아이스 아메리카노',
      price: 1500,
    ));
    menuItemList.add(MenuItem(
      item: 'milkTea',
      itemName: '밀크 티',
      price: 2000,
    ));
    menuItemList.add(MenuItem(
      item: 'orange',
      itemName: '오렌지 쥬스',
      price: 2500,
    ));
    menuItemList.add(MenuItem(
      item: 'coffee',
      itemName: '아이스 아메리카노',
      price: 1500,
    ));
    menuItemList.add(MenuItem(
      item: 'milkTea',
      itemName: '밀크 티',
      price: 2000,
    ));
    menuItemList.add(MenuItem(
      item: 'coffee',
      itemName: '아이스 아메리카노',
      price: 1500,
    ));
  }

  @override
  Widget build(BuildContext context) {
    setMenuItemList();

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
              indicatorColor: Colors.black12,
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
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (var menuItem in menuItemList)
                            MenuList(
                              menuItem: menuItem,
                            ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Order',
            ),
          ],
        ),
      ),
    );
  }
}
