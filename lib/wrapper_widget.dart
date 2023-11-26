import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'data_class.dart';
class WrapperWidget extends StatefulWidget {
  WrapperWidget({super.key, required this.child}) {
    // TODO: implement WrapperWidget
    data_class.OffsitList.add(Offset.zero);
    order=data_class.OffsitList.length-1;
  }
  final Widget child;
  late final int order;
  @override
  State<WrapperWidget> createState() => _WrapperWidgetState();
}
class _WrapperWidgetState extends State<WrapperWidget> with WidgetsBindingObserver{
  void _getMetrics(){
    final RenderBox? _r = context.findRenderObject() as RenderBox;
    if(_r!=null){
      data_class.OffsitList[widget.order]=_r.localToGlobal(Offset.zero);
    }}
  @override
  void didChangeMetrics() {
    _getMetrics();
  }
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _getMetrics();
    });
    return  widget.child;
  }
}

