import 'package:ecampus_ncfu/ecampus_icons.dart';
import 'package:ecampus_ncfu/inc/bottom_nav.dart';
import 'package:ecampus_ncfu/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentMain extends StatefulWidget {
  const ContentMain({Key? key, required this.context}) : super(key: key);

  final BuildContext context;

  @override
  State<ContentMain> createState() => _ContentMainState();
}

class _ContentMainState extends State<ContentMain> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverRefreshControl(
          onRefresh: () async {
            await Future<void>.delayed(const Duration(milliseconds: 1000));
            //Do something
          },
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Column(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5, color: Colors.black26, spreadRadius: 0)
                  ],
                ),
                child: const CircleAvatar(
                  radius: 45.0,
                  backgroundImage: NetworkImage(
                      'https://www.exibartstreet.com/wp-content/uploads/avatars/2465/5e0de52aeee8b-bpfull.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text(
                  "Мухаммадкодир Абдувоитов",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Icon(EcampusIcons.icons8_star),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              "76",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          Text(
                            "Средний балл",
                            maxLines: 1,
                            softWrap: false,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(EcampusIcons.icons8_leaderboard),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              "24 из 27",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Text(
                            "Место в группе",
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(EcampusIcons.icons8_university),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              "999 из 1000",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Text(
                            "Место в Институте",
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: CupertinoButton(
                          color: Theme.of(context).primaryColor,
                          child: const Text("Электронный пропуск"),
                          onPressed: () {}))),
              
            ],
          ),
        ]))
      ],
    ));
  }
}