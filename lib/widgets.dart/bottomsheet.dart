import 'package:flutter/material.dart';
import 'package:graduationp/models/db.dart';

class Buttomsheet extends StatefulWidget {
  static const String route = '/buttomsheet';

  @override
  _ButtomsheetState createState() => _ButtomsheetState();
}

class _ButtomsheetState extends State<Buttomsheet> {
  String name, number;
  String time = DateTime.now().toString();

  String dropdownValue;
  int i;
  GlobalKey<FormState> form;
  TextEditingController descriptionController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController locationcontoller = TextEditingController();

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    form = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Form(
                  key: form,
                  child: Column(children: [
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: titleController,

                      style: TextStyle(color: Colors.grey),
                      validator: (value) {
                        if (titleController.text.isEmpty) {
                          return ' Title is required';
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        errorStyle: TextStyle(color: Colors.redAccent[900]),
                        labelText: 'Title *',
                        labelStyle: TextStyle(color: Colors.grey),
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (value) {},
                      // ignore: missing_return

                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Description ',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text(
                          '*',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: descriptionController,
                      style: TextStyle(color: Colors.black),
                      validator: (value) {
                        if (descriptionController.text.isEmpty) {
                          return ' Desciption is required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        errorStyle: TextStyle(color: Colors.redAccent[900]),
                        hintStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: locationcontoller,

                      style: TextStyle(color: Colors.grey),
                      validator: (value) {
                        if (titleController.text.isEmpty) {
                          return ' Title is required';
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        errorStyle: TextStyle(color: Colors.redAccent[900]),
                        labelText: 'location ',
                        labelStyle: TextStyle(color: Colors.grey),
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (value) {},
                      // ignore: missing_return

                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          await Dbhandler.instance.Addpost(
                              descriptionController.text,
                              titleController.text,
                              locationcontoller.text,
                              time);
                        },
                        child: Text('add')),
                  ]),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
