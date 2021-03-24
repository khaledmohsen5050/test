import 'package:flutter/material.dart';
import 'package:graduationp/models/db.dart';
import 'package:graduationp/widgets.dart/bottomsheet.dart';

class Lost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        constraints: BoxConstraints(maxHeight: double.infinity),
                        width: MediaQuery.of(context).size.width,
                        //height: MediaQuery.of(context).size.height * 0.25,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Card(
                          elevation: 5,
                          child: Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                child: Image.asset(
                                    'assets/image/nwdn_file_temp_1614590493345.jpg'),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text('title')),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text('desciption')),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text('time')),
                                  Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text('Location'))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                Positioned(
                    right: 20,
                    bottom: 15,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            child: FloatingActionButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(10))),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Buttomsheet();
                                  },
                                );
                              },
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
