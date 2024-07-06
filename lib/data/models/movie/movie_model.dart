class MovieModel {
  final int id, year, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final List<String> genres;
  final String plot;
  final String title;
  final String poster;
  final String backdrop;
  final List<Map> cast;

  MovieModel({
    required this.plot,
    required this.poster,
    required this.backdrop,
    required this.title,
    required this.id,
    required this.year,
    required this.numOfRatings,
    required this.criticsReview,
    required this.metascoreRating,
    required this.rating,
    required this.genres,
    required this.cast,
  });
}
