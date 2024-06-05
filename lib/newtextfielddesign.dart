import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_v4/constants.dart';
import 'package:order_v4/orders.dart';

class AnimatedDialogClass {
  static Future showCustomDialog(BuildContext context, int index) async {
    double widthofdialog = MediaQuery.of(context).size.width / 2;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Center(
            child: Material(
              color: Colors.transparent,
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: const Duration(seconds: 1),
                builder: (BuildContext context, double value, Widget? child) {
                  const double dialogHeight = 900.0;
                  final double translateY = value * -50;
                  return Transform.translate(
                    offset: Offset(0, translateY),
                    child: Opacity(
                      opacity: value,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: widthofdialog,
                          height: dialogHeight,
                          child: Form(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Order Details #1234567890',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 2, 66, 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SizedBox(
                                      child: Row(
                                        children: [
                                          Container(
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: primarycolor,
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(
                                                    10.0), // Adjust the radius as needed
                                                child: Image.network(index
                                                        .isEven
                                                    ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTaWUp1Rxr9Saw0f9LPxGo11ss4Ua7gh7cfb1qRzh_FXVBuI6-7wPw_QnX5zKJAHMzFR4&usqp=CAU'
                                                    : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbYuUNzYpM4UBtNgO9rAUtnRJ-w-is1Ajmqw&usqp=CAU'),
                                              )),
                                          Expanded(
                                              child: ListTile(
                                            subtitle: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      index.isEven
                                                          ? 'Delivery'
                                                          : 'Dinning Table',
                                                      style: TextStyle(
                                                          color: primarycolor,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18.w),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                        '+923102426676    ${index.isEven ? 'Postal Code : 765689' : ''}'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            title: Text(
                                              'Denis Freeman',
                                              style: textTheme.titleLarge,
                                            ),
                                          )),
                                          SizedBox(
                                            width: 100,
                                            child: Column(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      color: index.isEven
                                                          ? const Color(
                                                              0xffFFEDBD)
                                                          : const Color(
                                                              0xffC8FFE4)),
                                                  width: 100.w,
                                                  height: 40.h,
                                                  child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(index.isEven
                                                            ? Icons.lock_clock
                                                            : Icons.done),
                                                        Text(
                                                          index.isEven
                                                              ? 'Ordering'
                                                              : 'Preparing',
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Wedn, 12 July 2023',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      Text(
                                        '06:18 PM',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 9,
                                          child: Divider(
                                            thickness: 3,
                                            color: primarycolor,
                                          )),
                                      const Expanded(
                                          flex: 2,
                                          child: Divider(
                                            thickness: 1,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        '30 Minutes Remainig To order Deliver From Estimated Time',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        const Expanded(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              child: MyListView(
                                                height: 80,
                                              ),
                                            ),
                                          ],
                                        )),
                                        Expanded(
                                            child: SizedBox(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ListView.builder(
                                                  shrinkWrap: true,
                                                  itemCount: 5,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ListTile(
                                                      title: Text(
                                                          headingtitle[index]),
                                                      subtitle: Text(
                                                        headingtitleValues[
                                                            index],
                                                        style: TextStyle(
                                                            color:
                                                                primarycolor),
                                                      ),
                                                    );
                                                  }),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              index.isEven
                                                  ? Container()
                                                  : MaterialButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Container(
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                            color: const Color(
                                                                0xffF0F4F4)),
                                                        child: Center(
                                                          child: Text(
                                                            'Undo Order',
                                                            style: TextStyle(
                                                                color:
                                                                    primarycolor),
                                                          ),
                                                        ),
                                                      )),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              MaterialButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Container(
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        color: const Color(
                                                            0xffF0F4F4)),
                                                    child: Center(
                                                      child: Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                            color:
                                                                primarycolor),
                                                      ),
                                                    ),
                                                  )),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              MaterialButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Container(
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        color: const Color(
                                                            0xffFFCB44)),
                                                    child: Center(
                                                      child: Text(
                                                        index.isEven
                                                            ? ' Confirm Order'
                                                            : 'Assign Driver',
                                                        style: TextStyle(
                                                            color: primarycolor,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  )),
                                              Container(
                                                height: 300,
                                              )
                                            ],
                                          ),
                                        ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                  );
                },
              ),
            ),
          );
        });
      },
    );
  }
}

List headingtitle = [
  'Items Quantity',
  'Estimate Time',
  'Payment Amount',
  'Payment Status',
  'Address Location',
];

List headingtitleValues = [
  '10',
  '45 Minutes',
  '\$500',
  'Paid',
  'House No 386 , Sector 9/c , Orangi Town Karachi , Pakistan lorem nua hnuifjn hniofajio ',
];
