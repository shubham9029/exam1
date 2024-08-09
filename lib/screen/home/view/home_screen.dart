import 'package:animation/screen/home/model/home_model.dart';
import 'package:animation/screen/home/provider/home_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeProvider>().getData("surat");
  }

  HomeProvider? providerR;
  HomeProvider? providerW;
  TextEditingController txtName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Screen",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: FutureBuilder(
          future: context.watch<HomeProvider>().model,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              Text("${snapshot.error}");
            } else if (snapshot.hasData) {
              HomeModel? model = snapshot.data;
              if (model == null) {
                Text("Not Available");
              } else {
                return Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SearchBar(
                            hintText: "Search movie",
                            controller: txtName,
                            trailing: [
                              IconButton(
                                  onPressed: () {
                                    context
                                        .read<HomeProvider>()
                                        .getData(txtName.text);
                                  },
                                  icon: Icon(Icons.search)),
                              SizedBox(
                                height: 10,
                              ),

                            ],
                          ),
                        ),

                        Stack(
                            children: [
                        CachedNetworkImage(imageUrl: "https://static.vecteezy.com/system/resources/previews/011/508/381/non_2x/movie-film-banner-design-template-cinema-background-concept-cinema-concept-with-popcorn-filmstrip-and-film-clapper-on-yellow-background-illustration-free-vector.jpg"),

                              Align(
                                alignment: Alignment(0.9,1),
                                child: Text("Movies",style: TextStyle(
                                  fontSize: 50,
                                ),),
                              )
                            ],


                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CachedNetworkImage(imageUrl: "https://images.hdqwalls.com/download/free-guy-2020-movie-poster-jt-1920x1080.jpg",height: 150,width: 150, imageBuilder: (context, imageProvider) => Container(
                                      width: 80.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: imageProvider, fit: BoxFit.fitHeight),
                                      ),
                                    ),),
                                  ),
                                  Text("${model.released}",
                                    overflow: TextOverflow.visible,
                                  ),
                                ],
                              ),
                              SizedBox(width: 2,),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CachedNetworkImage(imageUrl: "https://yt3.ggpht.com/a/AATXAJxtBdSklU_B7ZpMrdeJnFcLP0-DvzO5KMx_iA=s900-c-k-c0xffffffff-no-rj-mo",height: 150,width: 150, imageBuilder: (context, imageProvider) => Container(
                                      width: 80.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: imageProvider, fit: BoxFit.fitHeight),
                                      ),
                                    ),),
                                  ),
                                  Text("${model.released}",
                                    overflow: TextOverflow.visible,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CachedNetworkImage(imageUrl: "https://tse2.mm.bing.net/th?id=OIP.MLGjQFOQuPQlZFKcN3F_swAAAA&pid=Api&P=0&h=180",height: 150,width: 150, imageBuilder: (context, imageProvider) => Container(
                                      width: 80.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: imageProvider, fit: BoxFit.fitHeight),
                                      ),
                                    ),),
                                  ),
                                  Text("${model.released}",
                                    overflow: TextOverflow.visible,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                providerR!.homeModel=model;
                                Navigator.pushNamed(context, "detail");
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: AssetImage("assets/image/11.jpg"),
                                          fit: BoxFit.fill
                                        )
                                      ),
                                    ),
                                  ),
                                  Text("Jawan",style: TextStyle(fontSize: 20),)
                                ],
                              ),
                            ),

                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage("assets/image/12.jpg"),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ),
                                Text("Pathan",style: TextStyle(fontSize: 20),)
                              ],
                            )
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage("assets/image/14.jpg"),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ),
                                Text("K.G.F",style: TextStyle(fontSize: 20),)
                              ],
                            ),

                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage("assets/image/15.jpg"),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ),
                                Text("Wanted",style: TextStyle(fontSize: 20),)
                              ],
                            )
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage("assets/image/16.jpeg"),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ),
                                Text("Bahubali",style: TextStyle(fontSize: 20),)
                              ],
                            ),

                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage("assets/image/17.jpeg"),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ),
                                Text("Gadar",style: TextStyle(fontSize: 20),)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }
            }
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
