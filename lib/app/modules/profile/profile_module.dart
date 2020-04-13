import 'package:router_outlet_example/app/modules/profile/profile_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:router_outlet_example/app/modules/profile/profile_page.dart';

class ProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProfileBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ProfilePage()),
      ];

  static Inject get to => Inject<ProfileModule>.of();
}
