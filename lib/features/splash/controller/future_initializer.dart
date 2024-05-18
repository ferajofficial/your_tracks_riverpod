import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:platform_info/platform_info.dart';

import 'package:your_tracks_riverpod/bootstrap.dart';
import 'package:your_tracks_riverpod/core/local_storage/app_storage_pod.dart';
import 'package:your_tracks_riverpod/features/splash/controller/box_encryption_key_pod.dart';
import 'package:your_tracks_riverpod/init.dart';
import 'package:your_tracks_riverpod/shared/riverpod_ext/riverpod_observer.dart';

final futureInitializerPod =
    FutureProvider.autoDispose<ProviderContainer>((ref) async {
  ///Additional intial delay duration for app
  // await Future.delayed(const Duration(seconds: 1));
  await (init());
  await Hive.initFlutter();

  ///Replace `appBox` namw with any key you want

  final encryptionCipher = await Platform.I.when(
    mobile: () async {
      final encryptionKey = await ref.watch(boxEncryptionKeyPod.future);
      return HiveAesCipher(encryptionKey);
    },
  );

  ///TODO: Replace box name with your unique name
  final appBox = await Hive.openBox(
    'AppBox',
    encryptionCipher: encryptionCipher,
  );
  return ProviderContainer(
    overrides: [
      appBoxProvider.overrideWithValue(appBox),
    ],
    observers: [
      MyObserverLogger(
        talker: talker,
      ),
    ],
  );
});
