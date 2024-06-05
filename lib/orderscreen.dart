import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_v4/constants.dart';
import 'package:order_v4/orders.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F0EC),
      body: Padding(
        padding: EdgeInsets.all(50.sp),
        child: SizedBox(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Orders',
                    style: textTheme.titleLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    'Wednesday, 12 July 2023',
                    style: textTheme.titleLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70.h,
                    child: Row(
                      children: ['All', 'Ordering', 'Preparing', 'On Its Way']
                          .map((e) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: e == 'All'
                                          ? const Color(0xff25655E)
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  width: 150.w,
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: e == 'All'
                                              ? Colors.white
                                              : Colors.black),
                                      softWrap: true,
                                      selectionColor: Colors.blue,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        width: 50.w,
                        height: 70.h,
                        child: Center(
                            child: Icon(
                          Icons.filter_alt,
                          color: primarycolor,
                        )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          width: 400.w,
                          height: 70.h,
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: primarycolor,
                                    size: 30.w,
                                  ),
                                  contentPadding: const EdgeInsets.all(20),
                                  hintText: 'Search a Name , Order or etc',
                                  border: InputBorder.none),
                            ),
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const OrdersPageCard()
            ],
          ),
        ),
      ),
    );
  }
}
