// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../data/models/verify_models/api_send_code_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiSendCodeInput _$ApiSendCodeInputFromJson(Map<String, dynamic> json) =>
    ApiSendCodeInput(
      useCase: json['useCase'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$ApiSendCodeInputToJson(ApiSendCodeInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'useCase': instance.useCase,
    };