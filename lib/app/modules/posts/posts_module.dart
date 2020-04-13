import 'package:flutter_modular/flutter_modular.dart';

import 'posts_bloc.dart';
import 'posts_page.dart';

class PostsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PostsBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PostsPage()),
      ];

  static Inject get to => Inject<PostsModule>.of();
}
