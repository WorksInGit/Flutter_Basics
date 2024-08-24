import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _WishlistState();
}

class _WishlistState extends State<Inbox> {
  final List<Map<String, dynamic>> profiles = [
    {
      'profileImage':
          'https://www.brisbaneheadshots.com.au/templates/yootheme/cache/corporate-portraits-linkedin-profile-2eccc0eb.jpeg',
      'name': 'Karl',
      'message': "You're welcome! Here's yo...",
      'time': "3 min ago",
      'showMessage': true
    },
    {
      'profileImage':
          'https://wallpapers.com/images/hd/professional-profile-pictures-1080-x-1080-460wjhrkbwdcp1ig.jpg',
      'name': 'Daniel Thompson',
      'message': "Great, everything looks g...",
      'time': "9 min ago",
      'showMessage': true
    },
    {
      'profileImage':
          'https://www.copeman.nz/wp-content/gallery/professional-profile-pictures/Business-portraits-3351.jpg',
      'name': 'James Mitchell',
      'message': "You're welcome! Here's yo..",
      'time': "4 hours ago",
      'showMessage': false
    },
    {
      'profileImage':
          'https://img.freepik.com/free-photo/young-beautiful-woman-smiling-posing-purple-wall_176420-2852.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1723852800&semt=ais_hybrid',
      'name': 'Emily',
      'message': "You're welcome! Here's yo..",
      'time': "3 min ago",
      'showMessage': false
    },
    {
      'profileImage':
          'https://images.squarespace-cdn.com/content/v1/5c5a48b7809d8e364b16c2bf/1596588225004-L6KFDNJZNB6JB2BH9J9F/corporate+profile+headshot.jpg?format=500w',
      'name': 'Harry',
      'message': "You're welcome! Here's yo..",
      'time': "3 min ago",
      'showMessage': false
    },
    {
      'profileImage':
          'https://www.davidchang.ca/wp-content/uploads/2020/09/David-Chang-Photography-Headshots-Toronto-61-1536x1536.jpg',
      'name': 'Adam',
      'message': "You're welcome! Here's yo..",
      'time': "3 min ago",
      'showMessage': false
    },
    {
      'profileImage':
          'https://cdn.openart.ai/stable_diffusion/20bf8d8b80ef5b05d76f4ce396d4b664467fddac_2000x2000.webp',
      'name': 'Cris mark',
      'message': "You're welcome! Here's yo..",
      'time': "3 min ago",
      'showMessage': false
    },
    {
      'profileImage': 'https://www.perfocal.com/blog/content/images/size/w960/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg',
      'name': 'Sera Martin',
      'message': "You're welcome! Here's yo..",
      'time': "3 min ago",
      'showMessage': false
    },
    {
      'profileImage':
          'https://www.copeman.nz/wp-content/gallery/professional-profile-pictures/Business-portraits-3351.jpg',
      'name': 'Antony',
      'message': "You're welcome! Here's yo..",
      'time': "3 min ago",
      'showMessage': false
    },
    {
      'profileImage':
          'https://img1.wsimg.com/isteam/ip/56c0cc13-b423-4d20-93f5-b95b2a675d4e/Robert-Fishman.jpg',
      'name': 'Jhon George',
      'message': "You're welcome! Here's yo..",
      'time': "3 min ago",
      'showMessage': false
    },
    
    {
      'profileImage':
          'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/001.webp',
      'name': 'David',
      'message': "You're welcome! Here's yo..",
      'time': "3 min ago",
      'showMessage': false
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Inbox',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 0.3)),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Text('Search'),
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: profiles.length,
                itemBuilder: (context, index) {
                  final profile = profiles[index];
                  return ListTile(
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(profile['profileImage']),
                        backgroundColor: Colors.transparent,
                        child: profile['profileImage'] == null
                            ? Icon(
                                Icons.person,
                                color: Colors.black,
                              )
                            : null),
                    title: Text(profile['name']),
                    subtitle: Text(profile['message']),
                    trailing: Column(
                      children: [
                        Text(profile['time']),
                        Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: profile['showMessage'] == true
                                ? Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                        child: Text(
                                      '2',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  )
                                : Container(
                                    height: 20,
                                    width: 20,
                                    decoration:
                                        BoxDecoration(color: Colors.white),
                                  ))
                      ],
                    ),
                  );
                },
              ))
            ],
          )
        ],
      ),
    );
  }
}
