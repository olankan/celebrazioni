import 'package:celebrazioni/core/resources/images.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventTypeModel {
  String title;
  String location;
  String time;
  String guests;
  String eventType;
  String imgPath;
  String month; // Field for the month
  String day; // Field for the day
  String weekDay; // New field for the day of the week
  String about; // Updated field for event summary
  List<String> serviceImages;

  EventTypeModel({
    required this.title,
    required this.location,
    required this.time,
    required this.guests,
    required this.eventType,
    required this.imgPath,
    required this.month,
    required this.day,
    required this.weekDay,
    required this.about,
    required this.serviceImages,
  });
}

final eventsProvider = StateProvider<List<EventTypeModel>>((ref) => [
      // Wedding Details
      EventTypeModel(
          title: 'John weds Eva',
          location: 'Eko hotels and suites',
          time: '10:00 AM',
          guests: '1000',
          eventType: 'Wedding',
          imgPath: 'assets/images/wedding1.jpeg',
          month: 'June',
          day: '06',
          weekDay: 'Thursday',
          serviceImages: serviceImages, // Added week day
          about:
              'Join us for a grand wedding celebration at Eko Hotels and Suites on June 6th at 10:00 AM. With an estimated 1000 guests, this event promises to be a magnificent affair filled with love and joy. The ceremony will include breathtaking decorations and live entertainment, followed by a sumptuous feast featuring grilled chicken, vegetable lasagna, shrimp cocktail, chocolate mousse, and a fruit platter. Celebrate with us as we create unforgettable memories together!'),

      EventTypeModel(
          title: 'Emma & Noah Wedding',
          location: 'Lekki Waterside Gardens',
          time: '12:00 PM',
          guests: '850',
          eventType: 'Wedding',
          imgPath: 'assets/images/wedding2.jpeg',
          month: 'July',
          day: '10',
          weekDay: 'Wednesday',
          serviceImages: serviceImages, // Added week day
          about:
              'Celebrate the love of Emma and Noah at the scenic Lekki Waterside Gardens on July 10th at 12:00 PM. Surrounded by nature and beauty, this wedding will host 850 guests in a picturesque setting. Experience a day filled with heartfelt vows, laughter, and an exquisite culinary journey featuring beef wellington, caprese salad, pasta primavera, cheesecake, and mini tarts. Join us as we toast to love, friendship, and the start of their beautiful journey together!'),

      EventTypeModel(
          title: 'Daniel and Sarah Celebrate',
          location: 'Four Points by Sheraton',
          time: '3:00 PM',
          guests: '600',
          eventType: 'Wedding',
          imgPath: 'assets/images/wedding3.jpeg',
          month: 'August',
          day: '15',
          weekDay: 'Saturday',
          serviceImages: serviceImages, // Added week day
          about:
              'Join us at Four Points by Sheraton on August 15th at 3:00 PM to celebrate the union of Daniel and Sarah. With 600 guests in attendance, this event promises an elegant atmosphere filled with love and joy. Guests will enjoy an array of entertainment, along with a gourmet dining experience featuring salmon fillet, stuffed bell peppers, garden salad, tiramisu, and a cheese platter. We look forward to sharing this special day with you!'),

      EventTypeModel(
          title: 'Lara & David’s Big Day',
          location: 'Ibom Icon Hotel & Golf Resort',
          time: '11:30 AM',
          guests: '950',
          eventType: 'Wedding',
          imgPath: 'assets/images/wedding4.jpeg',
          month: 'September',
          day: '22',
          serviceImages: serviceImages,
          weekDay: 'Sunday', // Added week day
          about:
              'Lara and David invite you to their special day at Ibom Icon Hotel & Golf Resort on September 22nd at 11:30 AM. With 950 guests, this wedding will be a vibrant celebration of love, featuring stunning decor and delightful entertainment. Indulge in a culinary feast prepared with love and care, including chicken alfredo, vegetarian stir-fry, beef satay, mousse cake, and assorted pastries. Join us for an unforgettable day filled with love, laughter, and celebration!'),

      // Birthday Details
      EventTypeModel(
          title: 'Lucas’ 30th Birthday Bash',
          location: 'Garden City Event Center',
          time: '4:00 PM',
          guests: '150',
          eventType: 'Birthdays',
          imgPath: 'assets/images/birthday1.jpeg',
          month: 'October',
          serviceImages: serviceImages,
          day: '05',
          weekDay: 'Saturday', // Added week day
          about:
              'Celebrate Lucas’ milestone 30th birthday at Garden City Event Center on October 5th at 4:00 PM. With 150 guests expected, this birthday bash will be filled with joy, laughter, and unforgettable moments. Join us for a festive atmosphere featuring fun activities, games, and a delectable menu that includes BBQ ribs, caesar salad, mini burgers, chocolate cake, and ice cream sundaes. Let’s make this a memorable celebration together!'),

      EventTypeModel(
          title: 'Aiden’s 5th Birthday',
          location: 'Jabi Lake Park',
          time: '2:00 PM',
          guests: '50',
          eventType: 'Birthdays',
          imgPath: 'assets/images/birthday2.jpeg',
          month: 'November',
          day: '12',
          serviceImages: serviceImages,
          weekDay: 'Tuesday', // Added week day
          about:
              'Join us for Aiden’s 5th birthday party at Jabi Lake Park on November 12th at 2:00 PM. With 50 guests invited, this celebration will be filled with fun, laughter, and exciting activities for all children. Enjoy a delightful spread of kid-friendly meals and treats, including mini pizzas, fruit skewers, chicken nuggets, cupcakes, and juice boxes, ensuring that every guest has a wonderful time. We can’t wait to celebrate this special day with you!'),

      EventTypeModel(
          title: 'Sophia’s Sweet 16',
          location: 'Banana Island Clubhouse',
          time: '5:00 PM',
          guests: '80',
          eventType: 'Birthdays',
          imgPath: 'assets/images/birthday3.jpeg',
          month: 'December',
          serviceImages: serviceImages,
          day: '20',
          weekDay: 'Friday', // Added week day
          about:
              'Sophia’s Sweet 16 celebration at Banana Island Clubhouse on December 20th at 5:00 PM is an event you don’t want to miss! With 80 guests attending, this elegant affair will be a night to remember, filled with dancing, laughter, and wonderful memories. Enjoy a lavish dining experience featuring lobster tail, stuffed mushrooms, quinoa salad, red velvet cake, and chocolate fondue, designed to celebrate this special milestone. Let’s make it a night full of magic!'),

      // Cocktail Details
      EventTypeModel(
          title: 'Sunset Sips Cocktail Party',
          location: 'Lekki Phase 1 Lounge',
          time: '7:00 PM',
          guests: '120',
          eventType: 'Cock-tail',
          imgPath: 'assets/images/cocktail1.jpeg',
          month: 'January',
          serviceImages: serviceImages,
          day: '06',
          weekDay: 'Monday', // Added week day
          about:
              'Enjoy a stylish cocktail party at Lekki Phase 1 Lounge on January 6th at 7:00 PM, where sophistication meets fun! With 120 guests invited, this event promises a night of networking, mingling, and delightful culinary experiences. Savor an assortment of exquisite cocktails and hors d’oeuvres, including shrimp cocktail, stuffed jalapeños, bruschetta, mojito tarts, and chocolate-covered strawberries, crafted by top chefs, ensuring a memorable evening under the stars. Join us for an unforgettable night!'),

      EventTypeModel(
          title: 'Tropical Paradise Cocktails',
          location: 'Victoria Island Beach Bar',
          time: '6:30 PM',
          guests: '150',
          serviceImages: serviceImages,
          eventType: 'Cock-tail',
          imgPath: 'assets/images/cocktail2.jpeg',
          month: 'February',
          day: '14',
          weekDay: 'Thursday', // Added week day
          about:
              'Join us at Victoria Island Beach Bar on February 14th at 6:30 PM for a Tropical Paradise Cocktails party. With 150 guests expected, this vibrant event will feature a lively atmosphere filled with tropical themes and refreshing drinks. Enjoy a variety of delightful bites, including mango salsa, fish tacos, fruit ceviche, pina colada cupcakes, and coconut shrimp, while soaking in the sunset and mingling with friends. Let’s raise a glass to good times and great company!'),

      EventTypeModel(
          title: 'Starlight Mixers',
          location: 'Ikoyi Rooftop Bar',
          time: '8:00 PM',
          guests: '100',
          eventType: 'Cock-tail',
          imgPath: 'assets/images/cocktail3.jpeg',
          month: 'March',
          day: '15',
          serviceImages: serviceImages,
          weekDay: 'Saturday', // Added week day
          about:
              'Come and enjoy the Starlight Mixers at Ikoyi Rooftop Bar on March 15th at 8:00 PM. With 100 guests in attendance, this cocktail party will be an elegant gathering featuring a stunning city view under the stars. Indulge in a variety of sophisticated cocktails and hors d’oeuvres, including artisan cheeses, smoked salmon canapés, truffle fries, chocolate mousse cups, and specialty cocktails crafted by expert mixologists. Let’s toast to a memorable evening!'),
    ]);

final eventTypeProvider = StateProvider<String>((ref) => 'Wedding');

final eventIndexProvider = StateProvider<int>((ref) => 0);
