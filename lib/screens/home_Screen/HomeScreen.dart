import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/screens/home_Screen/widgets/my_drawer.dart';
import 'package:foodpanda/screens/home_Screen/widgets/resturant_card.dart';
import 'package:foodpanda/widgets/my_app_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MyDrawer(parentContext: context,),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          MyAppBar(
            title: "lp.isCurrent",
            subtitle: "lp",
            onTap: (){},
            leadingIcon: Builder(
              builder: (context) {
                return IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                );
              },),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.grey[200],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Popular Resturants',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: height * 0.3,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index){
                            return Row(
                              children: [
                                SizedBox(
                                  width: index == 0 ? 15 : 0,
                                ),
                                GestureDetector(
                                  onTap: (){},
                                  child: ResturantCard(),
                                ),
                              ],
                            );
                          },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
