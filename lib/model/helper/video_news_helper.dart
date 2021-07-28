import 'package:readky/model/core/video_news.dart';

class VideoNewsHelper {
  static List<VideoNews> featuredVideoNews = featredVideoNewsRawData
      .map((data) => VideoNews(title: data['title'], thumbnail: data['thumbnail'], video: data['video'], date: data['date'], author: data['author'], description: data['description']))
      .toList();

  static List<VideoNews> videoNews = videoNewsRawData
      .map((data) => VideoNews(title: data['title'], thumbnail: data['thumbnail'], video: data['video'], date: data['date'], author: data['author'], description: data['description']))
      .toList();

  static List<VideoNews> bookmarkedVideoNews = bookmarkedVideoNewsRawData
      .map((data) => VideoNews(title: data['title'], thumbnail: data['thumbnail'], video: data['video'], date: data['date'], author: data['author'], description: data['description']))
      .toList();
}

var featredVideoNewsRawData = [
  {
    'title': "India vaccination: Six months on, India's vaccine drive is lagging.",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/vaccination.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Virgin Galactic: Richard Branson's long, winding path to space.",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/outerspace.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {'title': "View More", 'video': '', 'thumbnail': '', 'description': '', 'date': '', 'author': ''}
];

var videoNewsRawData = [
  {
    'title': "India vaccination: Six months on, India's vaccine drive is lagging.",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/vaccination.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Virgin Galactic: Richard Branson's long, winding path to space.",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/outerspace.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Moon-day madness as Jeff Bezos rumoured to be looking at Bitcoin payments for Amazon",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/bitcoin.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Elon Musk drops big hint for Dogecoin that want to make a lot of money",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/lotmoney.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Analysis-Tesla's plans for batteries, China scrutinized as Musk drops features",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/tesla.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Electrified Vehicle Sales Accelerate Significantly in Q2 2021, According to Kelley Blue Book Reporz",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/car.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "These Solar-powered Cabins + architectural designs use green energy storage system to be eco-destinations!",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/solarpower.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
];

var bookmarkedVideoNewsRawData = [
  {
    'title': "Moon-day madness as Jeff Bezos rumoured to be looking at Bitcoin payments for Amazon",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/bitcoin.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Elon Musk drops big hint for Dogecoin that want to make a lot of money",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/lotmoney.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "India vaccination: Six months on, India's vaccine drive is lagging.",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/vaccination.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Virgin Galactic: Richard Branson's long, winding path to space.",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/outerspace.jpg',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Analysis-Tesla's plans for batteries, China scrutinized as Musk drops features",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/tesla.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "Electrified Vehicle Sales Accelerate Significantly in Q2 2021, According to Kelley Blue Book Reporz",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/car.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
  {
    'title': "These Solar-powered Cabins + architectural designs use green energy storage system to be eco-destinations!",
    'video': 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    'thumbnail': 'assets/images/solarpower.JPG',
    'description':
        r'''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque non tellus orci ac auctor. Diam maecenas ultricies mi eget. Varius sit amet mattis vulputate enim nulla. Consectetur adipiscing elit duis tristique sollicitudin. Tellus mauris a diam maecenas sed enim ut sem. Feugiat in fermentum posuere urna nec. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed felis eget velit aliquet. Nunc sed blandit libero volutpat sed. Egestas congue quisque egestas diam in arcu cursus euismod quis. Scelerisque eu ultrices vitae auctor eu augue ut. Blandit aliquam etiam erat velit scelerisque in dictum non consectetur.
        
Malesuada proin libero nunc consequat interdum varius sit. Sollicitudin ac orci phasellus egestas. Ultrices sagittis orci a scelerisque purus semper eget duis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Nisl suscipit adipiscing bibendum est ultricies integer quis. Vestibulum lorem sed risus ultricies. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Volutpat consequat mauris nunc congue nisi. Nisl condimentum id venenatis a condimentum.''',
    'date': 'Jul 14, 2021 ',
    'author': 'anon anon'
  },
];
