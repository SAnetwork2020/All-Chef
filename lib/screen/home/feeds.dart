import 'package:flutter/material.dart';

import '../../components/color_constants.dart';

class Conts extends StatelessWidget {
  const Conts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
          height: 105,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(top: 0,
                child: Container(
                height: 80, width: 338,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: error_20,
                  ),
              ),),
              Positioned(top: 5,
                child: Container(
                height: 80, width: 346,
                  decoration: BoxDecoration(
                    color: secondary_300,
                    borderRadius: BorderRadius.circular(8),
                  ),
              ),),
              Positioned(top: 10,
                child: Container(
                height: 80, width: 358,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8,
                        vertical: 10.0),
                    child: containerContents(),
                  ),
              ),),
            ],
          ),
        ),
    );
  }
}

class containerContents extends StatelessWidget {
  const containerContents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
      height: 60, width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(19.33),
        child: Image.asset('assets/images/rss.png',height:32 ,width:32,),
      ),),
      const SizedBox(width: 8,),
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('You have 12 recipes that \nyou haven’t tried yet', style:
          Theme.of(context).textTheme.subtitle1,),
          const SizedBox(height: 6,),
          Text('See more', style:
          Theme.of(context).textTheme.subtitle1?.merge(const TextStyle(decoration:
          TextDecoration.underline, color:
          Colors.white),),)
        ],
      ),
    ],);
  }
}
