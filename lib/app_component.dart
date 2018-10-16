import 'package:angular/angular.dart';
import 'dart:async';
//import 'package:angular_forms/angular_forms.dart';

import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],
)

class AppComponent implements OnInit {
  final title = 'Hero Cats Tour';
  List<Hero> heroes;
  Hero selected;

  final HeroService _heroService;
  AppComponent(this._heroService);

  void ngOnInit() => _getHeroes();

  Future<void> _getHeroes() async {
//    Future.then() method, use with void:
//    _heroService.getAll().then((heroes) => this.heroes = heroes);
    heroes = await _heroService.getAll();
  }

  void onSelect(Hero hero) => selected = hero;

}
