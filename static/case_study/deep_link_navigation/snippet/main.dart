void main() => runApp(MusicApp());

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DeepLinkMaterialApp(
    // This is where the magic happens
    navigation: Dispatcher()
      ..path<LibraryDL>(
        (route) => LibraryPage(),
        subNavigation: Dispatcher()
          ..value<Artist, ArtistDL>(
            (artist, route) => ArtistPage(artist: artist),
            subNavigation: (artist) => Dispatcher()
              ..song()
          )
          ..path<FavoritesDL>(
            (route) => FavoritesPage(),
            subNavigation: Dispatcher()
              ..song()
          )
          ..value<RouteNotFound, ErrorDL<RouteNotFound>>((exception, route) => ErrorPage(exception)),
      )
      // Exception handling mappings and route dispatchers are specified independently
      ..exception<RouteNotFound>((exception, route) => [LibraryDL(), ErrorDL<RouteNotFound>(exception)]),
    defaultRoute: [LibraryDL()],
    splashScreen: SplashPage(),
    // Non-navigation related fields are still available
    themeMode: ThemeMode.light,
  );
}

/// Reusing code through static extension methods.
extension DispatcherExtensions on Dispatcher {
  void song() => value<Song, SongDL>((song, route) => SongPage(song: song));
}