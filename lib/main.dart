import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

void main()
{
  runApp(MaterialApp(home: Screens(),));
  {

  }
}

//Screens is the main class that is displaying the app
class Screens extends StatelessWidget
{
  TabController _tabController;

  @override

  //initstate is telling the tab controller that there are 4 tabs and that it needs to be refreshed into the next state
  void initState()
  {
    _tabController = TabController(length: 3, vsync: RefreshIndicatorState());

  }

  //void dispose is removing the previous tab controller
  @override
  void dispose()
  {
    _tabController.dispose();

  }

  //here is were we build the app and the contents  we see
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "All about me!", //title to the app
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[ // This displays the tabs and the names of each
                Tab(icon: Text("About")),
                Tab(icon: Text("Interests")),
                Tab(icon: Text("Gaming")),
              ],
              controller: _tabController, // the tab controller is located here
            ),
            title: Text("Ethan Hoff"), // the title to the app bar
          ),
          body: TabBarView(controller: _tabController, children: <Widget>[
            Container(
              decoration: BoxDecoration( //add a border
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black87,// set border color
                      width: 3.0),   // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))]// make rounded corner of border
              ),
              padding: EdgeInsets.all(20.0),
              child: ListView(
                padding: EdgeInsets.only(bottom: 40.0),
                children: <Widget>[
                  Text("Everything you need to know about me!", textAlign: TextAlign.center, style: new TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                  ),),
                  Image.asset("Assets/games.jpg", scale: 1,),
                  Padding( //Padding to make space
                    padding: const EdgeInsets.all(8.0),
                  ),
                  FutureBuilder(future: DefaultAssetBundle.of(context).loadString("Assets/aboutme.txt"),
                      builder: (context, snapshot)
                      {
                        return Text(snapshot.data ?? "", softWrap: true);
                      }
                  ),
                  Padding( //Padding to make space
                    padding: const EdgeInsets.all(8.0),
                  ),

                  Image.asset("Assets/keyboard.jpg", scale: 1,),



                ],


              ),

            ),
            Container(
              decoration: BoxDecoration( //add a border
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black87,// set border color
                      width: 3.0),   // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))]// make rounded corner of border
              ),
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: <Widget>[
                  Text("Interests", textAlign: TextAlign.center, style: new TextStyle(
                      fontSize: 40.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Image.asset("Assets/gaming.jpg", scale: 2,),
                  Padding( //Padding to make space
                    padding: const EdgeInsets.all(8.0),
                  ),
                  FutureBuilder(future: DefaultAssetBundle.of(context).loadString("Assets/interests.txt"),
                      builder: (context, snapshot)
                      {
                        return Text(snapshot.data ?? "", softWrap: true);
                      }
                  ),

                ],

              ),

            ),
            Container(
              decoration: BoxDecoration( //add a border
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black87,// set border color
                      width: 3.0),   // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))]// make rounded corner of border
              ),
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: <Widget>[
                  Text("Gaming!", textAlign: TextAlign.center, style: new TextStyle(
                      fontSize: 40.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("Just a few of the games I enjoy the most", textAlign: TextAlign.center, style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.black
                  ),),
                  Padding( //Padding to make space
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Image.asset("Assets/zelda.jpg", scale: 1,),
                  Padding( //Padding to make space
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Image.asset("Assets/zelda2.jpg", scale: 1,),
                  Padding( //Padding to make space
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Image.asset("Assets/zelda3.jpg", scale: 1,)

                ],

              ),

            ),
          ]),
        ),
      ),
    );
  }
}

class Test extends StatefulWidget
{
  //contructor
  Test({Key key, this.title}): super(key:key);

  final String title;

  @override
  _TestState createState() => new _TestState();
}

class _TestState extends State<Test> {

  @override
  Widget build(BuildContext context) {
    var button = new IconButton(
        icon: new Icon(Icons.access_alarms),);
    return new Scaffold(
        appBar: AppBar(title: Text(widget.title))
    );
  }
}