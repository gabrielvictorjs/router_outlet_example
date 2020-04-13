import 'package:flutter_modular/flutter_modular.dart';

import '../posts/posts_module.dart';
import 'initial_bloc.dart';
import 'initial_page.dart';

class InitialModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => InitialBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => InitialPage()),
        Router('/posts', module: PostsModule()),
      ];

  static Inject get to => Inject<InitialModule>.of();
}
