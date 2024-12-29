import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MobileNumberInputField extends StatelessWidget {
  const MobileNumberInputField({
    super.key,
    required this.controller,
    this.initialCountryCode = '+94',
    required this.onCountryCodeChanged,
    required this.onChanged,
    this.validator,
    this.height = 80.0,
    this.textColor = const Color(0xff000000),
  });
  final TextEditingController controller;
  final String initialCountryCode;
  final void Function(String) onCountryCodeChanged;
  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final double height;
  final Color textColor;
  static final maskFormatter = MaskTextInputFormatter(
    mask: '### ### ####',
    filter: {
      "#": RegExp(r'[0-9]'),
    },
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 2.0),
          Expanded(
            flex: 8,
            child: TextFormField(
              inputFormatters: [maskFormatter],
              // style: montserratBold.copyWith(
              //   fontSize: 16,
              //   color: textColor,
              // ),
              controller: controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                fillColor: const Color(0xffe8e8e8),
                prefixIcon: Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: height,
                  width: 90,
                  decoration: BoxDecoration(
                    color: const Color(0xffe8e8e8),
                    border: Border.all(color: const Color(0xffe8e8e8)),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 19),
                        Text(
                          "+94",
                          textAlign: TextAlign.center,
                          // style: montserratBold.copyWith(
                          //   fontSize: 16,
                          //   color: const Color(
                          //     0xff575757,
                          //   ),
                          // ),
                        ),
                        SizedBox(width: 15),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 9.0),
                          child: VerticalDivider(
                              color: Colors.black, thickness: 1),
                        ),
                      ],
                    ),
                  ),
                ),
                errorMaxLines: 2,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffe8e8e8),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffe8e8e8),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffe8e8e8),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffe8e8e8),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffe8e8e8),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "123 123 123",
                filled: true,
                // hintStyle: montserratBold.copyWith(
                //   fontSize: 16,
                //   color: const Color(0xff868686),
                // ),
                contentPadding: const EdgeInsets.only(left: 0),
              ),
              validator: validator,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
