import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousselPage extends StatefulWidget {
  const CarousselPage({Key? key}) : super(key: key);

  @override
  _CarousselPageState createState() => _CarousselPageState();
}

final List<String> imgList = [
  'https://lh3.googleusercontent.com/dd2j3-j_NFFapn-_CCh_n1xQ_hFaZzJY7t5AzR8JSMRxsuMBJFHSg7icWupOOP0Z-lcwBnj0a_QY5BmbKxrout9e935YgF4i5kCjr9juryChKhWDMv-AUA4ONlf9pwPMHxktcBMifFlAQ0l4bgIgRpKaJ6uovat2OUvFQYVe0hheVtNDh8zeluoD9Luo60PJfUpGbYrQwMhehzEtuOjSe0b69u6UUoUhhvQUINAtpQH9Nj4sOWf89Sm62v04Z_2hT6iiBHlecv68zproGaz8hBMTi7zDEa-_zVFGcDuAg2UAktBe_lEalqzeKwqxpdVf0XLYbNzemI77a2tHq5q4Wr2uit7QgH08_UdU_fEBQ5C9O1qr2smD-CU3yTg6JDJ1mxAWQb89d1tuk5QJYVACLVrhwM537j-Er1aLA34-BLlMPQ2YAsnsjipn3-UdKrhb_TqYEXuIA79BGbOcna0FV952SCO7wK3Hawmruhz7VG8SL5Vwy9O9Ic5H-S3fgin92qJ1dDvzZYxBacKtT-q-nhA4CeTgbXuCI-BWP22pwj19nnUSSU1tGb7688Rc8nvWEViwvATIztXLt_eBkuXBA-6E0njx1pUheZxXF9Qy_xot1eRDjRtBON3oLL8eFRvH7hhr-NjvDLW6Evc5AmmrBFipssuSRdqPomANzZzdufuSKyA15udxXRNOMMnUgybeV9mN7j3H5FRF9S1eur8UXmU=w275-h183-no?authuser=0',
  'https://lh3.googleusercontent.com/ztCf_giZkjA93rVep3hhM2d5SkQvgAhzKsWY1mW5g1KTSUW0khRyd7bxK2wHey8b-smNjFs34TrJcFHzoOvAlUdhx_e_3SQn2lUpBzHdmop0Ap-h8DIP2LAbe_n_gKtGHDaZp9K7dN9YnyEu13VW9qaCIfD02rsy7yETIz-BrW7iuKno9QfkpIPn1zofgylHDoUpdfjzL-wXXPgxYjJAyPWZB67WBGzVKx6457sC5Dm3I-5slj3rAuQvHbnr4jaD6RkXPgTrMJ4PjyjTD3E1HH1YxGfTSQLZQXTngsSTb3RgGMw4JJMqeSg8T7Io006LmvRA8Ne-LGVz_IsTEcNW-ZtA8m3FeNuMU2mjV1JodWkSOpZFn892uGnUegpqX-TKsWbSEWZY1yCB6uvz2FYdFeuCDEdq6xjdNNZIX9I-90oGLmR-fXmizHV8Xx7rpwuV7FLxxXFhShhUzQvaFXsnsXkJkuXTBTqE0V5Jtk1vLoYnvRb3Kyy4ekQO4zOxwNmJD4ni63T-gP6oD3gTI6Zqjhizr8cxYQj7RlEnQOH7fNcrQ1iMC7WH0DHIAqgR7lNLXO9o9-rtYk_dA8u0qJWfThzeR-SdG0JxbKasgYQBjZ_qiLDRAyeVfZei93wj10feee1GgoqyqKUTdafIYkXdaztRWx7Fm6wyr1s7zMJ6mLxa_A6fN3vuLZpLUvEpuih5heOvdwZLcBY82X-YpnSbO-0=w436-h699-no?authuser=0',
  'https://lh3.googleusercontent.com/q-Dk8c-cWXS5e9_ynf3sUitN_rwEkYnq08Lo1auEMCdNGJu84i_-txtchmC_h0dFROtVNIHZ2gME2to57-wiiZEBMDmckVKhw4PjGjY_JAXtUHcu6lD1zdXUgvqAePtt5bk6zt1wzFoAYosL77TC2Ikq7GuGSlB3m0lEDLfdb1a2Gv7_6H9ZDhsRNCp8t1aim_JgQqC_F_Al-2UyEUenzX4egv84fNBEA73yOyv5z8jabgYDvEqd5pGtWJauOcEp0owe5CaLXVMDFN9pV451Zwb00v1DjwrDRSPyx_iuQQUT_Pl2pe0drbLK8d22T7E3CLfNmb2izztNygtyhSjTknQ6mzHljef3Lz0b2pS0cYwkWko16jf0W_8k-17R4boWVFN-5ho-qaneU1-Kt5wo55uxuTmOEj8PRbQscTDnXv5JESxiJhc4lwA_gTV6qDFYayFiHM_6tajv4pZnrA_Xu3P0jn6zX89DGQYKu3JNMT0lK4RYq7GDel2CUSO6v3PW2kgUavcRPOPjrEI1iVBX01-4AJHELSJDNCv-wp9lxz5A2_x9EqzhPqLl2nNE-RWvVoqBUp9l1PhUKZsoAo-rZRZqzMmw-_0oFOAxsQ8Vq1rsAK_QnWqbjzOzu4Y3viXKqzRA3VKdOGANeN_5vODhtSJHQmIsIFVmFfjJJ4K93f3UTr6W-fLtOpofdPu_sjjo-WCWPlug7IRkg4Z8ywUWjxE=w495-h699-no?authuser=0'
];
class _CarousselPageState extends State<CarousselPage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSlider = imgList.map((item) => Container(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: [
            Image.network(item, fit: BoxFit.cover, width: 1000,),
            Positioned(
              bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
                  child: Text("No. ${imgList.indexOf(item)} image", style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),),

            )),
          ],
        ),
      ),
    )).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images"),
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(20),
          child: Text("Caroussel", style: TextStyle(color: Colors.green[700], fontWeight: FontWeight.bold, fontSize: 18),
          ),
          ),
          CarouselSlider(items: imageSlider, options: CarouselOptions(
              autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason){
                setState(() {
                  _current = index ;
                });
            }
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url){
              int index = imgList.indexOf(url);
              return Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index ? const Color.fromRGBO(0, 0, 0, 0.9) : const Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
