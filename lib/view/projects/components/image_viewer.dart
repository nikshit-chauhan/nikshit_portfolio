import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';

class ImageViewer {
  ImageViewer(BuildContext context, String image) {
    showGeneralDialog(
      barrierColor: Colors.black,
      transitionDuration: const Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Hero(
            tag: 'IMAGEVIEW',
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Scaffold(
                appBar: AppBar(
                  leading: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.black,
                ),
                backgroundColor: Colors.black,
                body: Container(
                  color: Colors.black,
                  child: Center(child: PhotoView(imageProvider: AssetImage(image))),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
