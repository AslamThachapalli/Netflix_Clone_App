import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/dimensions.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
      child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => SizedBox(height: Dimensions.height10),
          itemBuilder: (context, index) {
            return Row(
              children: [
                SizedBox(
                  height: 450,
                  width: 50,
                  child: Column(
                    children: [
                      Text(
                        'FEB',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.fontSize15,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '11',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.fontSize15 * 2,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 450,
                  width: Dimensions.screenWidth - 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image container
                      Stack(
                        children: [
                          Container(
                            height: 200,
                            width: Dimensions.screenWidth - 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/iHc14vucwUMl6WuvQa4iPfoEdy9.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.black.withOpacity(0.6),
                              child: Icon(
                                Icons.volume_off_sharp,
                                size: Dimensions.iconSize10 * 2.5,
                                color: kWhiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: Dimensions.height10),
                      Row(
                        children: [
                          Text(
                            'Tall Girl 2',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const CustomButtonWidgetComingSoon(
                            icon: Icons.all_out_sharp,
                            text: "Remind Me",
                          ),
                          SizedBox(width: Dimensions.width10),
                          const CustomButtonWidgetComingSoon(
                            icon: Icons.info_outline,
                            text: "Info",
                          ),
                          SizedBox(width: Dimensions.width10),
                        ],
                      ),
                      SizedBox(height: Dimensions.height5),
                      Text(
                        'Coming on Friday',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: Dimensions.height15),
                      Text(
                        'Tall Girl 2',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: Dimensions.height10),
                      Text(
                        'Stay tuned. Stay tuned. Stay tuned.Stay tuned.Stay tuned.Stay tuned.Stay tuned. Stay tuned.Stay tuned.Stay tuned.Stay tuned.Stay tuned.Stay tuned. Stay tuned.Stay tuned.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}

class CustomButtonWidgetComingSoon extends StatelessWidget {
  const CustomButtonWidgetComingSoon({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: Dimensions.iconSize10 * 2,
        ),
        SizedBox(height: Dimensions.height10 * 0.3),
        Text(
          text,
          style: TextStyle(
            fontSize: Dimensions.fontSize10,
          ),
        ),
      ],
    );
  }
}
