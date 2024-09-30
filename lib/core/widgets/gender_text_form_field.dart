import '../../exports.dart';

class GenderTextFormField extends StatefulWidget {
  final String hintText;
  final TextStyle hintStyle;
  final double radius;
  final EdgeInsetsDirectional contentPadding;
  final Function(String?) onGenderSelected; // Callback to notify parent

  // Added fields for male and female text and their styles
  final String maleText;
  final TextStyle maleTextStyle;
  final String femaleText;
  final TextStyle femaleTextStyle;

  const GenderTextFormField({
    super.key,
    required this.hintText,
    required this.hintStyle,
    required this.radius,
    required this.contentPadding,
    required this.onGenderSelected, // Pass the callback function
    required this.maleText, // Male text passed from parent
    required this.maleTextStyle, // Male text style passed from parent
    required this.femaleText, // Female text passed from parent
    required this.femaleTextStyle, // Female text style passed from parent
  });

  @override
  State<GenderTextFormField> createState() => _GenderTextFormFieldState();
}

class _GenderTextFormFieldState extends State<GenderTextFormField> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: AppColors.white,
        contentPadding: widget.contentPadding,
        suffixIcon: PopupMenuButton<String>(
          icon: const Icon(
            Icons.arrow_drop_down,
            color: AppColors.slateGrayColor,
          ),
          color: AppColors.white,
          onSelected: (String value) {
            setState(() {
              selectedGender = value;
              widget.onGenderSelected(value);
            });
          },
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'Male',
                child: Text(widget.maleText, style: widget.maleTextStyle),
              ),
              PopupMenuItem<String>(
                value: 'Female',
                child: Text(widget.femaleText, style: widget.femaleTextStyle),
              ),
            ];
          },
        ),
      ),
      controller: TextEditingController(text: selectedGender),
      style: widget.hintStyle, // Use the same style as the hint text
      readOnly: true,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
    );
  }
}
