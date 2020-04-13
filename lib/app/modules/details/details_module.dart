import 'package:router_outlet_example/app/modules/details/details_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:router_outlet_example/app/modules/details/details_page.dart';

class DetailsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailsBloc()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DetailsPage()),
      ];

  static Inject get to => Inject<DetailsModule>.of();
}
