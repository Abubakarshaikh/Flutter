import 'package:flutter/material.dart';

void main() {
  runApp(Gallery());
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade50,
        appBar: AppBar(
          title: Text("Gallery"),
          backgroundColor: Colors.teal.shade900,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              'https://picsum.photos/id/237/200/300',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Image.network(
                              "https://picsum.photos/200",
                              fit: BoxFit.contain,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
