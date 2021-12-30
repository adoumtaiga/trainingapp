import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trainingapp/bank_account.dart';
class AfficherDetails extends StatelessWidget {
  const AfficherDetails(this.res, {Key? key}) : super(key: key);
  final BankAccount res;

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(res.currency,
                          style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Text(res.currency,
                        style: TextStyle(color: Colors.grey[500], fontSize: 16))
                  ],
                )),
          ],
        ));

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _buildButtonColumn(Colors.blue, Icons.comment, "COMMENT"),
        _buildButtonColumn(Colors.blue, Icons.share, "SHARE")
      ]),
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        res.currency,
        softWrap: true,
      ),
    );


    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(res.currency),
        ),
        body: ListView(
            children: [
              Hero(
                tag: "imageBank" + res.currency,
                child: CachedNetworkImage(
                  imageUrl: "https://media.istockphoto.com/photos/freedom-chains-that-transform-into-birds-charge-concept-picture-id1322104312?b=1&k=20&m=1322104312&s=170667a&w=0&h=VQyPkFkMKmo0e4ixjhiOLjiRs_ZiyKR_4SAsagQQdkk=",
                  placeholder: (context, url) => Center(child:CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),
              titleSection,
              buttonSection,
              descriptionSection
            ])
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Icon(icon, color: color)),
        Text(label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: color,
            ))
      ],
    );
  }

}
