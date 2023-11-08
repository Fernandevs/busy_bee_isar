import 'package:formz/formz.dart';

enum TitleFormzError { empty, length }

class TitleFormz extends FormzInput<String, TitleFormzError> {
  const TitleFormz.pure() : super.pure('');

  const TitleFormz.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == TitleFormzError.empty) return 'El campo es requerido';

    if (displayError == TitleFormzError.length) {
      return 'El campo debe ser mayor a dos caracteres';
    }

    return null;
  }

  @override
  TitleFormzError? validator(String value) {
    if (value.isEmpty) return TitleFormzError.empty;
    if (value.length < 2) return TitleFormzError.length;

    return null;
  }
}
