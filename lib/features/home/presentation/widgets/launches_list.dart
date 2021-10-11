import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterspacexlatest/features/home/presentation/pages/launch_detail_arguments.dart';
import 'package:flutterspacexlatest/routes/route_constants.dart';
import 'package:pagination_view/pagination_view.dart';
import '../../domain/entities/launch.dart';
import '../bloc/home_bloc.dart';
import 'status_empty.dart';
import 'status_error.dart';

class LaunchesList extends StatelessWidget {
  const LaunchesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => PaginationView<Launch>(
        itemBuilder: (context, character, index) => Card(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Container(
              height: MediaQuery.of(context).size.height/3,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        RouteList.launchDetail,
                        arguments: LaunchDetailArguments(character),
                      );
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height/4,
                          width: MediaQuery.of(context).size.height/3,
                          child: character.links.flickr_images!.isEmpty
                              ? CachedNetworkImage(
                            imageUrl: "https://via.placeholder.com/300",
                            fit: BoxFit.cover,
                          )
                              : CachedNetworkImage(
                                  imageUrl: character.links.flickr_images!.first,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: ListTile(
                      /*leading: CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(character.links.flickr_images!.first),
                      ),*/

                      leading: character.links.flickr_images!.isEmpty
                          ? Icon(Icons.error)
                          : CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            character.links.flickr_images!.first),
                      ),
                      title: Text(character.mission_name),
                      subtitle: Text(character.rocket.rocket_name),
                      trailing: Text(character.rocket.rocket_type),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        RouteList.launchDetail,
                        arguments: LaunchDetailArguments(character),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        pageFetch: context.read<HomeBloc>().getLaunchesInPage,
        onEmpty: StatusEmpty(),
        onError: (exception) => StatusError(exception: exception),
      ),
    );
  }
}
