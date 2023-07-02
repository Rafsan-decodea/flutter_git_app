import 'package:flutter/material.dart';
import 'package:pmp/pmp/app.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:pmp/main.dart';
import 'package:pmp/db/host_address.dart';
import 'package:pmp/db/loaded_account.dart';
import 'package:pmp/db/synchronization.dart';
import 'package:pmp/screens/log_screen.dart';
import 'package:pmp/screens/main_screen.dart';
import 'package:pmp/screens/splash_screen.dart';

class SynchronizationWrapper {
  final BuildContext _context;
  Synchronization? _sync;

  SynchronizationWrapper({required BuildContext context}) : _context = context;

  void _onConnected() {
    Navigator.pushNamed(_context, SplashScreen.routeName);
  }

  void _onSyncComplete() {
    Navigator.popUntil(
        _context, (r) => r.settings.name == MainScreen.routeName);
  }

  void _onSyncError(String log) {
    void _showLog() => navigatorKey.currentState!
        .pushNamed(LogScreen.routeName, arguments: log);

    ScaffoldMessenger.of(_context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(
        content: Row(children: const [
          Icon(Icons.sync_problem_rounded, color: PmpTheme.darkContentColor),
          SizedBox(width: 20),
          Expanded(child: Text('Sync error')),
        ]),
        action: SnackBarAction(label: 'Details', onPressed: _showLog),
      ));
  }

  void connect(LoadedAccount account, {required String address}) {
    HostAddress hostAddress;
    try {
      hostAddress = HostAddress.parse(address);
    } catch (e) {
      ScaffoldMessenger.of(_context)
        ..clearSnackBars()
        ..showSnackBar(SnackBar(
          content: Row(children: const [
            Icon(Icons.sync_problem_rounded, color: PmpTheme.darkContentColor),
            SizedBox(width: 20),
            Text('Invalid address format'),
          ]),
        ));
      return;
    }

    account
        .connect(
      hostAddress,
      onConnected: () => _onConnected(),
      onComplete: () => _onSyncComplete(),
      onError: (log) => _onSyncError(log),
    )
        .onError((error, stackTrace) {
      ScaffoldMessenger.of(_context).clearSnackBars();
      ScaffoldMessenger.of(_context).showSnackBar(SnackBar(
        content: Row(children: const [
          Icon(Icons.sync_problem_rounded, color: PmpTheme.darkContentColor),
          SizedBox(width: 20),
          Text('Connection failed'),
        ]),
        action: SnackBarAction(
          label: 'Details',
          onPressed: () => Navigator.pushNamed(_context, LogScreen.routeName,
              arguments: '$error\n$stackTrace'),
        ),
      ));
    });
  }

  void host(LoadedAccount account) {
    _sync = account.getSynchronization(
      onConnected: _onConnected,
      onComplete: _onSyncComplete,
      onError: _onSyncError,
    );
    _sync!.host(onConnected: _onConnected).then((value) {
      if (value == null) return;
      showDialog(
        context: _context,
        builder: (_) => SimpleDialog(
          shape: PmpTheme.dialogShape,
          children: [
            Center(
              child: SizedBox(
                width: 300,
                height: 350,
                child: Column(
                  children: [
                    // QrImage(
                    //   data: value.toString(),
                    //   foregroundColor: Colors.blue[50],
                    // ),
                    Expanded(
                      child: Center(
                        child: Text(value.toString()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ).whenComplete(() {
        try {
          _sync!.close();
        } catch (e) {
          // Ignore exceptions if synchronization is running
        }
      });
    });
  }
}
