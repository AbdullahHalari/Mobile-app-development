import 'package:flutter/material.dart';
class Todo extends StatefulWidget {
  const Todo({Key  key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  var input;
  List<dynamic> lst = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Center(child: Text("Todo App")),
          backgroundColor: Colors.black,
          toolbarHeight: 40,
        ),
      body: 
 
      ListView.builder(
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return Container(
      
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                margin: EdgeInsets.only(top: 15),
                child: ListTile(
                  title: Text("${lst[index]}" ,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color:  Colors.white),),
                  trailing: Container(
                    width: 50,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Icon(Icons.edit,color: Colors.white,),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Edit Item"),
                                    content: TextField(
                                      onChanged: (value) {
                                        input = value;
                                      },
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              lst.replaceRange(
                                                  index, index + 1, {input});
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("Edit"))
                                    ],
                                  );
                                });
                          },
                        ),
                        GestureDetector(
                          child: Icon(Icons.delete,color: Colors.white,),
                          onTap: () {
                            setState(() {
                              lst.removeAt(index);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ));
          }),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
              
                child: Text("Clear"),
                
                onPressed: () {
                  
                  
                  setState(() {
                    lst.clear();
                  });
                  
                },
                backgroundColor: Colors.black,
              ),
              FloatingActionButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Add Item"),
                          content: TextField(
                            onChanged: (value) {
                              input = value;
                            },
                          ),
                          actions: [
                            ElevatedButton(
                              
   style: ElevatedButton.styleFrom(
                            primary: Colors.black,  ),
                                onPressed: () {
                                 
    
                                  setState(() {
                                    lst.add(input);
                                  });
                                  Navigator.of(context).pop();
                                },

                                child: Text("Add"), 
      
)
                          ],
                        );
                      });
                },
                child: Text("Add"),
                backgroundColor: Colors.black,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
