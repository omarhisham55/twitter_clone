import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';
import '../utils/x_colors.dart';

class XTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final int? maxLength;
  final Function(String)? onChanged;
  final bool? readOnly;
  final bool? auotFocus;
  final Function()? onTap;
  final bool? isObscure;
  final Widget? suffix;
  final Widget? prefix;

  const XTextFormField({
    super.key,
    required this.label,
    required this.controller,
    this.maxLength,
    this.onChanged,
    this.readOnly,
    this.onTap,
    this.auotFocus,
    this.isObscure,
    this.suffix,
    this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        readOnly: readOnly ?? false,
        onTap: onTap,
        obscureText: isObscure ?? false,
        autofocus: auotFocus ?? false,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(color: XColors.shadeColor),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: XColors.shadeColor, width: .2)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: XColors.shadeColor, width: .2)),
            helperStyle: const TextStyle(color: XColors.shadeColor),
            suffixIcon: suffix,
            prefixIcon: prefix),
        style: const TextStyle(color: XColors.whiteColor),
        maxLength: maxLength,
      ),
    );
  }
}

// ignore: must_be_immutable
class DropDownFormField extends StatefulWidget {
  final String label;
  final List<String> list;
  final bool? enableMargin;
  String? selectedValue;
  DropDownFormField(
      {super.key,
      required this.list,
      required this.label,
      this.enableMargin,
      required this.selectedValue});

  @override
  State<DropDownFormField> createState() => _DropDownFormFieldState();
}

class _DropDownFormFieldState extends State<DropDownFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.enableMargin ?? false
          ? const EdgeInsets.symmetric(horizontal: 10)
          : null,
      decoration: const BoxDecoration(
          border: Border.fromBorderSide(
              BorderSide(width: .3, color: XColors.shadeColor))),
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(color: XColors.shadeColor),
          ),
          DropdownButton(
            onChanged: (value) {
              setState(() {
                widget.selectedValue = value;
                if (widget.label == "Month") {
                  BlocProvider.of<CreateAccountCubit>(context)
                      .selectedMonthValue = value;
                  BlocProvider.of<CreateAccountCubit>(context).changeMonth();
                } else if (widget.label == "Day") {
                  BlocProvider.of<CreateAccountCubit>(context)
                      .selectedDayValue = value;
                } else if (widget.label == "Year") {
                  BlocProvider.of<CreateAccountCubit>(context)
                      .selectedYearValue = value;
                }
                BlocProvider.of<CreateAccountCubit>(context).allowStep2();
              });
            },
            icon: const Icon(Icons.keyboard_arrow_down),
            iconSize: 35,
            value: widget.selectedValue,
            style: const TextStyle(color: XColors.whiteColor),
            dropdownColor: XColors.primaryColor,
            isExpanded: true,
            underline: Container(),
            items: widget.list
                .map(
                  (value) => DropdownMenuItem(value: value, child: Text(value)),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class XCommentFormField extends StatefulWidget {
  final String hintText;
  const XCommentFormField({super.key, required this.hintText});

  @override
  State<XCommentFormField> createState() => _XCommentFormFieldState();
}

class _XCommentFormFieldState extends State<XCommentFormField> {
  final focusNode = FocusNode();
  Icon suffixIcon = const Icon(
    Icons.camera_alt_outlined,
    color: XColors.secondaryColor,
  );
  @override
  Widget build(BuildContext context) {
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          suffixIcon = const Icon(Icons.expand_rounded);
        });
      } else {
        setState(() {
          suffixIcon = const Icon(
            Icons.camera_alt_outlined,
            color: XColors.secondaryColor,
          );
        });
      }
    });
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: focusNode.hasFocus,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "Replying to",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Text(
                  "@Username",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: XColors.secondaryColor),
                ),
              ],
            ),
          ),
        ),
        TextField(
          focusNode: focusNode,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: XColors.whiteColor),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            contentPadding: const EdgeInsets.only(left: 20, top: 15),
            focusColor: XColors.secondaryColor,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: XColors.secondaryColor),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
        Visibility(
          visible: focusNode.hasFocus,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.image,
                  color: XColors.secondaryColor,
                ),
                const Icon(
                  Icons.gif_box_outlined,
                  color: XColors.secondaryColor,
                ),
                const Icon(
                  Icons.list,
                  color: XColors.secondaryColor,
                ),
                const Icon(
                  Icons.location_on_outlined,
                  color: XColors.secondaryColor,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(XColors.secondaryColor),
                    padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Reply",
                    style: TextStyle(color: XColors.whiteColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

