import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/comps/side_bar_front/side_bar_front_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/empty/empty_widget.dart';
import '/footer_header/footer/footer_widget.dart';
import '/footer_header/header_main/header_main_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'company_profile_detail_model.dart';
export 'company_profile_detail_model.dart';

class CompanyProfileDetailWidget extends StatefulWidget {
  const CompanyProfileDetailWidget({
    super.key,
    required this.compDoc,
  });

  final CompaniesRecord? compDoc;

  static String routeName = 'CompanyProfileDetail';
  static String routePath = '/companyProfileDetail';

  @override
  State<CompanyProfileDetailWidget> createState() =>
      _CompanyProfileDetailWidgetState();
}

class _CompanyProfileDetailWidgetState
    extends State<CompanyProfileDetailWidget> {
  late CompanyProfileDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompanyProfileDetailModel());

    _model.companyNameTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.name,
      '-',
    ));
    _model.companyNameFocusNode ??= FocusNode();

    _model.companyWebsiteTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.website,
      '-',
    ));
    _model.companyWebsiteFocusNode ??= FocusNode();

    _model.phoneTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.phone,
      '-',
    ));
    _model.phoneFocusNode ??= FocusNode();

    _model.emailTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.email,
      '-',
    ));
    _model.emailFocusNode ??= FocusNode();

    _model.teamSizeTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.teamSize.toString(),
      '-',
    ));
    _model.teamSizeFocusNode ??= FocusNode();

    _model.facebookTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.facebook,
      '-',
    ));
    _model.facebookFocusNode ??= FocusNode();

    _model.whatsappTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.whatsApp,
      '-',
    ));
    _model.whatsappFocusNode ??= FocusNode();

    _model.twitterTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.x,
      '-',
    ));
    _model.twitterFocusNode ??= FocusNode();

    _model.instagramTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.instagram,
      '-',
    ));
    _model.instagramFocusNode ??= FocusNode();

    _model.linkinTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.linkedin,
      '-',
    ));
    _model.linkinFocusNode ??= FocusNode();

    _model.youtubeTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.compDoc?.youtube,
      '-',
    ));
    _model.youtubeFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Company Profile Detail',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            resizeToAvoidBottomInset: false,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: Container(
              width: MediaQuery.sizeOf(context).width * 0.7,
              child: Drawer(
                elevation: 16.0,
                child: wrapWithModel(
                  model: _model.sideBarFrontModel,
                  updateCallback: () => safeSetState(() {}),
                  child: SideBarFrontWidget(
                    page: 'companies',
                  ),
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
                      header: wrapWithModel(
                        model: _model.headerMainModel,
                        updateCallback: () => safeSetState(() {}),
                        child: HeaderMainWidget(),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.75,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'COMPANY PROFILE',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 0.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 5.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          widget.compDoc?.name,
                                                          '-',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      StreamBuilder<
                                                          JobCategoriesRecord>(
                                                        stream: JobCategoriesRecord
                                                            .getDocument(widget
                                                                .compDoc!
                                                                .categoryRef!),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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

                                                          final textJobCategoriesRecord =
                                                              snapshot.data!;

                                                          return Text(
                                                            valueOrDefault<
                                                                String>(
                                                              textJobCategoriesRecord
                                                                  .name,
                                                              '-',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .customColor2,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Divider(
                                                  thickness: 2.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                                if (widget.compDoc?.logo !=
                                                        null &&
                                                    widget.compDoc?.logo != '')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Company Logo',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Flex(
                                                    direction:
                                                        functions.flexDisplay(
                                                                MediaQuery.sizeOf(
                                                                        context)
                                                                    .width)!
                                                            ? Axis.horizontal
                                                            : Axis.vertical,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Visibility(
                                                        visible:
                                                            responsiveVisibility(
                                                          context: context,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (widget.compDoc
                                                                        ?.logo !=
                                                                    null &&
                                                                widget.compDoc
                                                                        ?.logo !=
                                                                    '')
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            widget.compDoc?.logo,
                                                                            'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                          ),
                                                                          fit: BoxFit
                                                                              .contain,
                                                                          errorBuilder: (context, error, stackTrace) =>
                                                                              Image.asset(
                                                                            'assets/images/error_image.jpeg',
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag: valueOrDefault<
                                                                            String>(
                                                                          widget
                                                                              .compDoc
                                                                              ?.logo,
                                                                          'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                        ),
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag: valueOrDefault<
                                                                      String>(
                                                                    widget
                                                                        .compDoc
                                                                        ?.logo,
                                                                    'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                  ),
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        widget
                                                                            .compDoc
                                                                            ?.logo,
                                                                        'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                      ),
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.15,
                                                                      fit: BoxFit
                                                                          .fill,
                                                                      errorBuilder: (context,
                                                                              error,
                                                                              stackTrace) =>
                                                                          Image
                                                                              .asset(
                                                                        'assets/images/error_image.jpeg',
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            0.15,
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                      Visibility(
                                                        visible:
                                                            responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (widget.compDoc
                                                                        ?.logo !=
                                                                    null &&
                                                                widget.compDoc
                                                                        ?.logo !=
                                                                    '')
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            widget.compDoc?.logo,
                                                                            'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                          ),
                                                                          fit: BoxFit
                                                                              .contain,
                                                                          errorBuilder: (context, error, stackTrace) =>
                                                                              Image.asset(
                                                                            'assets/images/error_image.jpeg',
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag: valueOrDefault<
                                                                            String>(
                                                                          widget
                                                                              .compDoc
                                                                              ?.logo,
                                                                          'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                        ),
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag: valueOrDefault<
                                                                      String>(
                                                                    widget
                                                                        .compDoc
                                                                        ?.logo,
                                                                    'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                  ),
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        widget
                                                                            .compDoc
                                                                            ?.logo,
                                                                        'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                      ),
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.1,
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.16,
                                                                      fit: BoxFit
                                                                          .fill,
                                                                      errorBuilder: (context,
                                                                              error,
                                                                              stackTrace) =>
                                                                          Image
                                                                              .asset(
                                                                        'assets/images/error_image.jpeg',
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.1,
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            0.16,
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ].divide(functions
                                                            .flexDisplay(
                                                                MediaQuery.sizeOf(
                                                                        context)
                                                                    .width)!
                                                        ? SizedBox(width: 10.0)
                                                        : SizedBox(
                                                            height: 10.0)),
                                                  ),
                                                ),
                                                if ((widget.compDoc?.photos !=
                                                            null &&
                                                        (widget.compDoc
                                                                ?.photos)!
                                                            .isNotEmpty) ==
                                                    false)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Company Gallery',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                if (((widget.compDoc?.photos !=
                                                                null &&
                                                            (widget.compDoc
                                                                    ?.photos)!
                                                                .isNotEmpty) ==
                                                        false) &&
                                                    responsiveVisibility(
                                                      context: context,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: Flex(
                                                      direction:
                                                          functions.flexDisplay(
                                                                  MediaQuery.sizeOf(
                                                                          context)
                                                                      .width)!
                                                              ? Axis.horizontal
                                                              : Axis.vertical,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final imagesList = widget
                                                                            .compDoc
                                                                            ?.photos
                                                                            .toList() ??
                                                                        [];

                                                                    return Wrap(
                                                                      spacing:
                                                                          0.0,
                                                                      runSpacing:
                                                                          0.0,
                                                                      alignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          WrapCrossAlignment
                                                                              .start,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      runAlignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      verticalDirection:
                                                                          VerticalDirection
                                                                              .down,
                                                                      clipBehavior:
                                                                          Clip.none,
                                                                      children: List.generate(
                                                                          imagesList
                                                                              .length,
                                                                          (imagesListIndex) {
                                                                        final imagesListItem =
                                                                            imagesList[imagesListIndex];
                                                                        return Visibility(
                                                                          visible:
                                                                              (widget.compDoc?.photos != null && (widget.compDoc?.photos)!.isNotEmpty) == false,
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                5.0,
                                                                                5.0),
                                                                            child:
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
                                                                                      image: Image.network(
                                                                                        valueOrDefault<String>(
                                                                                          imagesListItem,
                                                                                          'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                                        ),
                                                                                        fit: BoxFit.contain,
                                                                                        errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                          'assets/images/error_image.jpeg',
                                                                                          fit: BoxFit.contain,
                                                                                        ),
                                                                                      ),
                                                                                      allowRotation: false,
                                                                                      tag: valueOrDefault<String>(
                                                                                        imagesListItem,
                                                                                        'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png' + '$imagesListIndex',
                                                                                      ),
                                                                                      useHeroAnimation: true,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              child: Hero(
                                                                                tag: valueOrDefault<String>(
                                                                                  imagesListItem,
                                                                                  'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png' + '$imagesListIndex',
                                                                                ),
                                                                                transitionOnUserGestures: true,
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                  child: Image.network(
                                                                                    valueOrDefault<String>(
                                                                                      imagesListItem,
                                                                                      'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                                    ),
                                                                                    height: MediaQuery.sizeOf(context).height * 0.12,
                                                                                    fit: BoxFit.cover,
                                                                                    errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                      'assets/images/error_image.jpeg',
                                                                                      height: MediaQuery.sizeOf(context).height * 0.12,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ].divide(functions.flexDisplay(
                                                              MediaQuery.sizeOf(
                                                                      context)
                                                                  .width)!
                                                          ? SizedBox(
                                                              width: 10.0)
                                                          : SizedBox(
                                                              height: 10.0)),
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                ))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: Flex(
                                                      direction:
                                                          functions.flexDisplay(
                                                                  MediaQuery.sizeOf(
                                                                          context)
                                                                      .width)!
                                                              ? Axis.horizontal
                                                              : Axis.vertical,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                final imagesList = widget
                                                                        .compDoc
                                                                        ?.photos
                                                                        .toList() ??
                                                                    [];

                                                                return Wrap(
                                                                  spacing: 0.0,
                                                                  runSpacing:
                                                                      0.0,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      WrapCrossAlignment
                                                                          .start,
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  runAlignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  verticalDirection:
                                                                      VerticalDirection
                                                                          .down,
                                                                  clipBehavior:
                                                                      Clip.none,
                                                                  children: List.generate(
                                                                      imagesList
                                                                          .length,
                                                                      (imagesListIndex) {
                                                                    final imagesListItem =
                                                                        imagesList[
                                                                            imagesListIndex];
                                                                    return Visibility(
                                                                      visible: (widget.compDoc?.photos != null &&
                                                                              (widget.compDoc?.photos)!.isNotEmpty) ==
                                                                          false,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
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
                                                                            await Navigator.push(
                                                                              context,
                                                                              PageTransition(
                                                                                type: PageTransitionType.fade,
                                                                                child: FlutterFlowExpandedImageView(
                                                                                  image: Image.network(
                                                                                    valueOrDefault<String>(
                                                                                      imagesListItem,
                                                                                      'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                                    ),
                                                                                    fit: BoxFit.contain,
                                                                                    errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                      'assets/images/error_image.jpeg',
                                                                                      fit: BoxFit.contain,
                                                                                    ),
                                                                                  ),
                                                                                  allowRotation: false,
                                                                                  tag: valueOrDefault<String>(
                                                                                    imagesListItem,
                                                                                    'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png' + '$imagesListIndex',
                                                                                  ),
                                                                                  useHeroAnimation: true,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Hero(
                                                                            tag:
                                                                                valueOrDefault<String>(
                                                                              imagesListItem,
                                                                              'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png' + '$imagesListIndex',
                                                                            ),
                                                                            transitionOnUserGestures:
                                                                                true,
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                              child: Image.network(
                                                                                valueOrDefault<String>(
                                                                                  imagesListItem,
                                                                                  'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                                ),
                                                                                width: MediaQuery.sizeOf(context).width * 0.1,
                                                                                height: MediaQuery.sizeOf(context).height * 0.16,
                                                                                fit: BoxFit.cover,
                                                                                errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                  'assets/images/error_image.jpeg',
                                                                                  width: MediaQuery.sizeOf(context).width * 0.1,
                                                                                  height: MediaQuery.sizeOf(context).height * 0.16,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }),
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ].divide(functions.flexDisplay(
                                                              MediaQuery.sizeOf(
                                                                      context)
                                                                  .width)!
                                                          ? SizedBox(
                                                              width: 10.0)
                                                          : SizedBox(
                                                              height: 10.0)),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 5.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Basic Informations',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Divider(
                                                  thickness: 2.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Flex(
                                                    direction:
                                                        functions.flexDisplay(
                                                                MediaQuery.sizeOf(
                                                                        context)
                                                                    .width)!
                                                            ? Axis.horizontal
                                                            : Axis.vertical,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Company Name',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .companyNameTextController,
                                                                focusNode: _model
                                                                    .companyNameFocusNode,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  prefixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .person_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .companyNameTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Website',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .companyWebsiteTextController,
                                                                focusNode: _model
                                                                    .companyWebsiteFocusNode,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintText:
                                                                      'https://',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  prefixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .language_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                keyboardType:
                                                                    TextInputType
                                                                        .url,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .companyWebsiteTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Location',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1);
                                                              } else if ((MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointSmall) &&
                                                                  (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium)) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.22);
                                                              } else {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.23);
                                                              }
                                                            }(),
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      widget
                                                                          .compDoc
                                                                          ?.location,
                                                                      'Location',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.inter(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Phone',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .phoneTextController,
                                                                focusNode: _model
                                                                    .phoneFocusNode,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  prefixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .phone_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                maxLength: 13,
                                                                buildCounter: (context,
                                                                        {required currentLength,
                                                                        required isFocused,
                                                                        maxLength}) =>
                                                                    null,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .phoneTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Industry',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    StreamBuilder<
                                                                        JobCategoriesRecord>(
                                                                      stream: JobCategoriesRecord.getDocument(widget
                                                                          .compDoc!
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

                                                                        final textJobCategoriesRecord =
                                                                            snapshot.data!;

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
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Email Address',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .emailTextController,
                                                                focusNode: _model
                                                                    .emailFocusNode,
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintText:
                                                                      'someone@example.com',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  prefixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .email_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                keyboardType:
                                                                    TextInputType
                                                                        .emailAddress,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .emailTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Est. Since',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 0.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .edit_calendar,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      dateTimeFormat(
                                                                          "yMMMd",
                                                                          widget
                                                                              .compDoc!
                                                                              .estSince!),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.inter(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Team Size',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .teamSizeTextController,
                                                                focusNode: _model
                                                                    .teamSizeFocusNode,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintText: '6',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  prefixIcon:
                                                                      Icon(
                                                                    Icons.group,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .teamSizeTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(functions
                                                            .flexDisplay(
                                                                MediaQuery.sizeOf(
                                                                        context)
                                                                    .width)!
                                                        ? SizedBox(width: 10.0)
                                                        : SizedBox(
                                                            height: 10.0)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    25.0),
                                                        child: Text(
                                                          'Description',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
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
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.78,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10.0),
                                                          child: Text(
                                                            functions.htmlToString(
                                                                widget.compDoc!
                                                                    .description),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
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
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.3,
                                                            child:
                                                                FlutterFlowGoogleMap(
                                                              controller: _model
                                                                  .googleMapsController,
                                                              onCameraIdle:
                                                                  (latLng) =>
                                                                      _model.googleMapsCenter =
                                                                          latLng,
                                                              initialLocation: _model
                                                                      .googleMapsCenter ??=
                                                                  functions.getCoordinates(
                                                                      widget
                                                                          .compDoc
                                                                          ?.location),
                                                              markerColor:
                                                                  GoogleMarkerColor
                                                                      .violet,
                                                              mapType: MapType
                                                                  .normal,
                                                              style:
                                                                  GoogleMapStyle
                                                                      .standard,
                                                              initialZoom: 14.0,
                                                              allowInteraction:
                                                                  false,
                                                              allowZoom: false,
                                                              showZoomControls:
                                                                  true,
                                                              showLocation:
                                                                  true,
                                                              showCompass:
                                                                  false,
                                                              showMapToolbar:
                                                                  false,
                                                              showTraffic:
                                                                  false,
                                                              centerMapOnMarkerTap:
                                                                  true,
                                                            ),
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
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 5.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Social Network',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Divider(
                                                  thickness: 2.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Flex(
                                                    direction:
                                                        functions.flexDisplay(
                                                                MediaQuery.sizeOf(
                                                                        context)
                                                                    .width)!
                                                            ? Axis.horizontal
                                                            : Axis.vertical,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Facebook',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .facebookTextController,
                                                                focusNode: _model
                                                                    .facebookFocusNode,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintText:
                                                                      'https://www.facebook.com/',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                keyboardType:
                                                                    TextInputType
                                                                        .url,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .facebookTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Whatsapp',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .whatsappTextController,
                                                                focusNode: _model
                                                                    .whatsappFocusNode,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintText:
                                                                      'https://www.whatsapp.com/',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                keyboardType:
                                                                    TextInputType
                                                                        .url,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .whatsappTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'X',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .twitterTextController,
                                                                focusNode: _model
                                                                    .twitterFocusNode,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintText:
                                                                      'https://x.com/',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                keyboardType:
                                                                    TextInputType
                                                                        .url,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .twitterTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Instagram',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .instagramTextController,
                                                                focusNode: _model
                                                                    .instagramFocusNode,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintText:
                                                                      'https://www.instagram.com/',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                keyboardType:
                                                                    TextInputType
                                                                        .url,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .instagramTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'linkedin',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .linkinTextController,
                                                                focusNode: _model
                                                                    .linkinFocusNode,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintText:
                                                                      'https://www.linkedin.com/',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                keyboardType:
                                                                    TextInputType
                                                                        .url,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .linkinTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'Youtube',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1);
                                                                } else if ((MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointSmall) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium)) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.22);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.23);
                                                                }
                                                              }(),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .youtubeTextController,
                                                                focusNode: _model
                                                                    .youtubeFocusNode,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintText:
                                                                      'https://www.youtube.com/',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                                keyboardType:
                                                                    TextInputType
                                                                        .url,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                validator: _model
                                                                    .youtubeTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(functions
                                                            .flexDisplay(
                                                                MediaQuery.sizeOf(
                                                                        context)
                                                                    .width)!
                                                        ? SizedBox(width: 10.0)
                                                        : SizedBox(
                                                            height: 10.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                StreamBuilder<List<JobPostingsRecord>>(
                                  stream: queryJobPostingsRecord(
                                    queryBuilder: (jobPostingsRecord) =>
                                        jobPostingsRecord.where(
                                      'company_id',
                                      isEqualTo: widget.compDoc?.reference,
                                    ),
                                    limit: 8,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .customColor2,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<JobPostingsRecord>
                                        containerJobPostingsRecordList =
                                        snapshot.data!;

                                    return Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.25,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'COMPANY RECENT JOBS',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final list2 =
                                                      containerJobPostingsRecordList
                                                          .map((e) => e)
                                                          .toList();
                                                  if (list2.isEmpty) {
                                                    return EmptyWidget();
                                                  }

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: list2.length,
                                                    itemBuilder:
                                                        (context, list2Index) {
                                                      final list2Item =
                                                          list2[list2Index];
                                                      return Card(
                                                        clipBehavior: Clip
                                                            .antiAliasWithSaveLayer,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        elevation: 0.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
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
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.06,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.07,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        list2Item
                                                                            .photos
                                                                            .firstOrNull,
                                                                        'https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM=',
                                                                      ),
                                                                    ).image,
                                                                  ),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          2.0,
                                                                      color: Color(
                                                                          0x37A9C1E1),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        2.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      loggedIn,
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
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
                                                                        await BookmarkedJobsRecord
                                                                            .collection
                                                                            .doc()
                                                                            .set(createBookmarkedJobsRecordData(
                                                                              userId: currentUserReference,
                                                                              jobId: list2Item.reference,
                                                                              savedDate: getCurrentTimestamp,
                                                                            ));
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              title: Text('Job Bookmarked successful'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                  child: Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            0.03,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .bookmark_border_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      JobDetailWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'jobRef':
                                                                            serializeParam(
                                                                          list2Item
                                                                              .reference,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: list2Item.title,
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
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
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
                                                                      Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.16,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Text(
                                                                          list2Item
                                                                              .location,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.inter(
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontStyle: FontStyle.italic,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 13.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/images.jpg',
                                                    width: double.infinity,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'RELATED COMPANIES',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            StreamBuilder<
                                                List<CompaniesRecord>>(
                                              stream: queryCompaniesRecord(
                                                queryBuilder:
                                                    (companiesRecord) =>
                                                        companiesRecord.where(
                                                  'categoryRef',
                                                  isEqualTo: widget
                                                      .compDoc?.categoryRef,
                                                ),
                                                limit: 8,
                                              ),
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
                                                    listViewCompaniesRecordList =
                                                    snapshot.data!;
                                                if (listViewCompaniesRecordList
                                                    .isEmpty) {
                                                  return EmptyWidget();
                                                }

                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewCompaniesRecordList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewCompaniesRecord =
                                                        listViewCompaniesRecordList[
                                                            listViewIndex];
                                                    return InkWell(
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
                                                              listViewCompaniesRecord,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'compDoc':
                                                                listViewCompaniesRecord,
                                                          },
                                                        );
                                                      },
                                                      child: Card(
                                                        clipBehavior: Clip
                                                            .antiAliasWithSaveLayer,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        elevation: 0.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
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
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.06,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.07,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewCompaniesRecord
                                                                            .logo,
                                                                        'https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=',
                                                                      ),
                                                                    ).image,
                                                                  ),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          2.0,
                                                                      color: Color(
                                                                          0x37A9C1E1),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        2.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      loggedIn,
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child:
                                                                        Container(
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.03,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .bookmark_border_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    RichText(
                                                                      textScaler:
                                                                          MediaQuery.of(context)
                                                                              .textScaler,
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                listViewCompaniesRecord.name,
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
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
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
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.16,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Text(
                                                                        listViewCompaniesRecord
                                                                            .location,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontSize: 13.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FontStyle.italic,
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
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                            ],
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
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
