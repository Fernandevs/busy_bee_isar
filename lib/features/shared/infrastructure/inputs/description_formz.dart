import 'package:formz/formz.dart';

enum DescriptionFormzError { empty, length }

class DescriptionFormz extends FormzInput<String, DescriptionFormzError> {
  const DescriptionFormz.pure() : super.pure('');

  const DescriptionFormz.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == DescriptionFormzError.empty) return 'El campo es requerido';

    if (displayError == DescriptionFormzError.length) {
      return 'El campo debe ser mayor a dos caracteres';
    }

    return null;
  }

  @override
  DescriptionFormzError? validator(String value) {
    if (value.isEmpty) return DescriptionFormzError.empty;
    if (value.length < 2) return DescriptionFormzError.length;

    return null;
  }
}
