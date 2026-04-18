// import 'dart:developer';

import 'package:flutter/material.dart';


abstract final class AppHelper {
  static OutlineInputBorder outlineInputBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.grey),
    );
  }

  // static SupabaseClient supabase = Supabase.instance.client;
  // static UserEntity? userModel;
  // static Future<String> uploadImageToStorage({
  //   required XFile? profilePic,
  //   required String bucketName,
  //   required String userId,
  // }) async {
  //   if (profilePic == null) {
  //     return "Assets/Images/737064202.png";
  //   }

  //   try {
  //     final bytes = await profilePic.readAsBytes();

  //     final fileName = "image_${DateTime.now().millisecondsSinceEpoch}.jpg";

  //     final filePath = "$userId/$fileName";

  //     await supabase.storage.from(bucketName).uploadBinary(filePath, bytes);

  //     final publicUrl = supabase.storage
  //         .from(bucketName)
  //         .getPublicUrl(filePath);

  //     log("✅ Image URL: $publicUrl");

  //     return publicUrl;
  //   } catch (e) {
  //     log("❌ Image upload failed: $e");
  //     throw Exception("فشل رفع الصورة");
  //   }
  // }
}
