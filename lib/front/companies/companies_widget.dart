import '/backend/backend.dart';
import '/comps/side_bar_front/side_bar_front_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'companies_model.dart';
export 'companies_model.dart';

class CompaniesWidget extends StatefulWidget {
  const CompaniesWidget({super.key});

  static String routeName = 'Companies';
  static String routePath = '/companies';

  @override
  State<CompaniesWidget> createState() => _CompaniesWidgetState();
}

class _CompaniesWidgetState extends State<CompaniesWidget>
    with TickerProviderStateMixin {
  late CompaniesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompaniesModel());

    _model.tabBarController1 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 1,
    )..addListener(() => safeSetState(() {}));

    _model.tabBarController2 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 1,
    )..addListener(() => safeSetState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CompaniesRecord>>(
      stream: queryCompaniesRecord(
        queryBuilder: (companiesRecord) => companiesRecord.where(
          'categoryRef',
          isEqualTo: _model.selectedCat?.reference,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).customColor2,
                  ),
                ),
              ),
            ),
          );
        }
        List<CompaniesRecord> companiesCompaniesRecordList = snapshot.data!;

        return Title(
            title: 'Companies',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                drawer: Drawer(
                  elevation: 16.0,
                  child: wrapWithModel(
                    model: _model.sideBarFrontModel,
                    updateCallback: () => safeSetState(() {}),
                    child: SideBarFrontWidget(
                      page: 'companies',
                    ),
                  ),
                ),
                body: SafeArea(
                  top: true,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        StickyHeader(
                          overlapHeaders: false,
                          header: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.headerMainModel,
                                updateCallback: () => safeSetState(() {}),
                                child: HeaderMainWidget(
                                  activeMenuItem: 'companies',
                                ),
                              ),
                            ],
                          ),
                          content: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.1,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/cxi3o_1.jpg',
                                        ).image,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Text(
                                              'Companies',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 0.0, 100.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/cxi3o_1.jpg',
                                          ).image,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Featured',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  mouseCursor:
                                                      SystemMouseCursors.click,
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () async {
                                                          context.pushNamed(
                                                              HomeWidget
                                                                  .routeName);
                                                        },
                                                ),
                                                TextSpan(
                                                  text: ' - Companies',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.14,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/cxi3o_1.jpg',
                                          ).image,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: StreamBuilder<
                                            List<CompaniesRecord>>(
                                          stream: queryCompaniesRecord(),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .customColor2,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<CompaniesRecord>
                                                carouselCompaniesRecordList =
                                                snapshot.data!;

                                            return Container(
                                              width: double.infinity,
                                              height: 95.0,
                                              child: CarouselSlider.builder(
                                                itemCount:
                                                    carouselCompaniesRecordList
                                                        .length,
                                                itemBuilder: (context,
                                                    carouselIndex, _) {
                                                  final carouselCompaniesRecord =
                                                      carouselCompaniesRecordList[
                                                          carouselIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          CompanyProfileDetailWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'compDoc':
                                                                serializeParam(
                                                              carouselCompaniesRecord,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'compDoc':
                                                                carouselCompaniesRecord,
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.6,
                                                        height: 60.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    CachedNetworkImage(
                                                                  fadeInDuration:
                                                                      Duration(
                                                                          milliseconds:
                                                                              500),
                                                                  fadeOutDuration:
                                                                      Duration(
                                                                          milliseconds:
                                                                              500),
                                                                  imageUrl:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    carouselCompaniesRecord
                                                                        .logo,
                                                                    'https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM=',
                                                                  ),
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.2,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.08,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  errorWidget: (context,
                                                                          error,
                                                                          stackTrace) =>
                                                                      Image
                                                                          .asset(
                                                                    'assets/images/error_image.jpeg',
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.2,
                                                                    height: MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.08,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  StreamBuilder<
                                                                      JobCategoriesRecord>(
                                                                    stream: JobCategoriesRecord.getDocument(
                                                                        carouselCompaniesRecord
                                                                            .categoryRef!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                40.0,
                                                                            height:
                                                                                40.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).customColor2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }

                                                                      final textJobCategoriesRecord =
                                                                          snapshot
                                                                              .data!;

                                                                      return Text(
                                                                        textJobCategoriesRecord
                                                                            .name,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      );
                                                                    },
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.5,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Text(
                                                                      carouselCompaniesRecord
                                                                          .name,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.inter(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.5,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Text(
                                                                      carouselCompaniesRecord
                                                                          .location,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.inter(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FontStyle.italic,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FontStyle.italic,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                carouselController: _model
                                                        .carouselController1 ??=
                                                    CarouselSliderController(),
                                                options: CarouselOptions(
                                                  initialPage: max(
                                                      0,
                                                      min(
                                                          1,
                                                          carouselCompaniesRecordList
                                                                  .length -
                                                              1)),
                                                  viewportFraction: 0.8,
                                                  disableCenter: true,
                                                  enlargeCenterPage: true,
                                                  enlargeFactor: 0.3,
                                                  enableInfiniteScroll: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  autoPlay: true,
                                                  autoPlayAnimationDuration:
                                                      Duration(
                                                          milliseconds: 800),
                                                  autoPlayInterval: Duration(
                                                      milliseconds:
                                                          (800 + 4000)),
                                                  autoPlayCurve: Curves.linear,
                                                  pauseAutoPlayInFiniteScroll:
                                                      true,
                                                  onPageChanged: (index, _) =>
                                                      _model.carouselCurrentIndex1 =
                                                          index,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.16,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/cxi3o_1.jpg',
                                          ).image,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: StreamBuilder<
                                            List<CompaniesRecord>>(
                                          stream: queryCompaniesRecord(),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .customColor2,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<CompaniesRecord>
                                                carouselCompaniesRecordList =
                                                snapshot.data!;

                                            return Container(
                                              width: double.infinity,
                                              height: 95.0,
                                              child: CarouselSlider.builder(
                                                itemCount:
                                                    carouselCompaniesRecordList
                                                        .length,
                                                itemBuilder: (context,
                                                    carouselIndex, _) {
                                                  final carouselCompaniesRecord =
                                                      carouselCompaniesRecordList[
                                                          carouselIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          CompanyProfileDetailWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'compDoc':
                                                                serializeParam(
                                                              carouselCompaniesRecord,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'compDoc':
                                                                carouselCompaniesRecord,
                                                          },
                                                        );
                                                      },
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.25,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    CachedNetworkImage(
                                                                  fadeInDuration:
                                                                      Duration(
                                                                          milliseconds:
                                                                              500),
                                                                  fadeOutDuration:
                                                                      Duration(
                                                                          milliseconds:
                                                                              500),
                                                                  imageUrl:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    carouselCompaniesRecord
                                                                        .logo,
                                                                    'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                  ),
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.06,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.08,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  errorWidget: (context,
                                                                          error,
                                                                          stackTrace) =>
                                                                      Image
                                                                          .asset(
                                                                    'assets/images/error_image.jpeg',
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.06,
                                                                    height: MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.08,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  StreamBuilder<
                                                                      JobCategoriesRecord>(
                                                                    stream: JobCategoriesRecord.getDocument(
                                                                        carouselCompaniesRecord
                                                                            .categoryRef!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                40.0,
                                                                            height:
                                                                                40.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).customColor2,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }

                                                                      final textJobCategoriesRecord =
                                                                          snapshot
                                                                              .data!;

                                                                      return Text(
                                                                        textJobCategoriesRecord
                                                                            .name,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      );
                                                                    },
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.12,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Text(
                                                                      carouselCompaniesRecord
                                                                          .name,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.inter(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.12,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Text(
                                                                      carouselCompaniesRecord
                                                                          .location,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.inter(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                carouselController: _model
                                                        .carouselController2 ??=
                                                    CarouselSliderController(),
                                                options: CarouselOptions(
                                                  initialPage: max(
                                                      0,
                                                      min(
                                                          1,
                                                          carouselCompaniesRecordList
                                                                  .length -
                                                              1)),
                                                  viewportFraction: 0.23,
                                                  disableCenter: true,
                                                  enlargeCenterPage: true,
                                                  enlargeFactor: 0.3,
                                                  enableInfiniteScroll: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  autoPlay: true,
                                                  autoPlayAnimationDuration:
                                                      Duration(
                                                          milliseconds: 800),
                                                  autoPlayInterval: Duration(
                                                      milliseconds:
                                                          (800 + 4000)),
                                                  autoPlayCurve: Curves.linear,
                                                  pauseAutoPlayInFiniteScroll:
                                                      true,
                                                  onPageChanged: (index, _) =>
                                                      _model.carouselCurrentIndex2 =
                                                          index,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Flex(
                                      direction: Axis.vertical,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment(1.0, 0),
                                                child: FlutterFlowButtonTabBar(
                                                  useToggleButtonStyle: true,
                                                  isScrollable: true,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                  unselectedLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  unselectedBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  unselectedBorderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  elevation: 0.0,
                                                  labelPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(10.0, 0.0,
                                                              10.0, 0.0),
                                                  buttonMargin:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(8.0, 0.0,
                                                              8.0, 0.0),
                                                  tabs: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons.bars,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          size: 30.0,
                                                        ),
                                                        Tab(
                                                          text: '',
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons.grid_view,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          size: 30.0,
                                                        ),
                                                        Tab(
                                                          text: '',
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController1,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController1,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  children: [
                                                    KeepAliveWidgetWrapper(
                                                      builder: (context) =>
                                                          Padding(
                                                        padding: EdgeInsets.all(
                                                            10.0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final companiesList2 =
                                                                companiesCompaniesRecordList
                                                                    .map((e) =>
                                                                        e)
                                                                    .toList();

                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  companiesList2
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  companiesList2Index) {
                                                                final companiesList2Item =
                                                                    companiesList2[
                                                                        companiesList2Index];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Stack(
                                                                    children: [
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            CompanyProfileDetailWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'compDoc': serializeParam(
                                                                                companiesList2Item,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'compDoc': companiesList2Item,
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.98,
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.12,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0x81F0F6FE),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                140.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                RichText(
                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: companiesList2Item.name,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.inter(
                                                                                                fontWeight: FontWeight.bold,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      )
                                                                                    ],
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.inter(
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  companiesList2Item.location,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FontStyle.italic,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FontStyle.italic,
                                                                                      ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                                                                                  child: StreamBuilder<JobCategoriesRecord>(
                                                                                    stream: JobCategoriesRecord.getDocument(companiesList2Item.categoryRef!),
                                                                                    builder: (context, snapshot) {
                                                                                      // Customize what your widget looks like when it's loading.
                                                                                      if (!snapshot.hasData) {
                                                                                        return Center(
                                                                                          child: SizedBox(
                                                                                            width: 40.0,
                                                                                            height: 40.0,
                                                                                            child: CircularProgressIndicator(
                                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                FlutterFlowTheme.of(context).customColor2,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }

                                                                                      final richTextJobCategoriesRecord = snapshot.data!;

                                                                                      return RichText(
                                                                                        textScaler: MediaQuery.of(context).textScaler,
                                                                                        text: TextSpan(
                                                                                          children: [
                                                                                            TextSpan(
                                                                                              text: richTextJobCategoriesRecord.name,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.inter(
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    decoration: TextDecoration.underline,
                                                                                                  ),
                                                                                            )
                                                                                          ],
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.inter(
                                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            1.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              15.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.25,
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 0.12,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.cover,
                                                                                image: Image.network(
                                                                                  valueOrDefault<String>(
                                                                                    companiesList2Item.logo,
                                                                                    'https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM=',
                                                                                  ),
                                                                                ).image,
                                                                              ),
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 2.0,
                                                                                  color: Color(0x37A9C1E1),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    2.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    KeepAliveWidgetWrapper(
                                                      builder: (context) =>
                                                          Padding(
                                                        padding: EdgeInsets.all(
                                                            10.0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final companiesGrid2 =
                                                                companiesCompaniesRecordList
                                                                    .map((e) =>
                                                                        e)
                                                                    .toList();

                                                            return GridView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              gridDelegate:
                                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                                crossAxisCount:
                                                                    2,
                                                                crossAxisSpacing:
                                                                    5.0,
                                                                mainAxisSpacing:
                                                                    5.0,
                                                                childAspectRatio:
                                                                    0.8,
                                                              ),
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  companiesGrid2
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  companiesGrid2Index) {
                                                                final companiesGrid2Item =
                                                                    companiesGrid2[
                                                                        companiesGrid2Index];
                                                                return Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      context
                                                                          .pushNamed(
                                                                        CompanyProfileDetailWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'compDoc':
                                                                              serializeParam(
                                                                            companiesGrid2Item,
                                                                            ParamType.Document,
                                                                          ),
                                                                        }.withoutNulls,
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          'compDoc':
                                                                              companiesGrid2Item,
                                                                        },
                                                                      );
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.48,
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.35,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0x7DF0F6FE),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(10.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                                                                              child: Material(
                                                                                color: Colors.transparent,
                                                                                elevation: 0.0,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                  height: 90.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: CachedNetworkImage(
                                                                                      fadeInDuration: Duration(milliseconds: 500),
                                                                                      fadeOutDuration: Duration(milliseconds: 500),
                                                                                      imageUrl: valueOrDefault<String>(
                                                                                        companiesGrid2Item.logo,
                                                                                        'https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM=',
                                                                                      ),
                                                                                      width: 200.0,
                                                                                      height: 200.0,
                                                                                      fit: BoxFit.cover,
                                                                                      errorWidget: (context, error, stackTrace) => Image.asset(
                                                                                        'assets/images/error_image.jpeg',
                                                                                        width: 200.0,
                                                                                        height: 200.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              companiesGrid2Item.name,
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                    font: GoogleFonts.interTight(
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                    ),
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              companiesGrid2Item.location,
                                                                              textAlign: TextAlign.center,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.inter(
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FontStyle.italic,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FontStyle.italic,
                                                                                  ),
                                                                            ),
                                                                            StreamBuilder<JobCategoriesRecord>(
                                                                              stream: JobCategoriesRecord.getDocument(companiesGrid2Item.categoryRef!),
                                                                              builder: (context, snapshot) {
                                                                                // Customize what your widget looks like when it's loading.
                                                                                if (!snapshot.hasData) {
                                                                                  return Center(
                                                                                    child: SizedBox(
                                                                                      width: 40.0,
                                                                                      height: 40.0,
                                                                                      child: CircularProgressIndicator(
                                                                                        valueColor: AlwaysStoppedAnimation<Color>(
                                                                                          FlutterFlowTheme.of(context).customColor2,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }

                                                                                final richTextJobCategoriesRecord = snapshot.data!;

                                                                                return RichText(
                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: richTextJobCategoriesRecord.name,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.inter(
                                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).customColor2,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                            ),
                                                                                      )
                                                                                    ],
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.inter(
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          color: FlutterFlowTheme.of(context).customColor2,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ),
                                                                          ].divide(SizedBox(height: 10.0)).addToEnd(SizedBox(height: 10.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        100.0, 0.0, 100.0, 0.0),
                                                child: Column(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment(1.0, 0),
                                                      child:
                                                          FlutterFlowButtonTabBar(
                                                        useToggleButtonStyle:
                                                            true,
                                                        isScrollable: true,
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                ),
                                                        unselectedLabelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                ),
                                                        labelColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        unselectedLabelColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        unselectedBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        unselectedBorderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        borderWidth: 5.0,
                                                        borderRadius: 8.0,
                                                        elevation: 0.0,
                                                        labelPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        buttonMargin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        tabs: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              FaIcon(
                                                                FontAwesomeIcons
                                                                    .bars,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                size: 20.0,
                                                              ),
                                                              Tab(
                                                                text: '',
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons.grid_view,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                size: 20.0,
                                                              ),
                                                              Tab(
                                                                text: '',
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                        controller: _model
                                                            .tabBarController2,
                                                        onTap: (i) async {
                                                          [
                                                            () async {},
                                                            () async {}
                                                          ][i]();
                                                        },
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: TabBarView(
                                                        controller: _model
                                                            .tabBarController2,
                                                        physics:
                                                            const NeverScrollableScrollPhysics(),
                                                        children: [
                                                          KeepAliveWidgetWrapper(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          20.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final comapniesList =
                                                                      companiesCompaniesRecordList
                                                                          .map((e) =>
                                                                              e)
                                                                          .toList();

                                                                  return Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        comapniesList
                                                                            .length,
                                                                        (comapniesListIndex) {
                                                                      final comapniesListItem =
                                                                          comapniesList[
                                                                              comapniesListIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                        child: StreamBuilder<
                                                                            JobCategoriesRecord>(
                                                                          stream:
                                                                              JobCategoriesRecord.getDocument(comapniesListItem.categoryRef!),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 40.0,
                                                                                  height: 40.0,
                                                                                  child: CircularProgressIndicator(
                                                                                    valueColor: AlwaysStoppedAnimation<Color>(
                                                                                      FlutterFlowTheme.of(context).customColor2,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }

                                                                            final stackJobCategoriesRecord =
                                                                                snapshot.data!;

                                                                            return Stack(
                                                                              children: [
                                                                                InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    context.pushNamed(
                                                                                      CompanyProfileDetailWidget.routeName,
                                                                                      queryParameters: {
                                                                                        'compDoc': serializeParam(
                                                                                          comapniesListItem,
                                                                                          ParamType.Document,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                      extra: <String, dynamic>{
                                                                                        'compDoc': comapniesListItem,
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.9,
                                                                                    height: MediaQuery.sizeOf(context).height * 0.15,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).buttonBg,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(20.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(220.0, 0.0, 0.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                RichText(
                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                  text: TextSpan(
                                                                                                    children: [
                                                                                                      TextSpan(
                                                                                                        text: comapniesListItem.name,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.inter(
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                              ),
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                            ),
                                                                                                      )
                                                                                                    ],
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          font: GoogleFonts.inter(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                          ),
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Text(
                                                                                                  comapniesListItem.location,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.inter(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                                                            children: [
                                                                                              RatingBarIndicator(
                                                                                                itemBuilder: (context, index) => Icon(
                                                                                                  Icons.star_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                                ),
                                                                                                direction: Axis.horizontal,
                                                                                                rating: 3.0,
                                                                                                unratedColor: Color(0x42F9CF58),
                                                                                                itemCount: 5,
                                                                                                itemSize: 24.0,
                                                                                              ),
                                                                                              Text(
                                                                                                stackJobCategoriesRecord.name,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.inter(
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).customColor2,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.05, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.12,
                                                                                      height: MediaQuery.sizeOf(context).height * 0.18,
                                                                                      decoration: BoxDecoration(
                                                                                        image: DecorationImage(
                                                                                          fit: BoxFit.fill,
                                                                                          image: CachedNetworkImageProvider(
                                                                                            valueOrDefault<String>(
                                                                                              comapniesListItem.logo,
                                                                                              'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        boxShadow: [
                                                                                          BoxShadow(
                                                                                            blurRadius: 2.0,
                                                                                            color: Color(0x37A9C1E1),
                                                                                            offset: Offset(
                                                                                              0.0,
                                                                                              2.0,
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          KeepAliveWidgetWrapper(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final companiesGrid =
                                                                      companiesCompaniesRecordList
                                                                          .map((e) =>
                                                                              e)
                                                                          .toList();

                                                                  return GridView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    gridDelegate:
                                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                                      crossAxisCount:
                                                                          4,
                                                                      crossAxisSpacing:
                                                                          10.0,
                                                                      mainAxisSpacing:
                                                                          10.0,
                                                                      childAspectRatio:
                                                                          1.7,
                                                                    ),
                                                                    primary:
                                                                        false,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        companiesGrid
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            companiesGridIndex) {
                                                                      final companiesGridItem =
                                                                          companiesGrid[
                                                                              companiesGridIndex];
                                                                      return InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            CompanyProfileDetailWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'compDoc': serializeParam(
                                                                                companiesGridItem,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'compDoc': companiesGridItem,
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              90.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).buttonBg,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(10.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        await Navigator.push(
                                                                                          context,
                                                                                          PageTransition(
                                                                                            type: PageTransitionType.fade,
                                                                                            child: FlutterFlowExpandedImageView(
                                                                                              image: CachedNetworkImage(
                                                                                                fadeInDuration: Duration(milliseconds: 500),
                                                                                                fadeOutDuration: Duration(milliseconds: 500),
                                                                                                imageUrl: valueOrDefault<String>(
                                                                                                  companiesGridItem.logo,
                                                                                                  'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                                                ),
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                              allowRotation: false,
                                                                                              tag: valueOrDefault<String>(
                                                                                                companiesGridItem.logo,
                                                                                                'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png' + '$companiesGridIndex',
                                                                                              ),
                                                                                              useHeroAnimation: true,
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                      child: Hero(
                                                                                        tag: valueOrDefault<String>(
                                                                                          companiesGridItem.logo,
                                                                                          'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png' + '$companiesGridIndex',
                                                                                        ),
                                                                                        transitionOnUserGestures: true,
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                          child: CachedNetworkImage(
                                                                                            fadeInDuration: Duration(milliseconds: 500),
                                                                                            fadeOutDuration: Duration(milliseconds: 500),
                                                                                            imageUrl: valueOrDefault<String>(
                                                                                              companiesGridItem.logo,
                                                                                              'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                                            ),
                                                                                            height: MediaQuery.sizeOf(context).height * 0.08,
                                                                                            fit: BoxFit.fill,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    RatingBarIndicator(
                                                                                      itemBuilder: (context, index) => Icon(
                                                                                        Icons.star_rounded,
                                                                                        color: FlutterFlowTheme.of(context).warning,
                                                                                      ),
                                                                                      direction: Axis.horizontal,
                                                                                      rating: 3.0,
                                                                                      unratedColor: Color(0x51F9CF58),
                                                                                      itemCount: 5,
                                                                                      itemSize: 18.0,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Text(
                                                                                    companiesGridItem.name,
                                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                          font: GoogleFonts.interTight(
                                                                                            fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                          ),
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  companiesGridItem.location,
                                                                                  textAlign: TextAlign.justify,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    StreamBuilder<JobCategoriesRecord>(
                                                                                      stream: JobCategoriesRecord.getDocument(companiesGridItem.categoryRef!),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 40.0,
                                                                                              height: 40.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  FlutterFlowTheme.of(context).customColor2,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }

                                                                                        final richTextJobCategoriesRecord = snapshot.data!;

                                                                                        return RichText(
                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                          text: TextSpan(
                                                                                            children: [
                                                                                              TextSpan(
                                                                                                text: richTextJobCategoriesRecord.name,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.inter(
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).customColor2,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              )
                                                                                            ],
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  font: GoogleFonts.inter(
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                                  color: FlutterFlowTheme.of(context).customColor2,
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(height: 5.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(100.0,
                                                                0.0, 0.0, 0.0),
                                                    child: StreamBuilder<
                                                        List<
                                                            JobCategoriesRecord>>(
                                                      stream:
                                                          queryJobCategoriesRecord(),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .customColor2,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<JobCategoriesRecord>
                                                            categoryJobCategoriesRecordList =
                                                            snapshot.data!;

                                                        return FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .categoryValueController ??=
                                                              FormFieldController<
                                                                  String>(null),
                                                          options:
                                                              categoryJobCategoriesRecordList
                                                                  .map((e) =>
                                                                      e.name)
                                                                  .toList(),
                                                          onChanged:
                                                              (val) async {
                                                            safeSetState(() =>
                                                                _model.categoryValue =
                                                                    val);
                                                            _model.selectedCat =
                                                                await queryJobCategoriesRecordOnce(
                                                              queryBuilder:
                                                                  (jobCategoriesRecord) =>
                                                                      jobCategoriesRecord
                                                                          .where(
                                                                'name',
                                                                isEqualTo: _model
                                                                    .categoryValue,
                                                              ),
                                                              singleRecord:
                                                                  true,
                                                            ).then((s) => s
                                                                    .firstOrNull);

                                                            safeSetState(() {});
                                                          },
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.2,
                                                          height: 35.0,
                                                          maxHeight:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.3,
                                                          searchHintTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                          searchTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                          hintText:
                                                              'Select Category ...',
                                                          searchHintText:
                                                              'Search Category...',
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 0.0,
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground,
                                                          borderWidth: 1.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: true,
                                                          isMultiSelect: false,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      safeSetState(() {
                                                        _model
                                                            .categoryValueController
                                                            ?.reset();
                                                      });
                                                    },
                                                    text: 'Clear Filter',
                                                    icon: Icon(
                                                      Icons.clear_sharp,
                                                      size: 20.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      height: 30.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 10.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          Duration(milliseconds: 500),
                                      imageUrl:
                                          'https://europeanjobdays.eu/sites/default/files/styles/header_md/public/adobestock_189528310.jpeg?h=6006a16d&itok=acXA5xNn',
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.35,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                if (isWeb)
                                  wrapWithModel(
                                    model: _model.footerModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FooterWidget(),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
