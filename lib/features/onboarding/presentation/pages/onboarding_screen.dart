import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/config/constants/image_path.dart';
import 'package:taskora/core/router/routers_name.dart';
import 'package:taskora/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:taskora/features/onboarding/presentation/bloc/onboarding_event.dart';
import 'package:taskora/features/onboarding/presentation/bloc/onboarding_status.dart';
import 'package:taskora/features/onboarding/presentation/widgets/build_onboarding_content_item.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // Data

  static const _pages = [
    _OnboardingPageData(
      image: ImagePath.onboarding1,
      title: 'إدارة مشاريعك بكل سهولة ووضوح',
      description: 'أنشئ مشاريعك، حدّد تفاصيلها، وتابع تقدمك في مكان واحد مصمم خصيصاً للمستقلين.',
      maxLines: 2,
    ),
    _OnboardingPageData(
      image: ImagePath.onboarding2,
      title: 'نظّم مهامك وابقَ على المسار الصحيح',
      description: 'أضف مهام لكل مشروع، حدّد أولوياتها، وتابع حالة كل مهمة من ToDo حتى Done بسهولة وبساطة.',
      maxLines: 2,
    ),
    _OnboardingPageData(
      image: ImagePath.onboarding3,
      title: 'اعرف أرباحك الحقيقية فوراً',
      description: 'يحسب التطبيق ساعات عملك تلقائياً ويعرض لك أرباحك المكتسبة لكل مهمة أو مشروع، بدقة وشفافية.',
      maxLines: 2,
    ),
  ];

  // State

  late final PageController _pageController;
  double _currentPage = 0;

  bool get _isLastPage => _currentPage.round() == _pages.length - 1;

  //  Lifecycle
  @override
  void initState() {
    super.initState();
    _pageController = PageController()
      ..addListener(_onPageChanged);
  }

  @override
  void dispose() {
    _pageController
      ..removeListener(_onPageChanged)
      ..dispose();
    super.dispose();
  }


  // Handlers
  void _onPageChanged() {
    final page = _pageController.page;
    if (page != null && page != _currentPage) {
      setState(() => _currentPage = page);
    }
  }

  void _onButtonPressed() {
    if (_isLastPage) {
      context.read<OnboardingBloc>().add(OnboardingCompletedEvent());
      return;
    }
    _pageController.nextPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }


  //todo: Navigator to Home screen
  void _onStateChanged(BuildContext context, OnboardingStatus state) {
    if (state is NavigateToLoginState) {
      Navigator.pushReplacementNamed(context, RoutersName.loginScreen);
    }
  }


  // Build
  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingBloc, OnboardingStatus>(
      listener: _onStateChanged,
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: PageView.builder(
          controller: _pageController,
          physics: const PageScrollPhysics(),
          itemCount: _pages.length,
          itemBuilder: _buildPage,
        ),
      ),
    );
  }

  Widget _buildPage(BuildContext context, int index) {
    final page = _pages[index];
    return SingleChildScrollView(
      child: BuildOnboardingContent(
        boardImage: page.image,
        titleText: page.title,
        decText: page.description,
        maxLine: page.maxLines,
        isNext: !_isLastPage,
        onPressed: _onButtonPressed,
        currentPage: _currentPage,
        totalPages: _pages.length,
      ),
    );
  }
}

// Model

final class _OnboardingPageData {
  const _OnboardingPageData({
    required this.image,
    required this.title,
    required this.description,
    required this.maxLines,
  });

  final String image;
  final String title;
  final String description;
  final int maxLines;
}