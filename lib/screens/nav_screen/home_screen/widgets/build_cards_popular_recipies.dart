import 'package:flutter/material.dart';

class BuildCardWidget extends StatelessWidget {
  const BuildCardWidget({
    Key? key,
    required this.image,
    required this.content,
    required this.time,
  }) : super(key: key);
  final String image, content, time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: 180,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff242424).withOpacity(0.6),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 11.34, 6.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        content,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xffFFFFFF)),
                      ),
                      Image.asset(image),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xffFFFFFF)),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
