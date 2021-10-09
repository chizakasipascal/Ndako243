import 'package:flutter/material.dart';
import 'package:ndako243/src/constants/constanst.dart';
import 'package:ndako243/src/constants/fontSize.dart';
import 'package:ndako243/src/utils/utils.dart';
import 'package:ndako243/src/views/compotments/compotements.dart';
import 'package:ndako243/src/views/compotments/textbox/textbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map> myFavorites =
      List.generate(3, (index) => {"id": index, "name": "la"}).toList();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // ZwandakoAppBar(
            //   title: ZwandakoText(
            //     text: "HOME",
            //     // color: widget.zwandakoText!.color,
            //     // fontSize: widget.zwandakoText!.fontSize,
            //     // fontWeight: widget.zwandakoText!.fontWeight,
            //   ),
            //   onPressedleading: () {},
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Ndako243Text(
                    text: 'Find The Best Place',
                    fontSize: FontSize.small,
                  ),
                  Ndako243Text(
                    text: 'To Live Luxury Life',
                    fontWeight: FontWeight.bold,
                    fontSize: FontSize.meduim,
                    color: Background,
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 1,
                    child: Center(
                      child: buildTextBox(
                        hint: 'Search by state or Zip code',
                        textAlign: TextAlign.left,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Grey.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Ndako243Text(
                        text: 'Latest Property',
                        fontWeight: FontWeight.bold,
                        fontSize: FontSize.meduim,
                        color: BlackColor,
                      ),
                      Ndako243Text(
                        text: 'View All',
                        fontWeight: FontWeight.normal,
                        fontSize: FontSize.small,
                        color: Background,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(Assets.Image_test),
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Positioned(
                        bottom: -30,
                        child: Container(
                          height: 80,
                          width: size.width * .7,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Ndako243Text(
                                        text: "data",
                                      ),
                                      Spacer(),
                                      Ndako243Text(
                                        text: "data",
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Ndako243Text(
                                        text: "data",
                                      ),
                                      Spacer(),
                                      Ndako243Text(
                                        text: "data",
                                      )
                                    ],
                                  ),
                                ),
                                Ndako243Text(
                                  text: "Etoil",
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Background,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Ndako243Text(
                        text: 'Nearby Property',
                        fontWeight: FontWeight.bold,
                        fontSize: FontSize.meduim,
                        color: BlackColor,
                      ),
                      Ndako243Text(
                        text: 'View All',
                        fontWeight: FontWeight.normal,
                        fontSize: FontSize.small,
                        color: Background,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        //maxCrossAxisExtent: 150,
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      //TODO: Converture le code a buider pour une meiller performance
                      padding: const EdgeInsets.only(top: 10.0),
                      physics: BouncingScrollPhysics(),
                      itemCount: myFavorites.length + 1,
                      itemBuilder: (context, i) {
                        return Container(
                          height: 90,
                          child: SizedBox(
                            height: size.height * .5,
                            child: Card(
                                child: Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: size.width * .5,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(Assets.Image_test),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: size.width * .5,
                                  color: WhiteColor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Ndako243Text(
                                                text: "data",
                                              ),
                                              Spacer(),
                                              Ndako243Text(
                                                text: "data",
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Ndako243Text(
                                                text: "data",
                                              ),
                                              Spacer(),
                                              Ndako243Text(
                                                text: "data",
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
