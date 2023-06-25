import 'package:flutter/material.dart';

class slidi extends StatelessWidget {
  final String imgurl;
  final String name1;
  final String images;
  final String poName;
  final String tim;
  final String days;
  // final String userimg;
  // final String tuber;

  const slidi({
    required this.imgurl,
    required this.name1,
    required this.poName,
    required this.tim,
    required this.days,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [BoxShadow(offset: Offset(0.2, 0.2))]),
            child: Column(
              children: [
                SizedBox(
                  height: 230,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    imgurl,
                    // fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Image.asset(images),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'name1',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              '1.1.tv . ',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '524 тыс. пасмотров . ',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '5 дней назад',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
