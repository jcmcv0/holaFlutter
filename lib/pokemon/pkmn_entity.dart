/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

// PkmnEntity pkmnEntityFromJson(String str) => PkmnEntity.fromJson(json.decode(str));
//
// String pkmnEntityToJson(PkmnEntity data) => json.encode(data.toJson());

class PkmnEntity {
    PkmnEntity({
        required this.cries,
        required this.locationAreaEncounters,
        required this.types,
        required this.baseExperience,
        required this.heldItems,
        required this.weight,
        required this.isDefault,
        required this.pastTypes,
        required this.sprites,
        required this.pastAbilities,
        required this.abilities,
        required this.gameIndices,
        required this.species,
        required this.stats,
        required this.moves,
        required this.name,
        required this.id,
        required this.forms,
        required this.height,
        required this.order,
    });

    Cries cries;
    String locationAreaEncounters;
    List<Type> types;
    int baseExperience;
    List<dynamic> heldItems;
    int weight;
    bool isDefault;
    List<dynamic> pastTypes;
    Sprites sprites;
    List<dynamic> pastAbilities;
    List<Ability> abilities;
    List<GameIndex> gameIndices;
    Species species;
    List<Stat> stats;
    List<Move> moves;
    String name;
    int id;
    List<Species> forms;
    int height;
    int order;

    factory PkmnEntity.fromJson(Map<dynamic, dynamic> json) => PkmnEntity(
        cries: Cries.fromJson(json["cries"]),
        locationAreaEncounters: json["location_area_encounters"],
        types: List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
        baseExperience: json["base_experience"],
        heldItems: List<dynamic>.from(json["held_items"].map((x) => x)),
        weight: json["weight"],
        isDefault: json["is_default"],
        pastTypes: List<dynamic>.from(json["past_types"].map((x) => x)),
        sprites: Sprites.fromJson(json["sprites"]),
        pastAbilities: List<dynamic>.from(json["past_abilities"].map((x) => x)),
        abilities: List<Ability>.from(json["abilities"].map((x) => Ability.fromJson(x))),
        gameIndices: List<GameIndex>.from(json["game_indices"].map((x) => GameIndex.fromJson(x))),
        species: Species.fromJson(json["species"]),
        stats: List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
        moves: List<Move>.from(json["moves"].map((x) => Move.fromJson(x))),
        name: json["name"],
        id: json["id"],
        forms: List<Species>.from(json["forms"].map((x) => Species.fromJson(x))),
        height: json["height"],
        order: json["order"],
    );

    Map<dynamic, dynamic> toJson() => {
        "cries": cries.toJson(),
        "location_area_encounters": locationAreaEncounters,
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
        "base_experience": baseExperience,
        "held_items": List<dynamic>.from(heldItems.map((x) => x)),
        "weight": weight,
        "is_default": isDefault,
        "past_types": List<dynamic>.from(pastTypes.map((x) => x)),
        "sprites": sprites.toJson(),
        "past_abilities": List<dynamic>.from(pastAbilities.map((x) => x)),
        "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
        "game_indices": List<dynamic>.from(gameIndices.map((x) => x.toJson())),
        "species": species.toJson(),
        "stats": List<dynamic>.from(stats.map((x) => x.toJson())),
        "moves": List<dynamic>.from(moves.map((x) => x.toJson())),
        "name": name,
        "id": id,
        "forms": List<dynamic>.from(forms.map((x) => x.toJson())),
        "height": height,
        "order": order,
    };
}

class Ability {
    Ability({
        required this.isHidden,
        required this.ability,
        required this.slot,
    });

    bool isHidden;
    Species ability;
    int slot;

    factory Ability.fromJson(Map<dynamic, dynamic> json) => Ability(
        isHidden: json["is_hidden"],
        ability: Species.fromJson(json["ability"]),
        slot: json["slot"],
    );

    Map<dynamic, dynamic> toJson() => {
        "is_hidden": isHidden,
        "ability": ability.toJson(),
        "slot": slot,
    };
}

class Species {
    Species({
        required this.name,
        required this.url,
    });

    String name;
    String url;

    factory Species.fromJson(Map<dynamic, dynamic> json) => Species(
        name: json["name"],
        url: json["url"],
    );

    Map<dynamic, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}

class Cries {
    Cries({
        required this.legacy,
        required this.latest,
    });

    String legacy;
    String latest;

    factory Cries.fromJson(Map<dynamic, dynamic> json) => Cries(
        legacy: json["legacy"],
        latest: json["latest"],
    );

    Map<dynamic, dynamic> toJson() => {
        "legacy": legacy,
        "latest": latest,
    };
}

class GameIndex {
    GameIndex({
        required this.gameIndex,
        required this.version,
    });

    int gameIndex;
    Species version;

    factory GameIndex.fromJson(Map<dynamic, dynamic> json) => GameIndex(
        gameIndex: json["game_index"],
        version: Species.fromJson(json["version"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "game_index": gameIndex,
        "version": version.toJson(),
    };
}

class Move {
    Move({
        required this.versionGroupDetails,
        required this.move,
    });

    List<VersionGroupDetail> versionGroupDetails;
    Species move;

    factory Move.fromJson(Map<dynamic, dynamic> json) => Move(
        versionGroupDetails: List<VersionGroupDetail>.from(json["version_group_details"].map((x) => VersionGroupDetail.fromJson(x))),
        move: Species.fromJson(json["move"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "version_group_details": List<dynamic>.from(versionGroupDetails.map((x) => x.toJson())),
        "move": move.toJson(),
    };
}

class VersionGroupDetail {
    VersionGroupDetail({
        required this.levelLearnedAt,
        required this.versionGroup,
        required this.moveLearnMethod,
        this.order,
    });

    int levelLearnedAt;
    Species versionGroup;
    Species moveLearnMethod;
    int? order;

    factory VersionGroupDetail.fromJson(Map<dynamic, dynamic> json) => VersionGroupDetail(
        levelLearnedAt: json["level_learned_at"],
        versionGroup: Species.fromJson(json["version_group"]),
        moveLearnMethod: Species.fromJson(json["move_learn_method"]),
        order: json["order"],
    );

    Map<dynamic, dynamic> toJson() => {
        "level_learned_at": levelLearnedAt,
        "version_group": versionGroup.toJson(),
        "move_learn_method": moveLearnMethod.toJson(),
        "order": order,
    };
}

class Sprites {
    Sprites({
        required this.other,
        required this.backDefault,
        required this.frontDefault,
        required this.versions,
        required this.backShiny,
        required this.frontShiny,
    });

    Other other;
    String backDefault;
    String frontDefault;
    Versions versions;
    String backShiny;
    String frontShiny;

    factory Sprites.fromJson(Map<dynamic, dynamic> json) => Sprites(
        other: Other.fromJson(json["other"]),
        backDefault: json["back_default"],
        frontDefault: json["front_default"],
        versions: Versions.fromJson(json["versions"]),
        backShiny: json["back_shiny"],
        frontShiny: json["front_shiny"],
    );

    Map<dynamic, dynamic> toJson() => {
        "other": other.toJson(),
        "back_default": backDefault,
        "front_default": frontDefault,
        "versions": versions.toJson(),
        "back_shiny": backShiny,
        "front_shiny": frontShiny,
    };
}

class Other {
    Other({
        required this.dreamWorld,
        required this.showdown,
        required this.officialArtwork,
        required this.home,
    });

    DreamWorld dreamWorld;
    Showdown showdown;
    Home officialArtwork;
    Home home;

    factory Other.fromJson(Map<dynamic, dynamic> json) => Other(
        dreamWorld: DreamWorld.fromJson(json["dream_world"]),
        showdown: Showdown.fromJson(json["showdown"]),
        officialArtwork: Home.fromJson(json["official-artwork"]),
        home: Home.fromJson(json["home"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "dream_world": dreamWorld.toJson(),
        "showdown": showdown.toJson(),
        "official-artwork": officialArtwork.toJson(),
        "home": home.toJson(),
    };
}

class DreamWorld {
    DreamWorld({
        required this.frontDefault,
    });

    String frontDefault;

    factory DreamWorld.fromJson(Map<dynamic, dynamic> json) => DreamWorld(
        frontDefault: json["front_default"],
    );

    Map<dynamic, dynamic> toJson() => {
        "front_default": frontDefault,
    };
}

class Home {
    Home({
        required this.frontDefault,
        required this.frontShiny,
    });

    String frontDefault;
    String frontShiny;

    factory Home.fromJson(Map<dynamic, dynamic> json) => Home(
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
    );

    Map<dynamic, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_shiny": frontShiny,
    };
}

class Showdown {
    Showdown({
        required this.backDefault,
        required this.frontDefault,
        required this.backShiny,
        required this.frontShiny,
        this.frontTransparent,
        this.animated,
    });

    String backDefault;
    String frontDefault;
    String backShiny;
    String frontShiny;
    String? frontTransparent;
    Showdown? animated;

    factory Showdown.fromJson(Map<dynamic, dynamic> json) => Showdown(
        backDefault: json["back_default"],
        frontDefault: json["front_default"],
        backShiny: json["back_shiny"],
        frontShiny: json["front_shiny"],
        frontTransparent: json["front_transparent"],
        animated: json["animated"] == null ? null : Showdown.fromJson(json["animated"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "back_default": backDefault,
        "front_default": frontDefault,
        "back_shiny": backShiny,
        "front_shiny": frontShiny,
        "front_transparent": frontTransparent,
        "animated": animated?.toJson(),
    };
}

class Versions {
    Versions({
        required this.generationIii,
        required this.generationIi,
        required this.generationV,
        required this.generationIv,
        required this.generationVii,
        required this.generationI,
        required this.generationViii,
        required this.generationVi,
    });

    GenerationIii generationIii;
    GenerationIi generationIi;
    GenerationV generationV;
    GenerationIv generationIv;
    GenerationVii generationVii;
    GenerationI generationI;
    GenerationViii generationViii;
    Map<String, Home> generationVi;

    factory Versions.fromJson(Map<dynamic, dynamic> json) => Versions(
        generationIii: GenerationIii.fromJson(json["generation-iii"]),
        generationIi: GenerationIi.fromJson(json["generation-ii"]),
        generationV: GenerationV.fromJson(json["generation-v"]),
        generationIv: GenerationIv.fromJson(json["generation-iv"]),
        generationVii: GenerationVii.fromJson(json["generation-vii"]),
        generationI: GenerationI.fromJson(json["generation-i"]),
        generationViii: GenerationViii.fromJson(json["generation-viii"]),
        generationVi: Map.from(json["generation-vi"]).map((k, v) => MapEntry<String, Home>(k, Home.fromJson(v))),
    );

    Map<dynamic, dynamic> toJson() => {
        "generation-iii": generationIii.toJson(),
        "generation-ii": generationIi.toJson(),
        "generation-v": generationV.toJson(),
        "generation-iv": generationIv.toJson(),
        "generation-vii": generationVii.toJson(),
        "generation-i": generationI.toJson(),
        "generation-viii": generationViii.toJson(),
        "generation-vi": Map.from(generationVi).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class GenerationI {
    GenerationI({
        required this.yellow,
        required this.redBlue,
    });

    RedBlue yellow;
    RedBlue redBlue;

    factory GenerationI.fromJson(Map<dynamic, dynamic> json) => GenerationI(
        yellow: RedBlue.fromJson(json["yellow"]),
        redBlue: RedBlue.fromJson(json["red-blue"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "yellow": yellow.toJson(),
        "red-blue": redBlue.toJson(),
    };
}

class RedBlue {
    RedBlue({
        required this.frontGray,
        required this.backTransparent,
        required this.backDefault,
        required this.backGray,
        required this.frontDefault,
        required this.frontTransparent,
    });

    String frontGray;
    String backTransparent;
    String backDefault;
    String backGray;
    String frontDefault;
    String frontTransparent;

    factory RedBlue.fromJson(Map<dynamic, dynamic> json) => RedBlue(
        frontGray: json["front_gray"],
        backTransparent: json["back_transparent"],
        backDefault: json["back_default"],
        backGray: json["back_gray"],
        frontDefault: json["front_default"],
        frontTransparent: json["front_transparent"],
    );

    Map<dynamic, dynamic> toJson() => {
        "front_gray": frontGray,
        "back_transparent": backTransparent,
        "back_default": backDefault,
        "back_gray": backGray,
        "front_default": frontDefault,
        "front_transparent": frontTransparent,
    };
}

class GenerationIi {
    GenerationIi({
        required this.gold,
        required this.crystal,
        required this.silver,
    });

    Showdown gold;
    Crystal crystal;
    Showdown silver;

    factory GenerationIi.fromJson(Map<dynamic, dynamic> json) => GenerationIi(
        gold: Showdown.fromJson(json["gold"]),
        crystal: Crystal.fromJson(json["crystal"]),
        silver: Showdown.fromJson(json["silver"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "gold": gold.toJson(),
        "crystal": crystal.toJson(),
        "silver": silver.toJson(),
    };
}

class Crystal {
    Crystal({
        required this.backTransparent,
        required this.backShinyTransparent,
        required this.backDefault,
        required this.frontDefault,
        required this.frontTransparent,
        required this.frontShinyTransparent,
        required this.backShiny,
        required this.frontShiny,
    });

    String backTransparent;
    String backShinyTransparent;
    String backDefault;
    String frontDefault;
    String frontTransparent;
    String frontShinyTransparent;
    String backShiny;
    String frontShiny;

    factory Crystal.fromJson(Map<dynamic, dynamic> json) => Crystal(
        backTransparent: json["back_transparent"],
        backShinyTransparent: json["back_shiny_transparent"],
        backDefault: json["back_default"],
        frontDefault: json["front_default"],
        frontTransparent: json["front_transparent"],
        frontShinyTransparent: json["front_shiny_transparent"],
        backShiny: json["back_shiny"],
        frontShiny: json["front_shiny"],
    );

    Map<dynamic, dynamic> toJson() => {
        "back_transparent": backTransparent,
        "back_shiny_transparent": backShinyTransparent,
        "back_default": backDefault,
        "front_default": frontDefault,
        "front_transparent": frontTransparent,
        "front_shiny_transparent": frontShinyTransparent,
        "back_shiny": backShiny,
        "front_shiny": frontShiny,
    };
}

class GenerationIii {
    GenerationIii({
        required this.fireredLeafgreen,
        required this.rubySapphire,
        required this.emerald,
    });

    Showdown fireredLeafgreen;
    Showdown rubySapphire;
    Home emerald;

    factory GenerationIii.fromJson(Map<dynamic, dynamic> json) => GenerationIii(
        fireredLeafgreen: Showdown.fromJson(json["firered-leafgreen"]),
        rubySapphire: Showdown.fromJson(json["ruby-sapphire"]),
        emerald: Home.fromJson(json["emerald"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "firered-leafgreen": fireredLeafgreen.toJson(),
        "ruby-sapphire": rubySapphire.toJson(),
        "emerald": emerald.toJson(),
    };
}

class GenerationIv {
    GenerationIv({
        required this.platinum,
        required this.diamondPearl,
        required this.heartgoldSoulsilver,
    });

    Showdown platinum;
    Showdown diamondPearl;
    Showdown heartgoldSoulsilver;

    factory GenerationIv.fromJson(Map<dynamic, dynamic> json) => GenerationIv(
        platinum: Showdown.fromJson(json["platinum"]),
        diamondPearl: Showdown.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver: Showdown.fromJson(json["heartgold-soulsilver"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "platinum": platinum.toJson(),
        "diamond-pearl": diamondPearl.toJson(),
        "heartgold-soulsilver": heartgoldSoulsilver.toJson(),
    };
}

class GenerationV {
    GenerationV({
        required this.blackWhite,
    });

    Showdown blackWhite;

    factory GenerationV.fromJson(Map<dynamic, dynamic> json) => GenerationV(
        blackWhite: Showdown.fromJson(json["black-white"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "black-white": blackWhite.toJson(),
    };
}

class GenerationVii {
    GenerationVii({
        required this.icons,
        required this.ultraSunUltraMoon,
    });

    DreamWorld icons;
    Home ultraSunUltraMoon;

    factory GenerationVii.fromJson(Map<dynamic, dynamic> json) => GenerationVii(
        icons: DreamWorld.fromJson(json["icons"]),
        ultraSunUltraMoon: Home.fromJson(json["ultra-sun-ultra-moon"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "icons": icons.toJson(),
        "ultra-sun-ultra-moon": ultraSunUltraMoon.toJson(),
    };
}

class GenerationViii {
    GenerationViii({
        required this.icons,
    });

    DreamWorld icons;

    factory GenerationViii.fromJson(Map<dynamic, dynamic> json) => GenerationViii(
        icons: DreamWorld.fromJson(json["icons"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "icons": icons.toJson(),
    };
}

class Stat {
    Stat({
        required this.stat,
        required this.baseStat,
        required this.effort,
    });

    Species stat;
    int baseStat;
    int effort;

    factory Stat.fromJson(Map<dynamic, dynamic> json) => Stat(
        stat: Species.fromJson(json["stat"]),
        baseStat: json["base_stat"],
        effort: json["effort"],
    );

    Map<dynamic, dynamic> toJson() => {
        "stat": stat.toJson(),
        "base_stat": baseStat,
        "effort": effort,
    };
}

class Type {
    Type({
        required this.slot,
        required this.type,
    });

    int slot;
    Species type;

    factory Type.fromJson(Map<dynamic, dynamic> json) => Type(
        slot: json["slot"],
        type: Species.fromJson(json["type"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "slot": slot,
        "type": type.toJson(),
    };
}
