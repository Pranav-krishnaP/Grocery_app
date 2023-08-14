import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../models/models.dart';

Widget items(Items obj, var h, var w) {
  return Container(
    padding: EdgeInsets.all(w * 0.03),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black..withOpacity(0.5), width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: h * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(obj.imgurl!),
                  fit: BoxFit.contain)),
        ),
        verticalspace(h * 0.05),
        Text(
          obj.name!,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Gildon",
              fontSize: h * 0.08),
        ),
        verticalspace(h * 0.005),
        Text(
          obj.desc!,
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontFamily: "Gildon",
              fontSize: h * 0.05),
        ),
        verticalspace(h * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                obj.price!.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Gildon",
                    fontSize: h * 0.06),
              ),
            ),
            const Expanded(
              flex: 3,
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: Ink(
                child: InkWell(
                  splashFactory: InkRipple.splashFactory,
                  onHover: (value) {},
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget filteritems(String name) {
  var change = false.obs;
  return SizedBox(
    child: Row(
      children: [
        Obx(() => Checkbox(
            value: change.value,
            onChanged: (bool? value) {
              change.value = value as bool;
            })),
        horizontalspace(23),
        const Text("Noodles")
      ],
    ),
  );
}
