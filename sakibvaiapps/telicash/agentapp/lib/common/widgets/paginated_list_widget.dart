import 'package:flutter/material.dart';
import 'package:six_cash/util/dimensions.dart';

class PaginatedListWidget extends StatefulWidget {
  final ScrollController scrollController;
  final Function(int? offset) onPaginate;
  final int? totalSize;
  final int? offset;
  final int? limit;
  final Widget itemView;
  final bool enabledPagination;
  final bool reverse;
  const PaginatedListWidget({
    Key? key, required this.scrollController, required this.onPaginate, required this.totalSize,
    required this.offset, required this.itemView, this.enabledPagination = true, this.reverse = false, this.limit = 10,
  }) : super(key: key);

  @override
  State<PaginatedListWidget> createState() => _PaginatedListWidgetState();
}

class _PaginatedListWidgetState extends State<PaginatedListWidget> {
  int? _offset;
  late List<int?> _offsetList;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _offset = 1;
    _offsetList = [1];

    widget.scrollController.addListener(() {
      if (widget.scrollController.position.pixels == widget.scrollController.position.maxScrollExtent
          && widget.totalSize != null && !_isLoading && widget.enabledPagination) {
        if(mounted) {
          _paginate();
        }
      }
    });
  }

  void _paginate() async {
    int pageSize = (widget.totalSize! / widget.limit!).ceil();
    if (_offset! < pageSize && !_offsetList.contains(_offset!+1)) {

      setState(() {
        _offset = _offset! + 1;
        _offsetList.add(_offset);
        _isLoading = true;
      });
      await widget.onPaginate(_offset);

      setState(() {
        _isLoading = false;
      });

    }else {
      if(_isLoading) {
        setState(() {
          _isLoading = false;
        });
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    if(widget.offset != null) {
      _offset = widget.offset;
      _offsetList = [];
      for(int index=1; index<=widget.offset!; index++) {
        _offsetList.add(index);
      }
    }


    return Column(children: [

      widget.reverse ? const SizedBox() : widget.itemView,

      ( (widget.totalSize == null || _offset! >= (widget.totalSize! / (widget.limit!)).ceil() || _offsetList.contains(_offset!+1))) ? const SizedBox(height: Dimensions.paddingSizeDefault) : Center(child: Padding(
        padding: (_isLoading) ?  const EdgeInsets.all(Dimensions.paddingSizeDefault) : EdgeInsets.zero,
        child: _isLoading ? CircularProgressIndicator(color: Theme.of(context).primaryColor) :  const SizedBox(),
      )),

      widget.reverse ? widget.itemView : const SizedBox(),

    ]);
  }
}
