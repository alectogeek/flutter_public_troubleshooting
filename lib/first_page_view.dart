import 'package:flutter/cupertino.dart';
import 'package:flutter_app/bloc_provider.dart';
import 'package:flutter_app/ona_more_page_view.dart';
import 'package:flutter_app/page_bloc.dart';

class FirstPageView extends StatefulWidget {
  @override
  _FirstPageViewState createState() => _FirstPageViewState();
}

class _FirstPageViewState extends State<FirstPageView> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<PageBloc>(context);
    return CupertinoPageScaffold(
      child: Container(
        child: StreamBuilder(
          stream: bloc.outTaskType,
          builder: (context, snapshot) {
            print(
                'StreamBuilder<Tuple2<TaskType, Word>> called');
            return OneMorePage(key: UniqueKey(),);
          },
        ),
      ),
    );
  }
}
