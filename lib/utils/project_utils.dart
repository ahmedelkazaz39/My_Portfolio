class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? githubLink;
  final String? githubIcon;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.githubLink,
    this.githubIcon,
  });
}

//! hobby projects
List<ProjectUtils> hobbyProjectsUtlis = [
  ProjectUtils(
      image: 'assets/projects/1.png',
      title: 'Ahmed',
      subtitle: 'Ahmed Mohamed Elshahat Elkazaz',
      githubIcon: 'assets/images/dart.png',
      githubLink: 'https://github.com/ahmedelkazaz39'),
  ProjectUtils(
      image: 'assets/projects/2.png',
      title: 'Ahmed',
      subtitle: 'Ahmed Mohamed Elshahat Elkazaz',
      githubIcon: 'assets/images/dart.png',
      githubLink: 'https://github.com/ahmedelkazaz39'),
  ProjectUtils(
    image: 'assets/projects/3.png',
    title: 'Ahmed',
    subtitle: 'Ahmed Mohamed Elshahat Elkazaz',
    githubIcon: 'assets/images/dart.png',
  ),
  ProjectUtils(
    image: 'assets/projects/4.png',
    title: 'Ahmed',
    subtitle: 'Ahmed Mohamed Elshahat Elkazaz',
    githubIcon: 'assets/images/dart.png',
  ),
];
//! work projects

List<ProjectUtils> workProjectsUtlis = [
  ProjectUtils(
      image: 'assets/projects/5.png',
      title: 'Ahmed',
      subtitle: 'Ahmed Mohamed Elshahat Elkazaz',
      githubIcon: 'assets/images/dart.png',
      githubLink: 'https://github.com/ahmedelkazaz39'),
  ProjectUtils(
      image: 'assets/projects/6.png',
      title: 'Ahmed',
      subtitle: 'Ahmed Mohamed Elshahat Elkazaz',
      githubIcon: 'assets/images/dart.png',
      githubLink: 'https://github.com/ahmedelkazaz39'),
  ProjectUtils(
    image: 'assets/projects/7.png',
    title: 'Ahmed',
    subtitle: 'Ahmed Mohamed Elshahat Elkazaz',
    githubIcon: 'assets/images/dart.png',
  ),
  ProjectUtils(
    image: 'assets/projects/8.png',
    title: 'Ahmed',
    subtitle: 'Ahmed Mohamed Elshahat Elkazaz',
    githubIcon: 'assets/images/dart.png',
  ),
];
