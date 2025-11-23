import 'package:e_commerce_app/features/personalization/view/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SUserProfileTile extends StatelessWidget {
  const SUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text("Misterious man"),
      subtitle: Text("misteriaas@gmail.com"),
      trailing: IconButton(onPressed: ()=>Get.to(()=>EditProfileScreen()), icon: Icon(Icons.edit_off_sharp)),
    );
  }
}
