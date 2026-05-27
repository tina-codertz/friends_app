//reusable labeled input for the email and password fields

import 'package:flutter/material.dart';
import 'package:frontend/core/theme/app_colors.dart';
import 'package:frontend/core/theme/app_text_styles.dart';

class PulseTextField extends StatelessWidget{
    final String label;
    final String hintText;
    final TextEditingController controller;
    final bool obscureText;
    final TextInputType keyboardType;

    const PulseTextField({
        super.key,
        required this.label,
        required this.hintText,
        required this.controller,
        this.obscureText = false,
        this.keyboardType = TextInputType.text,
    });

    @override
    Widget build(BuildContext context){
        return Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[
                Text(label, style:AppTextStyles.label),
                const SizedBox(height:8),

                TextField(
                    controller:controller,
                    obscureText:obscureText,
                    keyboardType:keyboardType,
                    style:AppTextStyles.body,
                    decoration:InputDecoration(
                        hintText:hintText,
                        hintStyle:AppTextStyles.body.copyWith(color:AppColors.grey),
                        filled:true,
                        fillColor:AppColors.inputBackground,
                        border:OutlineInputBorder(
                            borderRadius:BorderRadius.circular(12),
                            borderSide:BorderSide.none

                        ),
                        contentPadding:const EdgeInsets.symmetric(
                            horizontal:16,
                            vertical:14,
                        ),
                    ),
                ),
            ],
        );
    }
}