import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calendar_scheduler/const/colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isTime;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;

  const CustomTextField({
    required this.label,
    required this.isTime,
    required this.onSaved,
    required this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: PRIMARY_COLOR,
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          flex: isTime ? 0 : 1,
          child: TextFormField(
            onSaved: onSaved, // 폼 저장할때 실행
            validator: validator, // 폼 검증할때 실행
            cursorColor: Colors.grey, // 커서 색상
            maxLines: isTime ? 1 : null,
            expands: !isTime, // 시간 관련 텍스트 필드 공간 최대 차지
            keyboardType:
                isTime ? TextInputType.number : TextInputType.multiline, // 시간 관련 텍스프 필드는 숫자 키보드 사용 아니면 일반 키보드
            inputFormatters:
                isTime ? [FilteringTextInputFormatter.digitsOnly] : [], // 시간 관련 텍스트 필드는 숫자만 입력
            decoration: InputDecoration(
              border: InputBorder.none, // 텍스트 필드 테두리 없음
              filled: true, // 텍스트 필드 배경색 채움
              fillColor: Colors.grey[300], // 텍스트 필드 배경색
              suffixText: isTime ? '시' : null, // 시간 관련 텍스트 필드에 '시' 추가
            ),
          ),
        ),
      ],
    );
  }
}
