part of 'pages.dart';

class HomePage extends StatelessWidget {
  final Function onTap;
  final Category category;
  const HomePage({Key key, this.onTap, this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: accentColor4,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            padding: EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 30),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/person_pic.png"),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        child: Text(
                      "Hai, Ello !",
                      style: kHeadingextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Lihat materi yang akan kamu pelajari",
                          style: blackTextFont.copyWith(fontSize: 14),
                          maxLines: 2,
                          overflow: TextOverflow.clip),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Kategori",
                  style: kTitleTextStyle.copyWith(fontWeight: FontWeight.w600)),
              GestureDetector(
                onTap: () {
                  context.bloc<PageBloc>().add(GoToGoalsPage());
                },
                child: Text(
                  "Lihat Semua",
                  style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                ),
              ),
            ],
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              padding: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 20),
              crossAxisCount: 2,
              itemCount: categories.length,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context
                        .bloc<PageBloc>()
                        .add(GoToDetailMateriPage(categories[index]));
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: index.isEven ? 200 : 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(categories[index].image),
                            fit: BoxFit.cover),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              accentColor4.withOpacity(0.20),
                              accentColor4.withOpacity(0.80)
                            ])),
                    child: BlocBuilder<KategoriBloc, KategoriState>(
                      builder: (_, kategoriState) {
                        if (kategoriState is KategoriLoaded) {
                          List<Kategori> kategories = kategoriState.kategories;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                kategories[index].nama,
                                style: kTitleTextStyle,
                              ),
                              Text(
                                'Dibuat: ${kategories[index].createdAt} ',
                                style: TextStyle(
                                  color: kTextColor.withOpacity(.5),
                                ),
                              )
                            ],
                          );
                        } else {
                          return SpinKitFadingCircle(
                            color: mainColor,
                            size: 50,
                          );
                        }
                      },
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            ),
          ),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}
