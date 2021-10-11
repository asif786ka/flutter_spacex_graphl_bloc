import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/launches_list.dart';
import '../widgets/users_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => Scaffold(
        appBar: MyAppBar(),
        body: _getScreenFromIndex(state.selectedIndex),
        bottomNavigationBar: BottomNavBar(
          selectedIndex: state.selectedIndex,
          onItemSelected: (index) =>
              context.read<HomeBloc>().add(HomeEvent.itemSelected(index)),
          items: [
            BottomNavBarItem(
              textAlign: TextAlign.center,
              icon: Icon(AntIcons.rocket),
              title: Text('Launches'),
            ),
            BottomNavBarItem(
              textAlign: TextAlign.center,
              icon: Icon(AntIcons.home),
              title: Text('Users'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getScreenFromIndex(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return LaunchesList();
      case 1:
        return UsersList();
      default:
        return LaunchesList();
    }
  }
}
