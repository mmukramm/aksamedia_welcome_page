import 'package:flutter/material.dart';

import 'package:aksamedia_welcome_page/features/models/welcome_item.dart';
import 'package:aksamedia_welcome_page/features/widgets/atoms/page_view_image.dart';
import 'package:aksamedia_welcome_page/features/widgets/organisms/welcome_card_with_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late final List<WelcomeItem> _welcomeItems;
  late final PageController _pageViewController;
  late ValueNotifier<int> _currentPage;

  @override
  void initState() {
    super.initState();
    _welcomeItems = [
      WelcomeItem(
        title: 'Gratis Materi Belajar Menjadi Seller Handal',
        description:
            'Nggak bisa jualan? Jangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya',
        imageName: 'Pexels Photo by Kampus Production.png',
      ),
      WelcomeItem(
        title: 'Ribuan Produk dengan Kualitas Terbaik',
        description:
            'Tokorame menyediakan ribuan produk dengan kualitas derbaik dari seller terpercaya',
        imageName: 'Pexels Photo by Karolina Grabowska.png',
      ),
      WelcomeItem(
        title: 'Toko Online Unik Untuk Kamu Jualan',
        description: 'Subdomain unik dan toko online profesional siap pakai',
        imageName: 'Pexels Photo by Lukas.png',
      ),
    ];
    _pageViewController = PageController(initialPage: 0);
    _currentPage = ValueNotifier(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: _currentPage,
        builder: (context, pageValue, _) {
          final welcomeItem = _welcomeItems[pageValue];
          return Stack(
            children: [
              PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _welcomeItems.length,
                controller: _pageViewController,
                itemBuilder: (_, index) => PageViewImage(
                  imageName: _welcomeItems[index].imageName,
                ),
              ),
              const Positioned(
                top: 24,
                right: 32,
                child: SafeArea(
                  child: Text('Lewati'),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: WelcomeCardWithPageIndicator(
                  selectedPage: pageValue,
                  welcomeItem: welcomeItem,
                  onClickButton: () => changePage(pageValue),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void changePage(int index) {
    if (index != _welcomeItems.length - 1) {
      _currentPage.value++;

      _pageViewController.animateToPage(
        _currentPage.value,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
  }
}
