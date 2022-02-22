import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      home: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.teal,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "About FAMT",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Vision & Mission",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              onSelected: (value)=> {
              if (value == 0) {
                about(context),
              }
              else{
                mission(context),
              }
              },
            ),
          ),
          title: Text("Welcome To IT Department"),
          backgroundColor: Colors.teal[700],
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                Image.network(
                  'https://images.shiksha.com/mediadata/images/1547198255phpre9PGZ.jpeg',
                  height: 400,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      child: Text('IP LAB'),
                      onPressed: () => IPLAB(context),
                      padding: EdgeInsets.all(18.0),
                      color: Colors.teal[700],
                      textColor: Colors.white,  
                    ),
                    RaisedButton(
                      child: Text('SECURITY LAB'),
                      onPressed: () => SECURITYLAB(context),
                      padding: EdgeInsets.all(18.0),
                      color: Colors.teal[700],
                      textColor: Colors.white, 
                    ),
                    RaisedButton(
                      child: Text('DEVOPS LAB'),
                      onPressed: () => DEVOPSLAB(context),
                      padding: EdgeInsets.all(18.0),
                      color: Colors.teal[700],
                      textColor: Colors.white, 
                    ),
                    RaisedButton(
                      child: Text('SENSOR LAB'),
                      onPressed: () => SENSORLAB(context),
                      padding: EdgeInsets.all(18.0),
                      color: Colors.teal[700],
                      textColor: Colors.white, 
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                
                
                RaisedButton(
                  child: Text('CONTACT US'),
                  onPressed: () => CONTACTUS(context),
                  padding: EdgeInsets.all(.0),
                  color: Colors.teal[700],
                  textColor: Colors.white, 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void CONTACTUS(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('CONTACT US',
         style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold,fontFamily: 'Raleway'),),
          content: Text('Email ID: hodit@famt.ac.in\n\nAddress: FAMT, P- 60, P- 60/1, MIDC, Mirjole Block, Ratnagiri - 415639\n\nPhone No: 7559463770'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void IPLAB(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('WELCOME TO IP LAB',
          style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold,fontFamily: 'Raleway'),),),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1547198350phpWXQrB0.jpeg',
                height: 350,
                width: 800,
              ),
              Text("\n The objectives of IP Lab are:",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
              Text("\n 1) To orient students to HTML for making webpages \n 2) To expose students to CSS for formatting web pages \n 3) To expose students to developing responsive layout \n 4) To expose students to JavaScript to make web pages interactive \n 5) To orient students to React for developing front end applications \n 6) To orient students to Node.js for developing backend applications"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void SECURITYLAB(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('WELCOME TO SECURITY LAB',
          style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold,fontFamily: 'Raleway'),),),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1585826982php0LbPhv.jpeg',
                height: 350,
                width: 800,
              ),
            Text("\n The objectives of Security Lab are:",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
            Text("\n 1) To apply the knowledge of symmetric cryptography to implement classical ciphers \n 2) To analyze and implement public key encryption algorithms, hashing and digital signature algorithms. \n 3) To explore the different network reconnaissance tools to gather information about networks \n 4) To explore the tools like sniffers, port scanners and other related tools for analyzing. \n 5) To Scan the network for vulnerabilities and simulate attacks.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void SENSORLAB(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext context){
        return AlertDialog(
          title: Center(child: Text('WELCOME TO SENSOR LAB', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Raleway'),),),
          content: Column(
            children: [
              Image.network(
                'https://i0.wp.com/famt.ac.in/wp-content/uploads/2015/08/MG_9805.jpg?resize=350%2C233',
                height: 350,
                width: 800,
              ),
            Text("\n The objectives of SENSOR Lab are:",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
            Text("\n 1) Learn various communication technologies, Microcontroller boards and sensors. \n 2) Design the problem solution as per the requirement analysis done using sensors and technologies. \n 3) Study the basic concepts of programming/sensors/ emulators. \n 4) Design and implement the mini project intended solution for project based earning. \n 5) Build, test and report the mini project successfully."),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
         


  void DEVOPSLAB(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child : Text('WELCOME TO DEVOPS LAB',
          style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold,fontFamily: 'Raleway'),),),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1637922115phpDFaiyx.jpeg',
                height: 350,
                width: 800,
              ),
            Text("\n The objectives of IP Lab are:",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
            Text("\n 1) To understand DevOps practices which aims to simplify Software Development Life Cycle \n 2) To be aware of different Version Control tools like GIT, CVS or Mercurial \n 3) To Integrate and deploy tools like Jenkins and Maven, which is used to build, test and deploy applications in DevOps environment \n 4) To be familiarized with selenium tool, which is used for continuous testing of applications deployed \n 5) To use Docker to Build, ship and manage applications using containerization "),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void mission(BuildContext context) {
    //print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vision & Mission',textAlign: TextAlign.center,style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 28),),
          content: Column(
            children: [
              Image.network(
                'https://www.liquidplanner.com/wp-content/uploads/2013/12/iStock-520289888-2-e1641284826152.jpg',
              
                height: 200,
                width: 1000,
                
              ),
            Text("\n\n Vision",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            Text("\n To provide excellent Information Technology  education and aspire to nurture students as leaders who are in tune with global IT Trends"),
            Text("\n Mission",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            Text("\n M1) To Enrich students by rigorously implementing quality education\n M2)To make students industry ready \n M3) To imbibe professional ethics and social values in the students and make them responsible citizens."),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}

void about(BuildContext context) {
    //print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('About FAMT',textAlign: TextAlign.center,style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 28),),
          content: Column(
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSISQahdAJGJFAB0nnOzVLmQwjQ6MvddXufw82pEVIh7mi_akGxuprzDQvNK-O54rr2M4c&usqp=CAU',
              
                height: 200,
                width: 800,
                
              ),
            //Text("\n\n About FAMT",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            Text("\n\n\n Finolex Academy of Management and Technology (FAMT) was established in 1996 to impart quality technical education at affordable cost and contribute to the industrial growth of our nation. The academy is approved by All India Council for Technical Education (AICTE), New Delhi; recognized by Directorate of Technical Education (DTE), Government of Maharashtra, affiliated to University of Mumbai, and accredited with B++ Grade by National Assessment & Accreditation Council (NAAC).\n\n Situated on the picturesque coast of western Maharashtra, FAMT is one of the reputed engineering institutes in the region and state. The academy is known for its quality technical education and has a distinct identity in the University of Mumbai for its consistently outstanding results. The academy has received appreciation and many awards from various national bodies.\n\n FAMT focuses on nurturing young technical professionals who are immensely dedicated and adept in their field and strongly believe in fair play, perseverance and harmonious development of mind and personality of our students. Accordingly, the academy takes efforts to offer a vibrant academic ambiance. The academy provides various incentives in the form of scholarships and prizes, and co-curricular and extracurricular platforms to foster leadership, team skills, creativity and entrepreneurial values among students."),
            
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }