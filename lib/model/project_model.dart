class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Go Movies',
    'Presenting "Go-Movies" - A Flutter based application that suggest you movies on the basis of your desired genre spicifications and get details about them. It also allows you to save your favorite movies and TV shows in a watchlist.',
    'assets/images/Go-Movies.png',
    'https://github.com/nikshit-chauhan/Go-Movies',
  ),
  Project(
    'Hacker-News',
    'Presenting "Hacker-News" - A Flutter based application that fetches the latest news from Hacker-News API and displays them in a list. It also shows number of threads on that news.',
    'assets/images/Hacker-News.png',
    'https://github.com/nikshit-chauhan/News',
  ),
  Project(
    'Sheegr-Fresh Fish',
    'Presenting "Sheegr-Fresh Fish" - A Flutter based e-Commerce Appplication where you can order seafoods absolutely fresh and get them delivered at your doorstep directly from harbour via air cargo.',
    'assets/images/Sheegr.png',
    'https://github.com/nikshit-chauhan/Sheegr',
  ),
  Project(
    'M.E.L.P',
    'Presenting "M.E.L.P" - A Flutter based application where you book appointments with doctors and get your medical reports online. It also allows you to chat with doctors and get your queries solved.',
    'assets/images/Melp.png',
    'https://github.com/TriPixel-Labs',
  ),
];
