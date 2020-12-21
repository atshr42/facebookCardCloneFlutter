import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> url = [
    "https://i.pinimg.com/originals/0f/67/4b/0f674ba5f875296039c288a526fd06fc.png",
    "https://image.shutterstock.com/image-vector/why-neon-text-vector-sign-260nw-1157269726.jpg",
    "https://thumbs.dreamstime.com/z/where-d-word-red-letters-mystery-location-question-mark-to-ask-spot-best-travel-destination-31478558.jpg",
  ];
  List<String> detailString = [
    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Facebook Card"),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: ListView(
            children: [
              Card(
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/details',
                      arguments: detailString[0],
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "assets/logo.png",
                          height: 50,
                        ),
                        title: Flexible(
                          flex: 6,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Facebook App",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Expanded(
                                child: Text(
                                  "Updated their cover photo",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),

                              // ),
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                          ),
                          onPressed: () {},
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "Aug 26",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.public,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: "Lorem Ipsum",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      " is simply dummy text of the printing and typesetting industry.",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            url[0],
                            // height: 250,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.pushNamed(context, '/details');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "assets/logo.png",
                          height: 50,
                        ),
                        title: Flexible(
                          flex: 6,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Expanded(
                              //   flex: 6,
                              // child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              // children: [
                              Text(
                                "Facebook App",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Expanded(
                                child: Text(
                                  "Updated their cover photo",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),

                              // ),
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                          ),
                          onPressed: () {},
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "Aug 26",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.public,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: "Why",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: "do we use it?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            url[1],
                            // height: 250,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/details',
                      arguments: detailString[0],
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "assets/logo.png",
                          height: 50,
                        ),
                        title: Flexible(
                          flex: 6,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Expanded(
                              //   flex: 6,
                              // child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              // children: [
                              Text(
                                "Facebook App",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Expanded(
                                child: Text(
                                  "Updated their cover photo",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),

                              // ),
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                          ),
                          onPressed: () {},
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "Aug 26",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.public,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: "Where",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: " can i get some?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            url[2],
                            // height: 250,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/details',
                      arguments: detailString[1],
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "assets/logo.png",
                          height: 50,
                        ),
                        title: Flexible(
                          flex: 6,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Expanded(
                              //   flex: 6,
                              // child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              // children: [
                              Text(
                                "Facebook App",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Expanded(
                                child: Text(
                                  "Updated their cover photo",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),

                              // ),
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                          ),
                          onPressed: () {},
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "Aug 26",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.public,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: "Lorem Ipsum",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      " is simply dummy text of the printing and typesetting industry.",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            url[0],
                            // height: 250,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/details',
                      arguments: detailString[0],
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "assets/logo.png",
                          height: 50,
                        ),
                        title: Flexible(
                          flex: 6,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Expanded(
                              //   flex: 6,
                              // child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              // children: [
                              Text(
                                "Facebook App",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Expanded(
                                child: Text(
                                  "Updated their cover photo",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),

                              // ),
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                          ),
                          onPressed: () {},
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "Aug 26",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.public,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: "Where",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: " do we use it?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            url[1],
                            // height: 250,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/details',
                      arguments: detailString[1],
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "assets/logo.png",
                          height: 50,
                        ),
                        title: Flexible(
                          flex: 6,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Expanded(
                              //   flex: 6,
                              // child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              // children: [
                              Text(
                                "Facebook App",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Expanded(
                                child: Text(
                                  "Updated their cover photo",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),

                              // ),
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                          ),
                          onPressed: () {},
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "Aug 26",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.public,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: "Where",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: " does it come from?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            url[2],
                            // height: 250,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/details',
                      arguments: detailString[2],
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "assets/logo.png",
                          height: 50,
                        ),
                        title: Flexible(
                          flex: 6,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Expanded(
                              //   flex: 6,
                              // child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              // children: [
                              Text(
                                "Facebook App",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Expanded(
                                child: Text(
                                  "Updated their cover photo",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),

                              // ),
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                          ),
                          onPressed: () {},
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "Aug 26",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.public,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: "Lorem Ipsum",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      " is simply dummy text of the printing and typesetting industry.",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            url[0],
                            // height: 250,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/details',
                      arguments: detailString[0],
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "assets/logo.png",
                          height: 50,
                        ),
                        title: Flexible(
                          flex: 6,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Expanded(
                              //   flex: 6,
                              // child: Row(
                              // mainAxisSize: MainAxisSize.max,
                              // children: [
                              Text(
                                "Facebook App",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Expanded(
                                child: Text(
                                  "Updated their cover photo",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),

                              // ),
                            ],
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                          ),
                          onPressed: () {},
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "Aug 26",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle,
                              size: 5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.public,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: "Why",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: " do we use it?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            url[1],
                            // height: 250,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
