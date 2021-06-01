class MovieList {
  String title;
  String description;
  String category;
  String language;
  String rate;
  String image;
  List<String> crew;

  MovieList({
    this.title,
    this.description,
    this.category,
    this.language,
    this.rate,
    this.image,
    this.crew,
  });
}

var movieList = [
  MovieList(
    title: 'Outside the Wire (2021)',
    description:
        'When disgraced drone pilot, Lt. Harp (Damson Idris) is sent into a deadly militarized zone after disobeying orders, he finds himself working for Capt. Leo (Anthony Mackie), an android officer tasked with locating a doomsday device before insurgents do',
    category: 'Action',
    language: 'English',
    rate: 'Rating 7/10',
    image: 'images/outside-the-wire.jpg',
    crew: ['images/anthony.jpg', 'images/damson.jpg', 'images/enzo.jpg'],
  ),
  MovieList(
    title: 'Space Sweepers (2021)',
    description:
        'In the year 2092, space is full of dangerous floating garbage like discarded satellites and deserted spaceships. The crew of The Victory travels through space looking for the garbage they can make money off, while also competing with junk collector ships from other countries and using the speediness of their craft to defeat their rivals.',
    category: 'Action, Drama',
    language: 'Korean',
    rate: 'Rating 6/10',
    image: 'images/space-sweepers.jpg',
    crew: ['images/songjong.jpg', 'images/kimtae.jpg', 'images/richard.jpg'],
  ),
  MovieList(
    title: 'Godzilla vs. Kong (2021)',
    description:
        'Legends collide as Godzilla and Kong, the two most powerful forces of nature, clash on the big screen in a spectacular battle for the ages. As a squadron embarks on a perilous mission into fantastic uncharted terrain, unearthing clues to the Titans very origins and mankinds survival, a conspiracy threatens to wipe the creatures, both good and bad, from the face of the earth forever.',
    category: 'Thriller',
    language: 'English',
    rate: 'Rating 8/10',
    image: 'images/godzila.jpg',
    crew: ['images/aelxander.jpg', 'images/millie.jpg', 'images/rabecca.jpg'],
  )
];

var movieComingList = [
  MovieList(
    title: 'Sound of Metal (2019)',
    description:
        'When disgraced drone pilot, Lt. Harp (Damson Idris) is sent into a deadly militarized zone after disobeying orders, he finds himself working for Capt. Leo (Anthony Mackie), an android officer tasked with locating a doomsday device before insurgents do',
    category: 'Action',
    language: 'English',
    rate: 'Rating 7/10',
    image: 'images/soundofmetal.jpg',
    crew: ['images/anthony.jpg', 'images/damson.jpg', 'images/enzo.jpg'],
  ),
  MovieList(
    title: 'The Godfather',
    description:
        'When disgraced drone pilot, Lt. Harp (Damson Idris) is sent into a deadly militarized zone after disobeying orders, he finds himself working for Capt. Leo (Anthony Mackie), an android officer tasked with locating a doomsday device before insurgents do',
    category: 'Action',
    language: 'English',
    rate: 'Rating 7/10',
    image: 'images/goodfather.jpg',
    crew: ['images/anthony.jpg', 'images/damson.jpg', 'images/enzo.jpg'],
  ),
  MovieList(
    title: 'Saving Private Ryan',
    description:
        'When disgraced drone pilot, Lt. Harp (Damson Idris) is sent into a deadly militarized zone after disobeying orders, he finds himself working for Capt. Leo (Anthony Mackie), an android officer tasked with locating a doomsday device before insurgents do',
    category: 'Action',
    language: 'English',
    rate: 'Rating 7/10',
    image: 'images/saving.jpg',
    crew: ['images/anthony.jpg', 'images/damson.jpg', 'images/enzo.jpg'],
  )
];
