import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libraryplus/theme.dart';
import 'package:libraryplus/widgets/home_book_items.dart';
import 'package:libraryplus/widgets/home_menu_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: backgroundColor2,
      statusBarIconBrightness: Brightness.light
));

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 185,
            decoration: BoxDecoration(
              color: backgroundColor2
),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/ic_profile.png')
),
                            ),
                          ),
                          SizedBox(width: 8,),
                          Row(
                            children: [
                              Text(
                                'Avid',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.notifications_outlined,
                        size: 32,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: textColor3,
                      ),
                      hintText: 'Book Search',
                      hintStyle: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)
),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)
)
),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MENU",
                  style: TextStyle(
                    color: backgroundColor2,
                    fontSize: 16,
                    fontWeight: FontWeight.w700, 
                  ),
                ),
                const SizedBox(height: 26,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeMenuItems(
                          icon: Icons.library_books_outlined, 
                          title: 'Pinjam\nBuku', 
                          color: Colors.blue
),
                        HomeMenuItems(
                          icon: Icons.menu_book_outlined, 
                          title: 'Pinjaman\nAktif', 
                          color: Colors.yellow
),
                        HomeMenuItems(
                          icon: Icons.book_rounded, 
                          title: 'Riwayat\nPinjaman', 
                          color: Colors.green
),
                        HomeMenuItems(
                          icon: Icons.meeting_room_outlined, 
                          title: 'Pinjam\nRuangan', 
                          color: Colors.red
),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeMenuItems(
                          icon: Icons.book_online_outlined, 
                          title: 'E-Book', 
                          color: Colors.deepPurple
),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rekomendasi Buku",
                  style: blackTextStyle.copyWith(
                    color: backgroundColor2,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: (){}, 
                  child: Text(
                    'Lihat Semua',
                    style: blackTextStyle.copyWith(
                      color: backgroundColor2,fontSize: 12
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeBookItems(
                  imageUrl: 'assets/img_book1.png', 
                  title: 'HARRY POTTER\nAND THE GOBLET FIRE'
                ),
                HomeBookItems(
                  imageUrl: 'assets/img_book1.png', 
                  title: 'HARRY POTTER\nAND THE GOBLET FIRE'
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),          
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: _selectedIndexNotifier, 
        builder: (context, value, child){
          return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.qr_code),
                label: 'QR',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            selectedLabelStyle: blackTextStyle.copyWith(
              color: backgroundColor2,
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelStyle: blackTextStyle.copyWith(
              color: backgroundColor2,
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
            currentIndex: value,
            selectedItemColor: backgroundColor2,
            onTap: _onItemTapped,
          );
        }
      ),
    );
  }
  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier<int>(0);

  void _onItemTapped(int index) {
    _selectedIndexNotifier.value = index;
  }
}


