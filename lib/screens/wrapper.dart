import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tea_trover/screens/phoneNumberVerification.dart';
import '../controllers/controllers.dart';
import 'bottomNavigationBar.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  @override
  void initState() {
    Controllers.isLogedIn().then((onValue){
      if(onValue){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Bottomnavigationbarscreen()));
      }
      else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Phonenumberverification()));
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/imgs/background_2.png'),
            fit: BoxFit.cover,
          )
        ),
        child: ListView(
          padding: EdgeInsets.fromLTRB(5,(MediaQuery.of(context).size.height)/3,5,5),

          children: [

            SizedBox(height: 150,),

            SpinKitThreeBounce(
              color: Color.fromRGBO(255, 199, 0, 1),
              size: 25,
            )
          ],
        ),
      )
    );
  }
}
