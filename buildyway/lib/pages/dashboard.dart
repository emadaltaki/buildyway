import 'package:buildyway/shared/constants/styles.dart';
import 'package:buildyway/shared/enums/nav_bar_enums.dart';
import 'package:buildyway/shared/helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = getScreenWidth(context);
    double height = getScreenHeight(context);
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
                  Text(
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
                  Spacer(),
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
                      Icon(Icons.construction_sharp),
                      Container(
                        margin: EdgeInsets.only(
                          top: height * 0.05,
                          left: width * 0.05,
                          right: width * 0.05,
                        ),
                        width: width * 0.6,
                        height: height * .5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: blackColor.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Text("HEEEEEEEEEEEEEEY"),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: height * 0.05,
                          left: width * 0.05,
                          right: width * 0.05,
                        ),
                        width: width * 0.6,
                        height: height * .5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: blackColor.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Text("HEEEEEEEEEEEEEEY"),
                      )
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
          style: TextStyle(
            fontFamily: openSansFont,
            fontWeight: regularFont,
            fontSize: 20,
            color: blackColor,
            inherit: false,
          ),
        )),
  );
}
