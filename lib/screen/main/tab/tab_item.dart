import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home.dart';
import 'package:fast_app_base/screen/main/tab/stock/f_stock.dart';
import 'package:fast_app_base/screen/main/tab/ttospay/f_ttospay.dart';
import 'package:flutter/material.dart';

import 'all/f_all.dart';
import 'benifit/f_benifit.dart';

enum TabItem {
  home(Icons.home, '홈', HomeFragment()),  // ctrl + d 로 줄 복사
  benifit(Icons.star, '혜택', BenefitFragment()),
  ttospay(Icons.payment, '토스페이', TtospayFragment()),
  stock(Icons.candlestick_chart, '주식', StockFragment()),
  all(Icons.menu, '전체', AllFragment());

  final IconData activeIcon;   //직접 아이콘을 넣으려면 여기를 수정하자.
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
