class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/b2b_1.png',
    title: 'Akbar Travels Agents',
    subtitle:
        'Application for B2B agents offering booking capabilities for flights, hotels, Railway, Bus, Holidays and additional features. ',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.akbartravels.akbarb2btravels',
    iosLink:
        "https://apps.apple.com/in/app/akbar-travels-agents-b2b/id1551780977",
  ),
  ProjectUtils(
    image: 'assets/b2e.png',
    title: 'Akbar Corporate (B2E)',
    subtitle:
        ' A B2E application offering booking capabilities for flights, hotels and additional features for corporate travellers.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.akbartravels.akbarcorporate',
    iosLink: "https://apps.apple.com/in/app/akbar-corporate/id6443581998",
  ),
  ProjectUtils(
    image: 'assets/b2c1.png',
    title: 'Akbar Travels-Flights & Hotel (B2C)',
    subtitle:
        'A B2C application offering booking capabilities for flights, hotels, visas, holidays and additional features.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.akbartravel.AkbarTravels',
    iosLink: "https://apps.apple.com/in/app/akbar-travels-flight-ticket/id955378983",
  ),
  ProjectUtils(
    image: 'assets/bi_canteen.png',
    title: 'Benzy Canteen',
    subtitle:
        "Application designed for our company's canteen to minimize food wastage.",
    androidLink:
        'https://play.google.com/store/apps/details?id=com.akbartravels.canteen',
    iosLink: "https://www.apple.com/in/search/benzy-canteen?src=globalnav",
  ),
  ProjectUtils(
    image: 'assets/ismart_sales.png',
    title: 'iSmart - Sales Manager ',
    subtitle:
        'Application designed for sales representatives to make the business task easier.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.akbartravels.salesapp',
    iosLink: "https://apps.apple.com/in/app/ismart-sales-manager/id1477051783",
  ),
  ProjectUtils(
    image: 'assets/ismart_it.png',
    title: 'iSmart IT Task Manager',
    subtitle:
        'Application designed for IT engineers to make the service task easier.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.akbartravels.ismartit',
    iosLink:
        "https://apps.apple.com/in/app/ismart-it-task-manager/id6476549091",
  ),
];
