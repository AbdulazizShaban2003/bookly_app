
import 'package:bookly/core/resources/asstes_manager.dart';

class PageModel {
  String title;
  String subtitle;
  String nameButton;
  String image;
  String action;

  PageModel(
      {required this.title,
      required this.subtitle,
      required this.nameButton,
      required this.image,
      required this.action});
}

class FetshPageModel {
  static List<PageModel> listOfData = [
     PageModel(
        title: 'Welcome to Bookly! Your Next Adventure Awaits',
        nameButton: 'Continue',
        image: AsstesManager.imageSplash1,
        subtitle:
            'Embark on a literary journey with AI-curated book recommendations that match your unique tastes for an adventure in every read.',
        action: 'Skip to login'),
    PageModel(
        title: 'Discover +50 Million International Books Now',
        nameButton: 'Continue',
        image: AsstesManager.imageSplash2,
        subtitle:
            'Venture beyond borders with over 50 million books. Your next favorite read, from every corner of the world, awaits.',
        action: 'Skip to login'),
    PageModel(
        title: 'Crafted For You: Your Personal Book Oasis',
        nameButton: 'Start Your Adventure',
        image: AsstesManager.imageSplash3,
        subtitle:
            'Let AI be your guide through a landscape of literature designed to match your unique taste and interests.',
        action: 'Start to read'),
  ];
}
