import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:trainingapp/bank_account.dart';
import 'package:trainingapp/pages/add.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:trainingapp/pages/aficher_details.dart';
import 'package:trainingapp/pages/carousselpage.dart';

import '../boxes.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key? key, required this.title}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ValueListenableBuilder(
        valueListenable: Hive.box<BankAccount>(HiveBoxes.bank).listenable(),
        builder: (context, Box<BankAccount> box, _){
          if(box.values.isEmpty){
            return const Center(
              child: Text('Empty'),
            );
          }
          return ListView.builder(itemCount: box.values.length, itemBuilder: (context, index){
            BankAccount? res = box.getAt(index);
            return GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/details', arguments: res);
              },
              child: Card(
                margin: const EdgeInsets.all(8),
                elevation: 8,
                child: Row(
                  children: [
                    Hero(
                      tag: "imageBank" + res!.currency,
                      child: CachedNetworkImage(
                        imageUrl: "https://lh3.googleusercontent.com/dd2j3-j_NFFapn-_CCh_n1xQ_hFaZzJY7t5AzR8JSMRxsuMBJFHSg7icWupOOP0Z-lcwBnj0a_QY5BmbKxrout9e935YgF4i5kCjr9juryChKhWDMv-AUA4ONlf9pwPMHxktcBMifFlAQ0l4bgIgRpKaJ6uovat2OUvFQYVe0hheVtNDh8zeluoD9Luo60PJfUpGbYrQwMhehzEtuOjSe0b69u6UUoUhhvQUINAtpQH9Nj4sOWf89Sm62v04Z_2hT6iiBHlecv68zproGaz8hBMTi7zDEa-_zVFGcDuAg2UAktBe_lEalqzeKwqxpdVf0XLYbNzemI77a2tHq5q4Wr2uit7QgH08_UdU_fEBQ5C9O1qr2smD-CU3yTg6JDJ1mxAWQb89d1tuk5QJYVACLVrhwM537j-Er1aLA34-BLlMPQ2YAsnsjipn3-UdKrhb_TqYEXuIA79BGbOcna0FV952SCO7wK3Hawmruhz7VG8SL5Vwy9O9Ic5H-S3fgin92qJ1dDvzZYxBacKtT-q-nhA4CeTgbXuCI-BWP22pwj19nnUSSU1tGb7688Rc8nvWEViwvATIztXLt_eBkuXBA-6E0njx1pUheZxXF9Qy_xot1eRDjRtBON3oLL8eFRvH7hhr-NjvDLW6Evc5AmmrBFipssuSRdqPomANzZzdufuSKyA15udxXRNOMMnUgybeV9mN7j3H5FRF9S1eur8UXmU=w275-h183-no?authuser=0",
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(res.currency,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ),
                          Text(res.currency,
                              style: TextStyle(color: Colors.grey[500], fontSize: 16))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          });

        },
      ),

      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Currency',
        child: const Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const CarousselPage()));
         // Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddPage(title: 'Adding Currency',)));
        },
      ),
    );
  }
}
