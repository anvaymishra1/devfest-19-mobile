import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devfest_gandhinagar/dialogs/error_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:devfest_gandhinagar/home/speaker.dart';
import 'package:devfest_gandhinagar/home/team.dart';
import 'package:devfest_gandhinagar/universal/dev_scaffold.dart';
import 'package:devfest_gandhinagar/utils/tools.dart';
import 'package:devfest_gandhinagar/universal/profileAvatar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamPage extends StatelessWidget {
  static const String routeName = "/team";
  static List<Team> teamList;

  Widget socialActions(context, Team team) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookF,
                size: 15,
              ),
              onPressed: () {
                launch(team.fbUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launch(team.twitterUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
              ),
              onPressed: () {
                launch(team.linkedinUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 15,
              ),
              onPressed: () {
                launch(team.githubUrl);
              },
            ),
          ],
        ),
      );
  void putFirebaseData() {
    // Map<String, dynamic> data = new Map<String, dynamic>();
    Firestore.instance.collection("team").document("1").setData({
      'contribution': "hello",
      'desc': "hello",
      'fb_url': "hello",
      'github_url': "hello",
      'image': "hello",
      'job': "hello",
      'linkedin_url': "hello",
      'name': "Aashutosh Rathi",
      'speciality': "hello",
      'twitter_url': "hello",
    });
    Firestore.instance.collection("team").document("2").setData({
      'contribution': "Web Development Team",
      'desc': "I'm currently studying in IIIT Vadodara second year. I've knowledge about Nodejs. I'm familiar with c++, java, javascript,html,css and mysql . ",
      'fb_url': "https://www.facebook.com/sam.143.adi",
      'github_url': "https://github.com/pAditya198",
      'image': "https://github.com/pAditya198.png",
      'job': "student",
      'linkedin_url': "",
      'name': "Aditya Prakash Chaudhary",
      'speciality': "Web Development",
      'twitter_url': "https://twitter.com/paditya198",
    });
    Firestore.instance.collection("team").document("3").setData({
      'contribution': "Social Media and Website",
      'desc': "Sophomore at IIIT Vadodara | Python Lover | Avid Reader",
      'fb_url': "https://www.facebook.com/thepushkarp",
      'github_url': "https://github.com/thepushkarp",
      'image': "https://github.com/thepushkarp.png",
      'job': "student",
      'linkedin_url': "",
      'name': "Pushkar Patel",
      'speciality': "",
      'twitter_url': "https://twitter.com/thepushkarp",
    });
    Firestore.instance.collection("team").document("4").setData({
      'contribution': "Web App",
      'desc': "Sophomore at @iiitv · Tech-Enthusiast · Anime-Lover · Manga-Reader",
      'fb_url': "https://www.facebook.com/amanraj1608",
      'github_url': "https://github.com/AmanRaj1608",
      'image': "https://github.com/AmanRaj1608.png",
      'job': "student",
      'linkedin_url': "",
      'name': "Aman Raj",
      'speciality': "",
      'twitter_url': "https://twitter.com/amanraj1608",
    });
    Firestore.instance.collection("team").document("5").setData({
      'contribution': "Android app",
      'desc': "I Dipansh Khandelwal, am a Computer Science senior at IIIT Vadodara. I like to explore new things and learn new stuff I found. Presently I'm involved with React and Flutter.",
      'fb_url': "https://www.facebook.com/dipanshkhandelwal.0",
      'github_url': "https://github.com/DipanshKhandelwal",
      'image': "https://github.com/DipanshKhandelwal.png",
      'job': "student",
      'linkedin_url': "",
      'name': "Dipansh Khandelwal",
      'speciality': "",
      'twitter_url': "",
    });
    Firestore.instance.collection("team").document("6").setData({
      'contribution': "Website",
      'desc': "I am a frontend developer, a design enthusiast and a blogger. Aside from developing cool websites, I write blogs at my blog - Tech no Kami.",
      'fb_url': "https://facebook.com/technokami",
      'github_url': "https://github.com/rossoskull",
      'image': "https://github.com/rossoskull.png",
      'job': "student",
      'linkedin_url': "",
      'name': "Jay Mistry",
      'speciality': "",
      'twitter_url': "https://twitter.com/_technokami_",
    });
    Firestore.instance.collection("team").document("7").setData({
      'contribution': "Web app",
      'desc': "I am 3rd year undergraduate IIIT Vadodara student.",
      'fb_url': "https://www.facebook.com/kool.samagra.gupta",
      'github_url': "https://github.com/samagragupta",
      'image': "https://github.com/samagragupta.png",
      'job': "student",
      'linkedin_url': "",
      'name': "Samagra Gupta",
      'speciality': "",
      'twitter_url': "https://twitter.com/Samagra14",
    });
    Firestore.instance.collection("team").document("8").setData({
      'contribution': "Mobile App",
      'desc': "Sophomore at Indian Institute of Information Technology, Vadodara. Familiar with C, C++ and recently started exploring Flutter.",
      'fb_url': "https://www.facebook.com/profile.php?id=100027003248357",
      'github_url': "https://github.com/ashutoshsingh05",
      'image': "https://github.com/ashutoshsingh05.png",
      'job': "student",
      'linkedin_url': "",
      'name': "Ashutosh Singh",
      'speciality': "",
      'twitter_url': "https://twitter.com/_ashutoshsingh5?s=08",
    });
    Firestore.instance.collection("team").document("9").setData({
      'contribution': "Media Partner",
      'desc':"",
      'fb_url': "",
      'github_url': "",
      'image': "",
      'job': "freelancer, Founder, CEO",
      'linkedin_url': "",
      'name': "Dron Trivedi",
      'speciality': "",
      'twitter_url': "",
    });
    Firestore.instance.collection("team").document("10").setData({
      'contribution': "Designs",
      'desc':"Design Enthusiast",
      'fb_url': "",
      'github_url': "",
      'image': "",
      'job': "student",
      'linkedin_url': "",
      'name': "Pranay Agarwal",
      'speciality': "",
      'twitter_url': "https://twitter.com/py_agarwal",
    });
    Firestore.instance.collection("team").document("11").setData({
      'contribution': "Design Team",
      'desc':"My name is Utkarsh Tiwari. And I am a Btech second year student currently studying in Indian Institute of Information Technology, Vadodara. I am a techical enthuthiast ,seeing the world with new vision of designing. I enjoy creating new things in designing mainly logo designing, graphic designing which can change people's perspective of seeing things. Beside designing I also like creating websites through web developement.",
      'fb_url': "https://m.facebook.com/utkarsh.tiwari.75?ref=bookmarks",
      'github_url': "",
      'image': "",
      'job': "student",
      'linkedin_url': "",
      'name': "Utkarsh Tiwari",
      'speciality': "",
      'twitter_url': "https://twitter.com/Utkarsh28608681?s=09",
    });
    Firestore.instance.collection("team").document("12").setData({
      'contribution': "Designing",
      'desc':"I'm Sahil Kundal , persuing B.Tech CSE at Indian Institute of Information Technology ,Vadodara",
      'fb_url': "www.facebook.com/sahilkundal1234",
      'github_url': "",
      'image': "",
      'job': "student",
      'linkedin_url': "",
      'name': "Sahil Kundal",
      'speciality': "",
      'twitter_url': "",
    });
    Firestore.instance.collection("team").document("13").setData({
      'contribution': "Design Team( promotion posters, stickers and badges, speaker announcement poster)",
      'desc':"I am a student of Indian Institute of Information Technology, Vadodara, currently in 2nd year. I am also the Joint Secretary of our Institute's design club.",
      'fb_url': "",
      'github_url': "https://github.com/kavyatripathi",
      'image': "https://github.com/kavyatripathi.png",
      'job': "student",
      'linkedin_url': "",
      'name': "Kavya Tripathi",
      'speciality': "",
      'twitter_url': "",
    });
    Firestore.instance.collection("team").document("13").setData({
      'contribution': "Design Team",
      'desc':"I'm student of IIITV and I'm designing t-shirt for Devfest Gandhinagar",
      'fb_url': "",
      'github_url': "",
      'image': "",
      'job': "student",
      'linkedin_url': "",
      'name': "Aman Sagar",
      'speciality': "",
      'twitter_url': "",
    });
    Firestore.instance.collection("team").document("13").setData({
      'contribution': "Design Team",
      'desc':"Student of CS at Indian Institute of Information Technology Vadodara",
      'fb_url': "",
      'github_url': "",
      'image': "",
      'job': "student",
      'linkedin_url': "",
      'name': "Shivlal Jat",
      'speciality': "",
      'twitter_url': "",
    });
  }

  @override
  Widget build(BuildContext context) {
    teamList = List<Team>();
    // var _homeBloc = HomeBloc();
    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance.collection("team").getDocuments(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Center(
              child: SpinKitChasingDots(
                color: Colors.red,
              ),
            ),
          );
        } else {
          if (snapshot.hasError) {
            return Center(
              child: ErrorDialog(
                error: snapshot.error,
                child: Text("Oops! Error Occured!"),
              ),
            );
          } else {
            for (int i = 0; i < snapshot.data.documents.length; i++) {
              teamList.add(Team.fromJson(snapshot.data.documents[i].data));
            }
            return DevScaffold(
              title: "Team",
              body: ListView.builder(
                itemCount: teamList.length,
                shrinkWrap: true,
                itemBuilder: (c, i) {
                  return Card(
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ConstrainedBox(
                            constraints: BoxConstraints.expand(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.height * 0.15,
                            ),
                            child: CustomPaint(
                              painter: ProfileAvatar(),
                              child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.yellow,
                                ),
                                child: CircleAvatar(
                                  radius: 55,
                                  backgroundImage: CachedNetworkImageProvider(
                                    teamList[i].image,
                                  ),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      teamList[i].name,
                                      style: Theme.of(context).textTheme.title,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height: 5,
                                      color: Tools
                                          .multiColors[Random().nextInt(4)],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                socialActions(context, teamList[i]),
                                Text(
                                  teamList[i].desc,
                                  style: Theme.of(context).textTheme.subtitle,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  teamList[i].contribution,
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }
        }
      },
    );
  }
}
