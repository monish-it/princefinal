import 'package:flutter/material.dart';
import 'package:princemas/main.dart';
// import 'package:princemas/main.dart';

class Hsoap extends StatelessWidget {
  const Hsoap({Key? key}) : super(key: key);

  // final prode pd= new Prode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/hsoap.png?alt=media&token=16ad3a0e-2fbc-4bcc-8ddf-7925dc4e3183'),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            left: 10,
            top: 20 + MediaQuery.of(context).padding.top,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                // Navigator.push<void>(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (BuildContext context) => const Homes(),
                //   ),
                // );
              },
              child: ClipOval(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.25),
                        offset: const Offset(0, 4),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/back.png?alt=media&token=56112b4d-dc7e-463b-a1db-f76fb9be9ec1'),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .6,
              width: MediaQuery.of(context).size.width * .95,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    // color: Colors.black.withOpacity(.2),
                    offset: Offset(0, -4),
                    blurRadius: 8,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 24,
                      right: 20,
                    ),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'Homemade Soap',
                            style: TextStyle(
                                fontFamily: 'itim',
                                fontSize: 35,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 30,
                      right: 30,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'INR 100',
                          style: TextStyle(
                              fontFamily: 'itim',
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '1 nos',
                          style: TextStyle(
                              fontFamily: 'itim',
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 30,
                      right: 30,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(112, 188, 113, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        child: const Text(
                          '100 percent homemade product',
                          style: TextStyle(
                              fontFamily: 'itim',
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 49,
                          width: 49,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(228, 228, 228, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text('-'),
                          ),
                        ),
                        Container(
                          height: 49,
                          width: 100,
                          child: const Center(
                            child: Text(
                              '1',
                            ),
                          ),
                        ),
                        Container(
                          height: 49,
                          width: 49,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(228, 228, 228, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text('+'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.07),
                          offset: const Offset(0, -3),
                          blurRadius: 12,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Total'),
                              Text('INR 100'),
                            ],
                          ),
                        ),
                        Material(
                          color: const Color.fromRGBO(243, 175, 45, 1),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(243, 175, 45, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                'Add to cart',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
