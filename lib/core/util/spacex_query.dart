mixin SpaceXQuery {
  static String launchQuery = '''
  query (\$limit: Int!) {
  launchesPast(limit: \$limit) {
    mission_name
    launch_date_utc
    rocket {
      rocket_name
      rocket_type
    }
    links {
      flickr_images
    }
  }
}
  ''';

  static String usersQuery = '''
  query users {
    users {
      id
      name
      rocket
      twitter
    }
  }
  ''';
}
