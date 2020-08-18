import 'package:calculationdairy/base/animationutils/FadeIn.dart';
import 'package:calculationdairy/utils/const/color_const.dart';
import 'package:calculationdairy/utils/const/string_const.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
              color: primaryColors
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80,),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(delay:0.8,child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(delay:2.2, child:
                          InkWell(
                            onTap: ()  {

                            },
                            child:
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white
                              ),
                              child: Center(
                                child: Text(readCsv, style: TextStyle(color: primaryColors, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )),
                        ],
                      ) ,),
                      SizedBox(height: 26,),
                      FadeAnimation(delay:0.5,child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(delay:2.2, child:
                          InkWell(
                            onTap: ()  {

                            },
                            child:
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white
                              ),
                              child: Center(
                                child: Text(orderHistory, style: TextStyle(color: primaryColors, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )),
                        ],
                      ) ,),
                      SizedBox(height: 26,),
                      FadeAnimation(delay:0.3,child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(delay:2.2, child:
                          InkWell(
                            onTap: ()  {

                            },
                            child:
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white
                              ),
                              child: Center(
                                child: Text(filterApply, style: TextStyle(color: primaryColors, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )),
                        ],
                      ) ,),


                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }



  }

