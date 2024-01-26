

class Chat {
  final String title;
  final String subtitle;

  Chat({
    required this.title,
    required this.subtitle,
  });
}

class Items {
  final String img;
  final String title;
  final String subTitle;
  final Chat chat;

  Items({
    required this.img,
    required this.title,
    required this.subTitle,
    required this.chat,
  });
}

// Onboarding Screens Intro Contents for FireAI App
List<Items> listOfItems = [
  Items(
    img: "assets/web/images/image_4_modified.png",
    title: "Welcome to FireAI",
    subTitle:
    "Explore the power of FireAI, your intelligent\nassistant for diverse tasks.",
    chat: Chat(
      title: "Intelligent Assistance",
      subtitle: "FireAI is here to assist you intelligently.",
    ),
  ),
  Items(
    img: "assets/intro2.webp",
    title: "Chat with FireAI",
    subTitle:
    "Engage in natural language conversations\nwith FireAI for information and more.",
    chat: Chat(
      title: "Chat Conversations",
      subtitle: "Experience natural conversations with FireAI.",
    ),
  ),
  Items(
    img: "assets/intro3.webp",
    title: "Discover Features",
    subTitle:
    "Unlock a variety of features including\nimage generation, text transformation, and more.",
    chat: Chat(
      title: "Powerful Features",
      subtitle: "Explore the diverse features of FireAI.",
    ),
  ),
];
