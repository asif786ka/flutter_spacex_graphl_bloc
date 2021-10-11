import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagination_view/pagination_view.dart';

import '../../domain/entities/user.dart';
import '../bloc/home_bloc.dart';
import 'status_empty.dart';
import 'status_error.dart';

class UsersList extends StatelessWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => PaginationView<User>(
        itemBuilder: (context, location, index) => Card(
          margin: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(AntIcons.heat_map),
                ),
                title:  Row(
                    children: [
                      Text('UserName:', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      Text(location.name)
                    ])
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text('SpaceX Rocket Name:', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Expanded(child: Text(location.rocket != null ? location.rocket! : "No rocket data")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text('User ID:', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                      Expanded(child: Text(location.id)),
                    ],
                  ),
              ),
            ],
          ),
        ),
        pageFetch: context.read<HomeBloc>().getUsersInPage,
        onEmpty: StatusEmpty(),
        onError: (exception) => StatusError(exception: exception),
      ),
    );
  }
}
