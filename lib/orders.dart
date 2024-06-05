import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_v4/constants.dart';
import 'package:order_v4/newtextfielddesign.dart';

class OrdersPageCard extends StatefulWidget {
  const OrdersPageCard({super.key});

  @override
  State<OrdersPageCard> createState() => _OrdersPageCardState();
}

class _OrdersPageCardState extends State<OrdersPageCard> {
  int crossAxisCount = 3;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int newCrossAxisCount = (screenWidth / 600).floor();
    if (newCrossAxisCount != crossAxisCount) {
      setState(() {
        crossAxisCount = newCrossAxisCount;
      });
    }
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount)),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: primarycolor,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Adjust the radius as needed
                                  child: Image.network(index.isEven
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
                                            fontWeight: FontWeight.bold,
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
                                  const Text(
                                    'Order #1234567890',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: index.isEven
                                            ? const Color(0xffFFEDBD)
                                            : const Color(0xffC8FFE4)),
                                    width: 100.w,
                                    height: 40.h,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(index.isEven
                                              ? Icons.lock_clock
                                              : Icons.done),
                                          Text(
                                            index.isEven
                                                ? 'Ordering'
                                                : 'Preparing',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    const MyListView(
                      height: 50,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Items QTY:',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '10',
                              style: TextStyle(
                                  color: primarycolor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Total Amount:',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              '\$500.00',
                              style: TextStyle(
                                  color: primarycolor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: index.isEven
                                      ? primarycolor
                                      : const Color.fromARGB(255, 156, 2, 2)),
                              width: 100.w,
                              height: 40.h,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      index.isEven ? Icons.done : Icons.info,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      index.isEven ? 'Paid' : 'Unpaid',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        index.isEven
                            ? Container()
                            : Expanded(
                                child: MaterialButton(
                                    onPressed: () {},
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: const Color(0xffF0F4F4)),
                                      child: Center(
                                        child: Text(
                                          'Undo Order',
                                          style: TextStyle(color: primarycolor),
                                        ),
                                      ),
                                    )),
                              ),
                        Expanded(
                          child: MaterialButton(
                              onPressed: () {},
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color(0xffF0F4F4)),
                                child: Center(
                                  child: Text(
                                    index.isEven
                                        ? ' Confirm Order'
                                        : 'Assign Driver',
                                    style: TextStyle(color: primarycolor),
                                  ),
                                ),
                              )),
                        ),
                        Expanded(
                          child: MaterialButton(
                              onPressed: () {
                                AnimatedDialogClass.showCustomDialog(
                                    context, index);
                              },
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color(0xffFFCB44)),
                                child: Center(
                                  child: Text(
                                    'See Details',
                                    style: TextStyle(
                                        color: primarycolor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: totallength,
      itemBuilder: (context, index) {
        if (height == 80) {
          return foodcontainer(
            index: index,
            height: height,
          );
        }
        if (index < 4) {
          return foodcontainer(
            index: index,
            height: height,
          );
        } else if (index == 5) {
          return Stack(
            children: [
              Opacity(
                  opacity: 0.18,
                  child: foodcontainer(
                    index: index,
                    height: height,
                  )),
              SizedBox(
                height: height,
                child: Center(
                  child: Text(
                    '${totallength - 4}+ More Items',
                    style: const TextStyle(
                        letterSpacing: 1.5,
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          );
        }
        return Container();
      },
    );
  }
}

int totallength = 10;

class foodcontainer extends StatelessWidget {
  const foodcontainer({super.key, required this.index, required this.height});
  final int index;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: index.isEven ? Colors.white : Colors.grey[200],
      height: height,
      child: Row(
        children: [0, 1, 2, 3]
            .map((e) => Expanded(
                    child: SizedBox(
                  height: 80,
                  child: e == 0
                      ? Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '2 X ',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 45,
                                height: 60,
                                child: Image.asset('images/pizza.png'),
                              ),
                            ],
                          ),
                        )
                      : e == 1
                          ? const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Pizza Pepperroni',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Medium Half Gribbed',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            )
                          : Center(
                              child: Text(
                                e == 2 ? '50.00' : '50.00',
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                )))
            .toList(),
      ),
    );
  }
}
