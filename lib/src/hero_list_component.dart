import 'package:angular/angular.dart';
import 'dart:async';
//import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';
import 'mock_heroes.dart';
import 'hero_component.dart';
import 'hero_service.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  directives: [coreDirectives, HeroComponent],
)

class HeroListComponent implements OnInit {
  final title = 'Hero Cats Tour';
  List<Hero> heroes;
  Hero selected;

  final HeroService _heroService;
  HeroListComponent(this._heroService);

  void ngOnInit() => _getHeroes();

  Future<void> _getHeroes() async {
//    Future.then() method, use with void:
//    _heroService.getAll().then((heroes) => this.heroes = heroes);
    heroes = await _heroService.getAll();
  }

  void onSelect(Hero hero) => selected = hero;

}
