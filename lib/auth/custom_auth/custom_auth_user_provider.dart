import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class MekaLTAuthUser {
  MekaLTAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UsersStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MekaLTAuthUser> mekaLTAuthUserSubject =
    BehaviorSubject.seeded(MekaLTAuthUser(loggedIn: false));
Stream<MekaLTAuthUser> mekaLTAuthUserStream() =>
    mekaLTAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
