import 'package:e_commerce_app/Utils_/Routes/Routes_name.dart';
import 'package:e_commerce_app/view_Model/E_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List _pages = [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<EProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.purple[200],
        shadowColor: Colors.grey,
        elevation: 10.0,
        width: 280.w,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            // DrawerButton(

            //   color: Colors.white,
            //   onPressed: (){
            //     Navigator.pop(context);
            //   },
            // ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12.r),
              ),

              currentAccountPicture: GestureDetector(
                onTap: () {
                  pro.get_image();
                },
                child: CircleAvatar(
                  backgroundImage:
                      pro.image != null ? FileImage(pro.image!) : null,
                  child:
                      // ignore: unnecessary_null_comparison
                      pro.selected == null
                          ? Icon(
                            Icons.add_a_photo_sharp,
                            color: Colors.blue,
                            size: 30.sp,
                          )
                          : null,
                ),
              ),
              accountName: Text('Gulshid Zada'),
              accountEmail: Text('gulshidzada123@gmail.com'),
            ),
            DrawerHeader(child: Icon(Icons.bar_chart, color: Colors.green)),

            ListTile(
              // trailing: Icon(Icons.home, color: Colors.blueAccent,),
              title: Text('H o m e', style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.home, color: Colors.blueAccent),
              onTap: () {
                Navigator.pushReplacementNamed(context, RoutesName.page2);
              },
            ),

            ListTile(
              // trailing: Icon(Icons.home, color: Colors.blueAccent,),
              title: Text('S e a r c h', style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.search, color: Colors.blueAccent),
              onTap: () {
                Navigator.pushReplacementNamed(context, RoutesName.page2);
              },
            ),

            ListTile(
              // trailing: Icon(Icons.home, color: Colors.blueAccent,),
              title: Text(
                'F a v o u r i t e',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.favorite, color: Colors.blueAccent),
              onTap: () {
                Navigator.pushReplacementNamed(context, RoutesName.page2);
              },
            ),

            ListTile(
              // trailing: Icon(Icons.home, color: Colors.blueAccent,),
              title: Text('P e r s o n', style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.person, color: Colors.blueAccent),
              onTap: () {
                Navigator.pushReplacementNamed(context, RoutesName.page2);
              },
            ),

            ListTile(
              // trailing: Icon(Icons.home, color: Colors.blueAccent,),
              title: Text(' S h o p', style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.shopify_outlined, color: Colors.blueAccent),
              onTap: () {
                Navigator.pushReplacementNamed(context, RoutesName.page2);
              },
            ),
          ],
        ),
      ),
      body: _pages[pro.selected],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: pro.selected,
          onTap: (index) {
            pro.Change_Selected(index);
          },
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.indigoAccent,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 10.0,
          // backgroundColor: Colors.greenAccent,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.brown,
              icon: Icon(Icons.home, color: Colors.blue),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.lightGreen,
              icon: Icon(Icons.search, color: Colors.amber),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.deepPurpleAccent,
              icon: Icon(Icons.favorite_rounded, color: Colors.indigo),
              label: 'Fav',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.lightBlueAccent),
              label: 'Person',
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Home Screen", style: TextStyle(fontSize: 24, color: Colors.red)));
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Search Screen", style: TextStyle(fontSize: 24, color: Colors.blueAccent)));
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Cart Screen", style: TextStyle(fontSize: 24, color: Colors.black)));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile Screen", style: TextStyle(fontSize: 24, color: Colors.amber)),
    );
  }
}
