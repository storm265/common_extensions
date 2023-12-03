import 'package:flutter/material.dart';

/* Usage example
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: null,
      builder: (context, snapshot) {
        return snapshot.when(
          data: (data) => Text('$data'),
          empty: () => const Text('no data'),
          error: (error, _) => const Text('no data'),
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
    );
  }
}
*/
//Source Flutter Tips and Tricks - Simon Lightfoot - Fluttercon23
extension WhenAsyncSnapshot<T> on AsyncSnapshot<T> {
  R when<R>({
    R Function()? empty,
    R Function(dynamic error, StackTrace? stackTrace)? error,
    R Function()? loading,
    R Function(T value)? data,
  }) {
    if (hasData && data != null) {
      // If we have data then lets display it no-matter what!
      return data(requireData);
    }

    if (connectionState != ConnectionState.done && loading != null) {
      // Are we are still loading?
      return loading();

      // Did we get an error? return error(this.error, stackTrace);
    } else if (hasError && error != null) {
      return error(this.error, stackTrace);
    }

    // No data, not loading, no error, we're empty!
    else if (empty != null) {
      return empty();
    }

    // We only get here if the developer does not provide any parameters
    else {
      throw UnsupportedError('Missing parameters to when()');
    }
  }
}
