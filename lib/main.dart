import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'checkout.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body:  MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {

  MyStatelessWidget({Key? key,});

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Column(
          children: [
            ImageSlideshow(
              width: double.infinity,
              height: 180,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/Slider1.jpg',
                    fit: BoxFit.fill,
                    // height: 100,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/Slider2.jpeg',
                    // height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/Slider3.jpg',
                    // height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/Slider4.webp',
                    fit: BoxFit.fill,
                    // height: 100,
                  ),
                ),
              ],
              onPageChanged: (value) {
                print('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
            ),
            SizedBox(width: 10, height: 20,),
            Row(
              children: [
                InkWell(
                  child: Image.asset('assets/Candies.png',fit: BoxFit.fill,height: 80,width: 80,),
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 3500,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Image.asset('assets/Candies.png',fit: BoxFit.fill,height: 80,width: 80,),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('Candies'),
                                        SizedBox(height: 10,),
                                        Text('\u{20B9}${40}'),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25,),
                                Align(
                                    alignment: Alignment(-0.9,0.12),
                                    child: ElevatedButton(onPressed:(){
                                      final snackBar = SnackBar(
                                        content:  TextButton(
                                          onPressed: () {
                                            Navigator.push(context,
                                            MaterialPageRoute(builder: (context)=>Cart())
                                            );
                                          },
                                          child: const Text('add to cart'),
                                        ),
                                        action: SnackBarAction(
                                          label: 'Undo',
                                          onPressed: () {

                                          },
                                        ),
                                      );

                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      Navigator.pop(context);
                                      },
                                        child: Text('Add to Cart')))
                        ],
                            ),
                          );
                      },
                    );
                  },
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text('Candies'),
                    SizedBox(height: 10,),
                    Text('\u{20B9}${40}'),
                  ],
                )
              ],
            ),

            SizedBox(height: 20,),

            Row(
              children: [
                InkWell(
                  child: Image.asset('assets/Salad2.png',fit: BoxFit.fill,height: 80,width: 80,),
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 3500,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Image.asset('assets/Salad2.png',fit: BoxFit.fill,height: 80,width: 80,),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Salad'),
                                      SizedBox(height: 10,),
                                      Text('\u{20B9}${40}'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              Align(
                                  alignment: Alignment(-0.9,0.12),
                                  child: ElevatedButton(onPressed:(){
                        final snackBar = SnackBar(
                        content:  TextButton(
                        onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Cart())
                        );
                        },
                        child: const Text('add to cart'),
                        ),
                        action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {

                        },
                        ),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.pop(context);
                        }, child: Text('Add to Cart')))
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text('Salad'),
                    SizedBox(height: 10,),
                    Text('\u{20B9}${40}'),
                  ],
                )
              ],
            ),

            SizedBox(height: 20,),

            Row(
              children: [
                InkWell(
                  child: Image.asset('assets/Sweet-Bowl.png',fit: BoxFit.fill,height: 80,width: 80,),
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 3500,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Image.asset('assets/Sweet-Bowl.png',fit: BoxFit.fill,height: 80,width: 80,),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Sweet-Bowl'),
                                      SizedBox(height: 10,),
                                      Text('\u{20B9}${40}'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              Align(
                                  alignment: Alignment(-0.9,0.12),
                                  child: ElevatedButton(onPressed:(){
                        final snackBar = SnackBar(
                        content:  TextButton(
                        onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Cart())
                        );
                        },
                        child: const Text('add to cart'),
                        ),
                        action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {

                        },
                        ),
                        );

                        // Find the ScaffoldMessenger in the widget tree
                        // and use it to show a SnackBar.
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.pop(context);
                        }, child: Text('Add to Cart')))
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text('Sweet-Bowl'),
                    SizedBox(height: 10,),
                    Text('\u{20B9}${40}'),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
    SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
        children: [
        InkWell(
        child: Image.asset('assets/Dessert.png',fit: BoxFit.fill,height: 80,width: 80,),
        onTap: () {
        showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
        return Container(
        height: 3500,
        child: Column(
        children: [
        Row(
        children: [
        Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        Image.asset('assets/Dessert.png',fit: BoxFit.fill,height: 80,width: 80,),
        ],
        ),
        Column(
        children: [
        Text('Dessert'),
        SizedBox(height: 10,),
        Text('\u{20B9}${40}'),
        ],
        ),
        ],
        ),
        SizedBox(height: 25,),
        Align(
        alignment: Alignment(-0.9,0.12),
        child: ElevatedButton(onPressed:(){
        final snackBar = SnackBar(
        content:  TextButton(
        onPressed: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context)=>Cart())
        );
        },
        child: const Text('add to cart'),
        ),
        action: SnackBarAction(
        label: 'Undo',
        onPressed: () {

        },
        ),
        );

        // Find the ScaffoldMessenger in the widget tree
        // and use it to show a SnackBar.
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.pop(context);
        },
        child: Text('Add to Cart')))
        ],
        ),
        );
        },
        );
        },
        ),
        SizedBox(width: 15,),
        Column(
        children: [
        Text('Dessert'),
        SizedBox(height: 10,),
        Text('\u{20B9}${40}'),
        ],
        ),
          SizedBox(width: 15,),
          InkWell(
            child: Image.asset('assets/Bread-Slices.png',fit: BoxFit.fill,height: 80,width: 80,),
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 3500,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset('assets/Bread-Slices.png',fit: BoxFit.fill,height: 80,width: 80,),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Bread'),
                                SizedBox(height: 10,),
                                Text('\u{20B9}${40}'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 25,),
                        Align(
                            alignment: Alignment(-0.9,0.12),
                            child: ElevatedButton(onPressed:(){
                              final snackBar = SnackBar(
                                content:  TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>Cart())
                                    );
                                  },
                                  child: const Text('add to cart'),
                                ),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  onPressed: () {

                                  },
                                ),
                              );

                              // Find the ScaffoldMessenger in the widget tree
                              // and use it to show a SnackBar.
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              Navigator.pop(context);
                            },
                                child: Text('Add to Cart')))
                      ],
                    ),
                  );
                },
              );
            },
          ),
          SizedBox(width: 15,),
          Column(
            children: [
              Text('Bread'),
              SizedBox(height: 10,),
              Text('\u{20B9}${40}'),
            ],
          ),
          SizedBox(width: 15,),
          InkWell(
            child: Image.asset('assets/Pizza.png',fit: BoxFit.fill,height: 80,width: 80,),
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 3500,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset('assets/Pizza.png',fit: BoxFit.fill,height: 80,width: 80,),
                              ],
                            ),
                            Column(
                              children: [
                                Text('Pizza'),
                                SizedBox(height: 10,),
                                Text('\u{20B9}${40}'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 25,),
                        Align(
                            alignment: Alignment(-0.9,0.12),
                            child: ElevatedButton(onPressed:(){
                              final snackBar = SnackBar(
                                content:  TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>Cart())
                                    );
                                  },
                                  child: const Text('add to cart'),
                                ),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  onPressed: () {

                                  },
                                ),
                              );

                              // Find the ScaffoldMessenger in the widget tree
                              // and use it to show a SnackBar.
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              Navigator.pop(context);
                            },
                                child: Text('Add to Cart')))
                      ],
                    ),
                  );
                },
              );
            },
          ),
          SizedBox(width: 15,),
          Column(
            children: [
              Text('Pizza'),
              SizedBox(height: 10,),
              Text('\u{20B9}${40}'),
            ],
          ),
        ],
        ),
    ),
        ]),
      );

  }
}




