import 'package:flutter/material.dart';
import 'package:ndako243/app.dart';

void main() {
  runApp(Ndako243());
}



/*
import 'package:zwandako/app.dart';
import 'package:zwandako/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:bloc/bloc.dart';
// import 'package:intl/date_symbol_data_local.dart';

class ZwandakoBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    debugPrint('Main.ZwandakoBlocObserver.OnEvent ::: EVENT: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint(
        'Main.ZwandakoBlocObserver.OnTransition ::: TRANSITION: $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase base, Object error, StackTrace stackTrace) {
    super.onError(base, error, stackTrace);
    debugPrint('Main.ZwandakoBlocObserver.OnError ::: '
        'ERROR: $error & STACKTRACE: $stackTrace');
  }
}

void main() async {
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Blue));

  initializeDateFormatting().then((_) => runApp(Dawa()));
/*
  try {
    Bloc.observer = DawaBlocObserver();
    WidgetsFlutterBinding.ensureInitialized();
    await init(); //class of initialisation object injector
    runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SubjectBloc(),
          ),
          BlocProvider(
            create: (context) => SubjectBloc(),
          ),
        ],
        child: Dawa(),
      ),
    );
  } catch (error, stacktrace) {
    debugPrint('Main.Main ::: ERROR: $error & STACKTRACE: $stacktrace');
  }
  */
}



*/