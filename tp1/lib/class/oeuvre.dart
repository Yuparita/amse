
class Oeuvre {
  Oeuvre ({
    required this.nom,
    required this.description,
    required this.imageSource,
    required this.genre,
  }) ;

  final String imageSource;
  final String nom;
  final String description;
  final String genre;
  bool liked = false;
  int index=-1;

  void toggleLike(){
    liked = !liked;
    }
}

List<Oeuvre> getListOeuvre(){
  var listOeuvre= [
  Oeuvre(
    imageSource: 'asset/0utfgdj8.png',
    description: 'Rêves Mécaniques est une anthologie animée qui transporte les spectateurs à travers des mondes variés et imaginatifs. Chaque épisode est une porte ouverte sur un univers unique, explorant des thèmes profonds tels que la technologie, la nature, et l\'humanité. Les histoires sont visuellement époustouflantes, mêlant différents styles d\'animation pour créer une expérience immersive et mémorable. Des robots philosophes aux paysages oniriques, cette série est une véritable invitation à la rêverie et à la réflexion.',
    nom: 'Rêves Mécaniques',
    genre: 'Séries'
  ),
  Oeuvre(
    imageSource: 'asset/1pnooya8.png',
    description: 'L\'Enquêteur Masqué raconte l\'histoire d\'un détective brillant mais énigmatique, plongé dans un mystère complexe et insondable. Son talent pour résoudre les énigmes les plus obscures est mis à l\'épreuve lorsqu\'il se retrouve face à une série de crimes qui défient toute logique. Chaque indice le rapproche de la vérité, mais aussi du danger. Dans une ville où les secrets sont monnaie courante, il doit naviguer entre les mensonges et les trahisons pour démasquer le coupable et révéler les sombres vérités qui se cachent derrière cette affaire.',
    nom: 'L’Enquêteur Masqué',
    genre: 'Bande dessinée'
  ),
  Oeuvre(
    imageSource: 'asset/2lw6pgg9.png',
    description: 'Les Rouages du Temps est un livre captivant qui explore les mystères du voyage dans le temps à travers une horloge énigmatique. Le protagoniste découvre un artefact ancien qui lui permet de se déplacer à différentes époques, mais chaque voyage a des conséquences inattendues. Il doit apprendre à maîtriser cet outil puissant tout en évitant de perturber le cours de l\'histoire. Entre paradoxes temporels et rencontres avec des personnages historiques, cette aventure le mènera à remettre en question sa propre existence et la nature du temps lui-même.',
    nom: 'Les Rouages du Temps',
    genre: 'Livres'
  ),
  Oeuvre(
    imageSource: 'asset/7xyfl3uu.png',
    description: 'Les Ombres du Passé est un roman noir intense où la vengeance prend une tournure fatale. Le protagoniste, hanté par un traumatisme ancien, se lance dans une quête de justice qui le mènera aux confins de la moralité. Chaque pas le rapproche de son objectif, mais aussi de la destruction. Dans une ville corrompue où les frontières entre le bien et le mal sont floues, il devra affronter ses propres démons et faire des choix difficiles. Entre suspense et rebondissements, ce récit explore les thèmes de la culpabilité, de la rédemption et des conséquences de nos actions.',
    nom: 'Les Ombres du Passé',
    genre: 'Livres'
  ),
  Oeuvre(
    imageSource: 'asset/8asz39bp.png',
    description: 'Les Cendres de l\'Apocalypse est une série poignante qui retrace un drame historique avec une intensité remarquable. La reconstitution minutieuse des événements nous plonge au cœur d\'une période sombre et tumultueuse, où les personnages luttent pour leur survie et leur humanité. Les acteurs livrent des performances émouvantes, donnant vie à des destins croisés et des histoires bouleversantes. Entre espoir et désespoir, cette série nous rappelle les horreurs de la guerre et la force de l\'esprit humain face à l\'adversité. Un récit poignant qui ne laisse pas indifférent et qui invite à la réflexion sur notre passé et notre présent.',
    nom: 'Les Cendres de l’Apocalypse',
    genre: 'Séries'
  ),
  Oeuvre(
    imageSource: 'asset/09qx3i8a.png',
    description: 'Chroniques de l\'Abîme est un livre qui nous emmène dans un voyage fascinant à la découverte de cités oubliées et de civilisations méconnues. L\'auteur explore des lieux mystérieux et des légendes anciennes, nous révélant les secrets de peuples disparus. Chaque chapitre est une plongée dans un monde différent, avec ses propres coutumes, ses croyances et ses défis. Entre aventures et découvertes, ce récit nous invite à réfléchir sur notre propre histoire et sur la diversité des cultures qui ont façonné notre monde. Un livre captivant qui stimule l\'imagination et l\'envie d\'explorer les mystères de notre passé.',
    nom: 'Chroniques de l’Abîme',
    genre: 'Livres'
  ),
  Oeuvre(
    imageSource: 'asset/9yipbu19.png',
    description: 'Paroles du Passé est un recueil de sagesses anciennes qui offre une perspective unique sur notre époque. Les textes, issus de différentes cultures et époques, abordent des thèmes universels tels que l\'amour, la sagesse, la justice et le sens de la vie. Chaque citation est une invitation à la réflexion et à la méditation, nous aidant à mieux comprendre les défis de notre temps et à trouver des réponses à nos propres questions. Entre philosophie et spiritualité, ce livre nous offre un éclairage précieux sur les valeurs qui transcendent les époques et les cultures. Un trésor de sagesse à consulter et à méditer.',
    nom: 'Paroles du Passé',
    genre: 'Livres'
  ),
  Oeuvre(
    imageSource: 'asset/40dzdyla.png',
    description: 'Les Lucioles Perdues est un film poignant qui raconte l\'histoire de deux enfants tentant de survivre dans un monde déchiré par la guerre. Leur innocence et leur courage sont mis à rude épreuve alors qu\'ils cherchent un refuge et un espoir dans un environnement hostile. Le réalisateur nous livre une œuvre bouleversante qui explore les thèmes de la perte, de la résilience et de l\'importance des liens familiaux. Les acteurs livrent des performances émouvantes, nous rappelant la fragilité de l\'enfance et la force de l\'amour fraternel. Un film qui ne laisse pas indifférent et qui nous invite à réfléchir sur les conséquences de la guerre.',
    nom: 'Les Lucioles Perdues',
    genre: 'Film'
  ),
  Oeuvre(
    imageSource: 'asset/75vebtxn.png',
    description: 'Mélodie Mexicaine est un conte coloré et émouvant qui explore les thèmes de la mémoire et de la famille. L\'histoire suit un jeune garçon qui se lance dans un voyage extraordinaire pour retrouver ses ancêtres et découvrir les secrets de son passé. L\'animation est magnifique, avec des couleurs vives et des détails soignés qui nous plongent dans un univers enchanteur. La musique joue un rôle essentiel, rythmant les émotions et les péripéties de l\'histoire. Entre traditions et modernité, ce film nous rappelle l\'importance de nos racines et de nos liens familiaux. Un conte universel qui touche le cœur et qui célèbre la richesse de la culture mexicaine.',
    nom: 'Mélodie Mexicaine',
    genre: 'Film'
  ),
  Oeuvre(
    imageSource: 'asset/76slte85.png',
    description: 'Étoiles Brisées est une série captivante qui nous plonge dans les coulisses du monde du spectacle, où les rivalités et les ambitions d\'un groupe d\'élite se dévoilent sous les projecteurs. Les personnages, tous plus complexes les uns que les autres, luttent pour leur place au sommet, prêts à tout pour atteindre leurs rêves. Entre amitié et trahison, cette série explore les thèmes de la célébrité, de la compétition et des sacrifices nécessaires pour réussir. Les acteurs livrent des performances intenses, nous faisant ressentir les émotions et les tensions qui animent leurs personnages. Un regard fascinant sur les coulisses d\'un monde où les apparences sont souvent trompeuses.',
    nom: 'Étoiles Brisées',
    genre: 'Séries'
  ),
  Oeuvre(
    imageSource: 'asset/80m8oe3s.png',
    description: 'Le Combat de Shazia est un film inspiré d\'une histoire vraie, racontant le parcours d\'une jeune femme qui se bat pour son droit à l\'éducation dans un pays où les femmes sont souvent marginalisées. Son courage et sa détermination sont mis à rude épreuve face aux obstacles sociaux et culturels. Le film met en lumière les défis auxquels les femmes sont confrontées dans leur quête d\'émancipation et d\'égalité. Les acteurs livrent des performances touchantes, nous faisant ressentir la force et la résilience de Shazia. Un récit inspirant qui nous rappelle l\'importance de l\'éducation et de la lutte pour les droits humains.',
    nom: 'Le Combat de Shazia',
    genre: 'Film'
  ),
  Oeuvre(
    imageSource: 'asset/96435.jpg',
    description: 'Les Enfants du Vent est une aventure poétique qui nous emmène à travers des paysages naturels magnifiques et des souvenirs d\'enfance. Le film suit un groupe d\'enfants qui partent à la découverte de leur environnement, explorant des forêts enchantées et des rivières scintillantes. Leur voyage est ponctué de rencontres avec des créatures fantastiques et des personnages attachants. L\'animation est douce et colorée, créant une atmosphère onirique et apaisante. Entre émerveillement et nostalgie, ce film nous rappelle la beauté de la nature et l\'importance de préserver notre lien avec l\'enfance. Un conte écologique et poétique qui plaira à toute la famille.',
    nom: 'Les Enfants du Vent',
    genre: 'Film'
  ),
  Oeuvre(
    imageSource: 'asset/a5wlza2i.png',
    description: 'Quand la Nuit Tombe est une série dramatique poignante qui explore les thèmes de la justice et de l\'injustice dans une Amérique divisée. L\'histoire suit les destins croisés de personnages confrontés à des dilemmes moraux complexes et à des injustices flagrantes. Les acteurs livrent des performances intenses, nous faisant ressentir les émotions et les tensions qui animent leurs personnages. La série met en lumière les problèmes sociaux et politiques qui persistent dans notre société, nous invitant à réfléchir sur nos propres préjugés et sur la nécessité de lutter pour l\'égalité. Un récit captivant et engagé qui ne laisse pas indifférent.',
    nom: 'Quand la Nuit Tombe',
    genre: 'Séries'
  ),
  Oeuvre(
    imageSource: 'asset/aj6a50bp.png',
    description: 'Les Rebelles Masqués est une série de super-héros qui explore un monde corrompu où les héros ne sont pas toujours irréprochables. Les personnages, dotés de pouvoirs extraordinaires, doivent faire face à leurs propres faiblesses et à leurs démons intérieurs. Leur lutte contre le crime est compliquée par des dilemmes moraux et des choix difficiles. La série aborde des thèmes sombres et complexes, tels que la corruption, la vengeance et la rédemption. Les effets spéciaux sont spectaculaires, créant des scènes d\'action intenses et immersives. Un récit captivant qui revisite le genre des super-héros avec une approche originale et mature.',
    nom: 'Les Rebelles Masqués',
    genre: 'Séries'
  ),
  Oeuvre(
    imageSource: 'asset/bn6rk2pm.png',
    description: 'Notre Terre, Notre Vie est une série documentaire fascinante qui nous emmène à la découverte des merveilles de notre planète. Les images sont à couper le souffle, nous révélant la beauté et la fragilité des écosystèmes. Les experts nous expliquent les enjeux environnementaux auxquels nous sommes confrontés, nous sensibilisant à la nécessité de protéger notre planète. La série met en lumière les initiatives positives mises en place pour préserver la biodiversité et lutter contre le changement climatique. Un récit inspirant et informatif qui nous invite à prendre conscience de notre responsabilité envers la Terre et à agir pour un avenir durable.',
    nom: 'Notre Terre, Notre Vie',
    genre: 'Séries'
  ),
  Oeuvre(
    imageSource: 'asset/cvro2pjs.png',
    description: 'L\'Illusion Parfaite est un film de science-fiction qui explore les frontières entre la réalité et la simulation. Le protagoniste se retrouve piégé dans un programme de simulation qui remet en question sa perception du monde. Il doit démêler le vrai du faux pour retrouver son identité et échapper à cette prison virtuelle. Le film aborde des thèmes philosophiques complexes, tels que la nature de la conscience et la place de l\'humanité dans un monde de plus en plus technologique. Les effets spéciaux sont saisissants, créant un univers visuel immersif et déroutant. Un récit captivant qui nous invite à réfléchir sur la nature de notre propre réalité.',
    nom: 'L’Illusion Parfaite',
    genre: 'Film'
  ),
  Oeuvre(
    imageSource: 'asset/cytydba9.png',
    description: 'Entre Deux Battements est une bande dessinée qui nous plonge dans les tourments d\'un triangle amoureux au sein d\'un lycée. Les personnages, adolescents en quête d\'identité et d\'amour, sont confrontés à des choix difficiles et à des émotions intenses. L\'histoire explore les thèmes de l\'amitié, de la rivalité et des premiers émois. Les dessins sont expressifs et dynamiques, capturant les sentiments et les hésitations des personnages. Un récit touchant et réaliste qui parle aux adolescents et aux adultes qui ont connu les joies et les peines de l\'amour adolescent.',
    nom: 'Entre Deux Battements',
    genre: 'Bande dessinée'
  ),
  Oeuvre(
    imageSource: 'asset/czxjgrou.png',
    description: 'Cours Particuliers est une comédie romantique loufoque qui raconte l\'histoire d\'un professeur et de son élève particulière. Leur relation, d\'abord conflictuelle, se transforme peu à peu en une complicité inattendue. Les situations cocasses et les dialogues savoureux font de cette bande dessinée un moment de détente et de rire. Les dessins sont humoristiques et expressifs, mettant en valeur les personnalités excentriques des personnages. Un récit léger et divertissant qui explore les thèmes de l\'apprentissage, de l\'amitié et de l\'amour avec une touche d\'originalité.',
    nom: 'Cours Particuliers',
    genre: 'Bande dessinée'
  ),
  Oeuvre(
    imageSource: 'asset/gf1pqsfs.png',
    description: 'Le Poids des Rêves est un livre qui raconte l\'histoire d\'un homme rongé par le doute et la lassitude, qui décide de changer de vie. Il quitte son quotidien confortable pour partir à la recherche de ses rêves et de son identité. Son voyage est ponctué de rencontres enrichissantes et de défis personnels. L\'auteur explore les thèmes de la quête de sens, de la liberté et de la réalisation de soi. Le récit est introspectif et poétique, invitant le lecteur à réfléchir sur ses propres aspirations et sur la manière de les atteindre. Un livre inspirant qui nous encourage à suivre nos rêves et à vivre pleinement.',
    nom: 'Le Poids des Rêves',
    genre: 'Livres'
  ),
  Oeuvre(
    imageSource: 'asset/hmj1s5gq.png',
    description: 'Le Voyage Enchanté est un film d\'animation qui nous emmène dans un monde mystique et étrange, où une jeune fille se perd et doit trouver son chemin. Son périple est rempli de créatures fantastiques, de paysages oniriques et de défis magiques. L\'animation est époustouflante, avec des couleurs vives et des détails soignés qui créent un univers visuel enchanteur. Le film explore les thèmes de l\'aventure, de la découverte de soi et de l\'importance de l\'imagination. Un conte merveilleux qui plaira aux enfants et aux adultes qui ont gardé leur âme d\'enfant.',
    nom: 'Le Voyage Enchanté',
    genre: 'Film'
  ),
  Oeuvre(
    imageSource: 'asset/lkJmu9de.png',
    description: 'L\'Indélébile est un film dramatique qui suit le parcours d\'une femme au passé trouble, tentant de se reconstruire après des années de souffrance. Son histoire est marquée par des secrets et des traumatismes qui l\'empêchent d\'avancer. Elle devra affronter ses démons intérieurs et faire des choix difficiles pour trouver la paix et la rédemption. Le film explore les thèmes de la résilience, de la culpabilité et de la capacité de l\'être humain à se relever après les épreuves. Les acteurs livrent des performances émouvantes, nous faisant ressentir la douleur et l\'espoir de leur personnage. Un récit poignant qui nous rappelle la force de l\'esprit humain.',
    nom: 'L’Indélébile',
    genre: 'Film'
  ),
  Oeuvre(
    imageSource: 'asset/p6qdxs25.png',
    description: 'Mirages Virtuels est une bande dessinée de science-fiction qui nous plonge dans un univers cyberpunk où la frontière entre la réalité et l\'illusion est floue. Le protagoniste, un hacker talentueux, se retrouve pris au cœur d\'une conspiration qui menace de bouleverser l\'équilibre du monde. Il devra naviguer entre les dangers de la réalité virtuelle et les enjeux du monde réel pour déjouer les plans de ses ennemis. Les dessins sont détaillés et immersifs, créant une atmosphère sombre et futuriste. Un récit captivant qui explore les thèmes de la technologie, de l\'identité et du pouvoir.',
    nom: 'Mirages Virtuels',
    genre: 'Bande dessinée'
  ),
  Oeuvre(
    imageSource: 'asset/pyp2v0gl.png',
    description: 'Étoiles Jumelles est un film romantique qui raconte l\'histoire de deux âmes liées par un destin cosmique au-delà du temps. Leur amour est mis à l\'épreuve par des forces mystérieuses qui tentent de les séparer. Ils devront surmonter les obstacles et les épreuves pour retrouver leur connexion et accomplir leur destinée. Le film explore les thèmes de l\'amour éternel, de la destinée et de la force des liens invisibles. Les effets spéciaux sont magnifiques, créant une atmosphère onirique et poétique. Un récit émouvant qui nous rappelle la puissance de l\'amour et la beauté des relations humaines.',
    nom: 'Étoiles Jumelles',
    genre: 'Film'
  ),
  Oeuvre(
    imageSource: 'asset/rnt1330m.png',
    description: 'Contes du Bizarre est un recueil de nouvelles qui explore les limites de la réalité et de l\'imagination. Les histoires, à la fois étranges et fascinantes, nous transportent dans des mondes parallèles où les lois de la physique et de la logique sont bouleversées. Les personnages, confrontés à des situations insolites, doivent faire face à leurs peurs et à leurs désirs les plus profonds. L\'auteur joue avec les codes du fantastique et du surréalisme pour créer des récits originaux et déroutants. Un livre qui stimule l\'imagination et qui nous invite à remettre en question notre perception du monde.',
    nom: 'Contes du Bizarre',
    genre: 'Livres'
  ),
  Oeuvre(
    imageSource: 'asset/rxxmi2vb.png',
    description: 'Les Portails Interdits est un film d\'aventure qui nous emmène dans un voyage à travers le multivers pour sauver un être cher. Le protagoniste, un explorateur intrépide, doit traverser des dimensions parallèles et affronter des dangers inimaginables pour retrouver la personne qu\'il aime. Le film explore les thèmes de l\'amour, du sacrifice et de la persévérance. Les effets spéciaux sont spectaculaires, créant des univers visuels époustouflants. Un récit haletant qui nous tient en haleine jusqu\'à la dernière minute.',
    nom: 'Les Portails Interdits',
    genre: 'Film'
  ),
  Oeuvre(
    imageSource: 'asset/tfb0nogr.png',
    description: 'Les Charmes de l’Oubli est un roman classique qui explore les thèmes de la passion et du désir interdit. L\'histoire se déroule dans une époque révolue, où les conventions sociales et les interdits amoureux pèsent lourdement sur les personnages. Les protagonistes, déchirés entre leurs sentiments et leurs devoirs, doivent faire des choix difficiles qui auront des conséquences durables. L\'auteur nous livre une œuvre poétique et mélancolique, qui explore les complexités de l\'âme humaine et les tourments de l\'amour. Un récit intemporel qui nous rappelle la puissance des émotions.',
    nom: 'Les Charmes de l’Oubli',
    genre: 'Livres'
  ),
  Oeuvre(
    imageSource: 'asset/u3vhsfrr.png',
    description: 'Le Roi en Cage est un livre qui raconte l\'histoire d\'un lion captif rêvant de liberté et d\'aventures. Son regard sur le monde, depuis sa cage, est rempli de nostalgie et d\'espoir. Il se remémore les souvenirs de sa vie sauvage et imagine les paysages qu\'il aimerait explorer. L\'auteur nous livre une fable poétique qui explore les thèmes de la liberté, de la nostalgie et de la force de l\'imagination. Le récit est touchant et inspirant, nous rappelant l\'importance de nos rêves et de notre capacité à les réaliser.',
    nom: 'Le Roi en Cage',
    genre: 'Livres'
  ),
  Oeuvre(
    imageSource: 'asset/umk6kvfc.png',
    description: 'Pages Perdues est une bande dessinée qui raconte l\'histoire de deux amis d\'enfance se retrouvant à travers les souvenirs d\'un manga. Ils partagent leur passion pour les histoires dessinées et se replongent dans les aventures de leurs personnages préférés. Leur complicité se renforce au fil des pages, et ils redécouvrent les liens qui les unissent. Les dessins sont expressifs et dynamiques, capturant l\'énergie et l\'enthousiasme des personnages. Un récit touchant qui explore les thèmes de l\'amitié, de la nostalgie et du pouvoir des souvenirs.',
    nom: 'Pages Perdues',
    genre: 'Bande dessinée'
  ),
  Oeuvre(
    imageSource: 'asset/uwc5ja0e.png',
    description: 'L’Étoile Déchue est une bande dessinée de science-fiction qui raconte l\'histoire d\'un amour impossible entre une humaine et un être venu d\'ailleurs. Leur rencontre est le point de départ d\'une aventure extraordinaire, où ils devront affronter les préjugés et les dangers pour vivre leur amour. Les dessins sont magnifiques, créant un univers visuel riche et immersif. Le récit explore les thèmes de la différence, de l\'acceptation et de la force des sentiments. Une histoire touchante qui nous rappelle que l\'amour peut transcender les frontières.',
    nom: 'L’Étoile Déchue',
    genre: 'Bande dessinée'
  ),
  Oeuvre(
    imageSource: 'asset/yfjxdzzm.png',
    description: 'Les Jours Gris est une bande dessinée émouvante qui raconte l\'histoire d\'un personnage solitaire en quête d\'amitié et de chaleur humaine. Son quotidien est rythmé par les rencontres et les échanges avec les personnes qu\'il croise sur son chemin. Les dessins sont doux et expressifs, capturant les émotions et les pensées du personnage. Le récit explore les thèmes de la solitude, de l\'espoir et de la force des liens humains. Une histoire touchante qui nous rappelle l\'importance de la communication et de la bienveillance.',
    nom: 'Les Jours Gris',
    genre: 'Bande dessinée'
  )
];
  var i =0;
  for (final o in listOeuvre) {
    o.index = i;
    i=i+1;
  }

  return listOeuvre;
}