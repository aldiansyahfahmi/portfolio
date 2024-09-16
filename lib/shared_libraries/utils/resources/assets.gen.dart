/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/icons
  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();

  /// Directory path: assets/images/photo
  $AssetsImagesPhotoGen get photo => const $AssetsImagesPhotoGen();

  /// Directory path: assets/images/projects
  $AssetsImagesProjectsGen get projects => const $AssetsImagesProjectsGen();
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/dart-original.svg
  SvgGenImage get dartOriginal =>
      const SvgGenImage('assets/images/icons/dart-original.svg');

  /// File path: assets/images/icons/figma-original.svg
  SvgGenImage get figmaOriginal =>
      const SvgGenImage('assets/images/icons/figma-original.svg');

  /// File path: assets/images/icons/flutter-original.svg
  SvgGenImage get flutterOriginal =>
      const SvgGenImage('assets/images/icons/flutter-original.svg');

  /// File path: assets/images/icons/git-original.svg
  SvgGenImage get gitOriginal =>
      const SvgGenImage('assets/images/icons/git-original.svg');

  /// File path: assets/images/icons/github.svg
  SvgGenImage get github => const SvgGenImage('assets/images/icons/github.svg');

  /// File path: assets/images/icons/instagram.svg
  SvgGenImage get instagram =>
      const SvgGenImage('assets/images/icons/instagram.svg');

  /// File path: assets/images/icons/linkedin.svg
  SvgGenImage get linkedin =>
      const SvgGenImage('assets/images/icons/linkedin.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        dartOriginal,
        figmaOriginal,
        flutterOriginal,
        gitOriginal,
        github,
        instagram,
        linkedin
      ];
}

class $AssetsImagesPhotoGen {
  const $AssetsImagesPhotoGen();

  /// File path: assets/images/photo/profile_pic.png
  AssetGenImage get profilePic =>
      const AssetGenImage('assets/images/photo/profile_pic.png');

  /// File path: assets/images/photo/profile_pic2.png
  AssetGenImage get profilePic2 =>
      const AssetGenImage('assets/images/photo/profile_pic2.png');

  /// List of all assets
  List<AssetGenImage> get values => [profilePic, profilePic2];
}

class $AssetsImagesProjectsGen {
  const $AssetsImagesProjectsGen();

  /// File path: assets/images/projects/E-Book Anatomy Learning.png
  AssetGenImage get eBookAnatomyLearning =>
      const AssetGenImage('assets/images/projects/E-Book Anatomy Learning.png');

  /// File path: assets/images/projects/E-Logbook PPDS-THT.png
  AssetGenImage get eLogbookPPDSTHT =>
      const AssetGenImage('assets/images/projects/E-Logbook PPDS-THT.png');

  /// File path: assets/images/projects/E-Logbook Prodi S1 FKUH.png
  AssetGenImage get eLogbookProdiS1FKUH =>
      const AssetGenImage('assets/images/projects/E-Logbook Prodi S1 FKUH.png');

  /// File path: assets/images/projects/E-Logbook Profesi FKUH.png
  AssetGenImage get eLogbookProfesiFKUH =>
      const AssetGenImage('assets/images/projects/E-Logbook Profesi FKUH.png');

  /// File path: assets/images/projects/E-Logbook Profesi UNIPA.png
  AssetGenImage get eLogbookProfesiUNIPA =>
      const AssetGenImage('assets/images/projects/E-Logbook Profesi UNIPA.png');

  /// File path: assets/images/projects/Med Anatomy Learning FKUH.png
  AssetGenImage get medAnatomyLearningFKUH => const AssetGenImage(
      'assets/images/projects/Med Anatomy Learning FKUH.png');

  /// File path: assets/images/projects/Presensita.png
  AssetGenImage get presensita =>
      const AssetGenImage('assets/images/projects/Presensita.png');

  /// File path: assets/images/projects/Wallpaper App.png
  AssetGenImage get wallpaperApp =>
      const AssetGenImage('assets/images/projects/Wallpaper App.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        eBookAnatomyLearning,
        eLogbookPPDSTHT,
        eLogbookProdiS1FKUH,
        eLogbookProfesiFKUH,
        eLogbookProfesiUNIPA,
        medAnatomyLearningFKUH,
        presensita,
        wallpaperApp
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
