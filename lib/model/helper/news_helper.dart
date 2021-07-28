import 'package:readky/model/core/news.dart';

class NewsHelper {
  static List<News> featuredNews =
      featuredNewsRawData.map((data) => News(title: data['title'], photo: data['photo'], date: data['date'], author: data['author'], description: data['description'])).toList();
  static List<News> breakingNews =
      breakingNewsRawData.map((data) => News(title: data['title'], photo: data['photo'], date: data['date'], author: data['author'], description: data['description'])).toList();

  static List<News> recomendationNews =
      recomendationNewsRawData.map((data) => News(title: data['title'], photo: data['photo'], date: data['date'], author: data['author'], description: data['description'])).toList();

  static List<News> allCategoriesNews =
      allCategoriesNewsRawData.map((data) => News(title: data['title'], photo: data['photo'], date: data['date'], author: data['author'], description: data['description'])).toList();

  static List<News> searchNews =
      searchNewsRawData.map((data) => News(title: data['title'], photo: data['photo'], date: data['date'], author: data['author'], description: data['description'])).toList();

  static List<News> bookmarkedNews =
      bookmarkedNewsRawData.map((data) => News(title: data['title'], photo: data['photo'], date: data['date'], author: data['author'], description: data['description'])).toList();
}

var featuredNewsRawData = [
  {
    'title': '‘Space Jam: A New Legacy’ Takes on ‘Black Widow’ at the Box Office.',
    'photo': 'assets/images/spacejam.jpg',
    'description': r'''Black Widow has faced down mad titans and genocidal robots, but can the veteran Avenger take down a band of scrappy Looney Toons?

It’ll be a showdown between Disney’s and Marvel’s “Black Widow” and the Warner Bros. sequel “Space Jam: A New Legacy” at the domestic box office, with Scarlett Johansson’s superhero adventure poised to reclaim the top spot.

After “Black Widow” opened on July 9 to $80 million in North America, a record for COVID times, the comic book adaptation is projected to add $24 million to $28 million in its second weekend of release. Independent tracking services suggest that range is conservative and show the final weekend figure could reach $32 million through Sunday. A $30 million-plus haul in its second frame would be a decline on par with fellow Marvel standalone adventures such as 2018’s “Ant-Man and the Wasp” and 2017’s “Spider-Man: Homecoming,” which each dropped 60% from their initial weekends. It would also be a slight improvement on another pandemic-era release, Universal’s “Fast & Furious” sequel “F9,” which debuted to $60 million in June and plunged 67% in its sophomore outing.

In a rare moment of streaming revenue transparency, Disney revealed last weekend that “Black Widow” collected $60 million globally on Disney Plus, where the film premiered (for a $30 surcharge) on the same day as its theatrical release. For now, Disney isn’t expected to update that figure beyond its opening weekend sales.
    ''',
    'date': 'Jul 14, 2021',
    'author': 'anon anon'
  },
  {
    'title': 'How a Pivotal Scene in ‘The Green Knight’ Took Over a Year to Edit.',
    'photo': 'assets/images/green knight.jpg',
    'description': r'''Black Widow has faced down mad titans and genocidal robots, but can the veteran Avenger take down a band of scrappy Looney Toons?

It’ll be a showdown between Disney’s and Marvel’s “Black Widow” and the Warner Bros. sequel “Space Jam: A New Legacy” at the domestic box office, with Scarlett Johansson’s superhero adventure poised to reclaim the top spot.

After “Black Widow” opened on July 9 to $80 million in North America, a record for COVID times, the comic book adaptation is projected to add $24 million to $28 million in its second weekend of release. Independent tracking services suggest that range is conservative and show the final weekend figure could reach $32 million through Sunday. A $30 million-plus haul in its second frame would be a decline on par with fellow Marvel standalone adventures such as 2018’s “Ant-Man and the Wasp” and 2017’s “Spider-Man: Homecoming,” which each dropped 60% from their initial weekends. It would also be a slight improvement on another pandemic-era release, Universal’s “Fast & Furious” sequel “F9,” which debuted to $60 million in June and plunged 67% in its sophomore outing.

In a rare moment of streaming revenue transparency, Disney revealed last weekend that “Black Widow” collected $60 million globally on Disney Plus, where the film premiered (for a $30 surcharge) on the same day as its theatrical release. For now, Disney isn’t expected to update that figure beyond its opening weekend sales.
    ''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
];

var breakingNewsRawData = [
  {
    'title': 'Covid map: Coronavirus cases, deaths, vaccinations by country.',
    'photo': 'assets/images/vaccin.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Indonesia overtakes India as Asia's new Covid-19 epicenter.",
    'photo': 'assets/images/inonesiacovid.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
];

var recomendationNewsRawData = [
  {
    'title': "A giant 3D cat has taken over one of Tokyo's biggest billboards.",
    'photo': 'assets/images/cat3d.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Find out which countries are welcoming US tourists back.",
    'photo': 'assets/images/pemandangan.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Naomi Osaka Barbie doll sells out shortly after launch.",
    'photo': 'assets/images/barbiebadminton.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
];

var allCategoriesNewsRawData = [
  {
    'title': "A giant 3D cat has taken over one of Tokyo's biggest billboards.",
    'photo': 'assets/images/cat3d.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Find out which countries are welcoming US tourists back.",
    'photo': 'assets/images/pemandangan.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Naomi Osaka Barbie doll sells out shortly after launch.",
    'photo': 'assets/images/barbiebadminton.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': 'Covid map: Coronavirus cases, deaths, vaccinations by country.',
    'photo': 'assets/images/vaccin.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Millions of peaches! How to make the most of summer's best fruit",
    'photo': 'assets/images/peachesfruit.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Software vendor caught up in ransomware attack obtains decryptor key",
    'photo': 'assets/images/ransom.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Add this superfood to your diet to help manage weight and lower blood pressure",
    'photo': 'assets/images/healthyfood.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Watch the July full 'buck' moon illuminate the sky tonight",
    'photo': 'assets/images/julymoon.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
];

var bookmarkedNewsRawData = [
  {
    'title': "A giant 3D cat has taken over one of Tokyo's biggest billboards.",
    'photo': 'assets/images/cat3d.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Find out which countries are welcoming US tourists back.",
    'photo': 'assets/images/pemandangan.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Naomi Osaka Barbie doll sells out shortly after launch.",
    'photo': 'assets/images/barbiebadminton.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': 'Covid map: Coronavirus cases, deaths, vaccinations by country.',
    'photo': 'assets/images/vaccin.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Millions of peaches! How to make the most of summer's best fruit",
    'photo': 'assets/images/peachesfruit.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Add this superfood to your diet to help manage weight and lower blood pressure",
    'photo': 'assets/images/healthyfood.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Software vendor caught up in ransomware attack obtains decryptor key",
    'photo': 'assets/images/ransom.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Watch the July full 'buck' moon illuminate the sky tonight",
    'photo': 'assets/images/julymoon.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
];

var searchNewsRawData = [
  {
    'title': "A giant 3D cat has taken over one of Tokyo's biggest billboards.",
    'photo': 'assets/images/cat3d.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Find out which countries are welcoming US tourists back.",
    'photo': 'assets/images/pemandangan.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Naomi Osaka Barbie doll sells out shortly after launch.",
    'photo': 'assets/images/barbiebadminton.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': 'Covid map: Coronavirus cases, deaths, vaccinations by country.',
    'photo': 'assets/images/vaccin.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
];
