import 'package:flutter/material.dart';
import 'package:portfolio_demo/translation_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  bool animating = false;
  // int index = 0;
  // double height;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    Future.delayed(Duration(seconds: 1), () {
      _scrollController
          .animateTo(height - height * .3,
              duration: Duration(seconds: 1), curve: Curves.easeInOut)
          .then((value) => animating = false);
    });
    return Material(
        child: Container(
      height: height,
      width: width,
      child: Stack(children: [
        BackGround(),
        ForeGround(),
      ]),
    ));
  }
}

class ForeGround extends StatefulWidget {
  @override
  _ForeGroundState createState() => _ForeGroundState();
}

class _ForeGroundState extends State<ForeGround>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var duration = new Duration(milliseconds: 500);
    var delay1 = Duration.zero;
    var delay2 = Duration(milliseconds: 300);
    var delay3 = Duration(milliseconds: 500);
    var delay4 = Duration(milliseconds: 600);
    var baseStyle = TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w100,
        color: Colors.grey[300],
        decoration: TextDecoration.none);
    var fadeStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w100,
        fontStyle: FontStyle.normal,
        color: Colors.grey,
        decoration: TextDecoration.none);
    return Column(children: [
      Expanded(
          flex: 2,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TranslationAnimation(
                            child: Text(
                              "Carlos\nMendoza",
                              style: baseStyle.copyWith(fontSize: 84),
                            ),
                            duration: duration,
                            delay: Duration.zero,
                          ),
                          TranslationAnimation(
                            child: SizedBox(
                                width: 80,
                                height: 7,
                                child: ColoredBox(color: Colors.amber)),
                            delay: Duration(milliseconds: 300),
                            duration: duration,
                          ),
                        ],
                      ),
                      Row(children: [
                        TranslationAnimation(
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset("assets/icons/twitter.png",
                                  height: 20, width: 20, color: Colors.white)),
                          delay: Duration(milliseconds: 500),
                          duration: duration,
                        ),
                        SizedBox(width: 10),
                        TranslationAnimation(
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset("assets/icons/facebook.png",
                                  height: 20, width: 20, color: Colors.white)),
                          delay: Duration(milliseconds: 500),
                          duration: duration,
                        ),
                        SizedBox(width: 10),
                        TranslationAnimation(
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset("assets/icons/instagram.png",
                                  height: 20, width: 20, color: Colors.white)),
                          delay: Duration(milliseconds: 500),
                          duration: duration,
                        ),
                        SizedBox(width: 10),
                      ]),
                      Container()
                    ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TranslationAnimation(
                      delay: delay1,
                      duration: duration,
                      child: Text("- introduction",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey,
                              decoration: TextDecoration.none)),
                    ),
                    SizedBox(height: 20),
                    TranslationAnimation(
                      delay: delay2,
                      duration: duration,
                      child: Text(
                          "Product Designer\nAnd Developer\nBased In California",
                          style: baseStyle),
                    ),
                    SizedBox(height: 20),
                    TranslationAnimation(
                      delay: delay3,
                      duration: duration,
                      child: Container(
                        width: 250,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the rindustry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                          style: fadeStyle.copyWith(fontSize: 15),
                          maxLines: 3,
                          softWrap: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TranslationAnimation(
                      delay: delay4,
                      duration: duration,
                      child: Row(
                        children: [
                          Text("My Story",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.amber,
                                  fontSize: 16)),
                          SizedBox(width: 30),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.amber,
                              size: 16,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ])),
      Expanded(
        flex: 1,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TranslationAnimation(
                  delay: delay1,
                  duration: duration,
                  child: Text("- contact",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal,
                          color: Colors.grey,
                          decoration: TextDecoration.none)),
                ),
                SizedBox(height: 20),
                TranslationAnimation(
                  delay: delay2,
                  duration: duration,
                  child: Text("Any Type Of Query\n& Discussion",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.grey[350],
                          decoration: TextDecoration.none)),
                )
              ]),
          TranslationAnimation(
            delay: delay1,
            duration: duration,
            child: Text(
                "you cant use up creativity,\nthe more you use, more have\nin your signifant mind",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey[300],
                    decoration: TextDecoration.none)),
          )
        ]),
      )
    ]);
  }
}

class BackGround extends StatefulWidget {
  @override
  _BackGroundState createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  final lightBlue = Color(0xff283747);
  final darkBlue = Color(0xff17202a);
  int duration = 700;
  double imageTranslation = -40.0;
  double containerHeightOffset = 40;

  _update() {
    imageTranslation = 0;
    containerHeightOffset = 0;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, _update);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
        fit: StackFit.loose,
        alignment: Alignment.topCenter,
        children: [
          Container(color: darkBlue, height: height, width: width),
          AnimatedContainer(
            duration: Duration(milliseconds: duration),
            height: (height * .66) + containerHeightOffset,
            color: lightBlue,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                transform: Matrix4.identity()..translate(imageTranslation),
                duration: Duration(milliseconds: duration),
                child: Image.asset("assets/images/person.png"),
              ),
            ),
          ),
        ]);
  }
}
