import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/hero_service.dart';
import 'src/hero_list_component.dart';
import 'src/routes.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
//  styleUrls: ['app_component.css'],
  directives: [routerDirectives],
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths, Routes]
)

class AppComponent {
  final title = 'Hero Cats Tour';
//  List<Hero> heroes;
//  Hero selected;
//
//  final HeroService _heroService;
//  AppComponent(this._heroService);
//
//  void ngOnInit() => _getHeroes();
//
//  Future<void> _getHeroes() async {
////    Future.then() method, use with void:
////    _heroService.getAll().then((heroes) => this.heroes = heroes);
//    heroes = await _heroService.getAll();
//  }
//
//  void onSelect(Hero hero) => selected = hero;

}
