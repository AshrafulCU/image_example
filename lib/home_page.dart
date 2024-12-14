import 'package:flutter/material.dart';
import 'package:image_exampe/new_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,// for center tite

        //title: Text('Image Examp.'),
        title:Align(child: Text("Image Example"),alignment: Alignment.centerRight,),


        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(
                Icons.person,
                size: 60,
                color: Colors.cyanAccent,
              ),
              SizedBox(
                height: 30,
              ),

              Text(
                'Flutter',
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Muhammad_Yunus_at_the_UNGA79_-_2024_%28cropped%29.jpg/424px-Muhammad_Yunus_at_the_UNGA79_-_2024_%28cropped%29.jpg',
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 20,
              ), //for create space
              Image.asset(
                "assets/images/android.png",
                width: 200,
                height: 200,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Dr. Yunus",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("CA"),
                  ),
                ],
              ),



              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewPage()));
                  },
                  child: Text('New Page')),
              SizedBox(height: 20,),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('This is SnackBar')));

              }, label: Text("Icon Button"),
              icon:Icon(Icons.add_alarm,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
