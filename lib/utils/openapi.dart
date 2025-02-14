// Openapi Generator last run: : 2025-02-14T21:33:53.080458
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

// Openapi Generatorの設定
@Openapi(
  additionalProperties: AdditionalProperties(
    pubName: 'openapi', // 生成するパッケージ名
    pubAuthor: 'JboyHashimoto', // 生成するパッケージの作者名
  ),
  inputSpec: InputSpec(path: 'openapi.yaml'), // 生成するAPIの設定ファイル
  generatorName: Generator.dio, // 生成するAPIのライブラリ
  outputDirectory: 'openapi', // 生成するAPIのディレクトリ
)

// 生成するAPIの設定
class ApiConfig {
  static const String baseUrl = 'https://67adef339e85da2f020bc5ea.mockapi.io/test-api/users';
}