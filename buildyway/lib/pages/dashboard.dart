import 'package:buildyway/components.dart/users_container.dart';
import 'package:buildyway/shared/constants/styles.dart';
import 'package:buildyway/shared/enums/nav_bar_enums.dart';
import 'package:buildyway/shared/helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/user_info.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = getScreenWidth(context);
    double height = getScreenHeight(context);
    List<UsersContainer> users = [
      UsersContainer(userInfo: UserInfo(firstName: "test", lastName: "test")),
      UsersContainer(userInfo: UserInfo(firstName: "test", lastName: "test")),
    ];
    return Scaffold(
      body: SizedBox(
        width: width,
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.1,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: width * 0.08,
                  ),
                  const Text(
                    "BUILDYWAY",
                    style: TextStyle(
                      fontFamily: source,
                      fontWeight: boldFont,
                      fontSize: 26,
                      color: blackColor,
                      inherit: false,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.15,
                  ),
                  ...NavBarEnum.values.asMap().entries.map(
                        (page) => navTextButtons(
                          () {
                            context.goNamed(page.value.route);
                          },
                          page.value.name,
                          context,
                        ),
                      ),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.only(
                      right: width * 0.05,
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_outlined,
                        size: 40,
                        color: blackColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      const Text(
                        "TAKE A LOOK AT ALL OUR \n       SUBCONTRACTORS",
                        style: TextStyle(
                          fontFamily: source,
                          fontWeight: boldFont,
                          fontSize: 30,
                          color: blackColor,
                          inherit: false,
                        ),
                      ),
                      const Icon(Icons.construction_sharp),
                      // ...users

                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return UsersContainer(
                                userInfo: UserInfo(
                                    firstName: "test", lastName: "test"));
                          }),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget navTextButtons(
    void Function()? onPressed, String label, BuildContext context) {
  double width = getScreenWidth(context);
  return Container(
    margin: EdgeInsets.only(bottom: 5, right: width * 0.01),
    child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontFamily: openSansFont,
            fontWeight: regularFont,
            fontSize: 20,
            color: blackColor,
            inherit: false,
          ),
        )),
  );
}
