import 'package:flutter/widgets.dart';

class HomeCategoryMenuItemModel {
  final Widget caption;
  final Widget icon;
  final Function() onClick;

  HomeCategoryMenuItemModel({
    @required this.caption,
    @required this.icon,
    @required this.onClick,
  }) {
    assert(caption != null);
    assert(icon != null);
    assert(onClick != null);
  }

  @override
  String toString() => 'HomeCategoryMenuItemModel(caption: $caption, icon: $icon, onClick: $onClick)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is HomeCategoryMenuItemModel &&
      o.caption == caption &&
      o.icon == icon &&
      o.onClick == onClick;
  }

  @override
  int get hashCode => caption.hashCode ^ icon.hashCode ^ onClick.hashCode;
}
