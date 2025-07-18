import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:rasa_app/core/utils/constant/app_colors.dart';

class CustomDropdown extends StatefulWidget {
  final List<String>? items;
  final String? title;
  String? selectedValue;
  CustomDropdown({
    super.key,
    required this.items,
    required this.title,
    this.selectedValue,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title ?? 'Pilih Opsi',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(height: 8),
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: const Text(
              'Pilih',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            items: widget.items!
                .map((item) => DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: widget.items!.contains(widget.selectedValue)
                ? widget.selectedValue
                : null,
            onChanged: (value) {
              setState(() {
                widget.selectedValue = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 48,
              padding: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFB0B0B0)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(Icons.keyboard_arrow_down_rounded),
              iconSize: 24,
              iconEnabledColor: Colors.black,
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
