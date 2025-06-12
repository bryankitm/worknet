import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/footer_header/header/header_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bookmarked_jobs_model.dart';
export 'bookmarked_jobs_model.dart';

class BookmarkedJobsWidget extends StatefulWidget {
  const BookmarkedJobsWidget({super.key});

  static String routeName = 'BookmarkedJobs';
  static String routePath = '/bookmarkedJobs';

  @override
  State<BookmarkedJobsWidget> createState() => _BookmarkedJobsWidgetState();
}

class _BookmarkedJobsWidgetState extends State<BookmarkedJobsWidget> {
  late BookmarkedJobsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookmarkedJobsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<BookmarkedJobsRecord>>(
      stream: queryBookmarkedJobsRecord(
        queryBuilder: (bookmarkedJobsRecord) => bookmarkedJobsRecord.where(
          'user_id',
          isEqualTo: currentUserReference,
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
        List<BookmarkedJobsRecord> bookmarkedJobsBookmarkedJobsRecordList =
            snapshot.data!;

        return Title(
            title: 'BookmarkedJobs',
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
                    model: _model.sideBarModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: SideBarWidget(
                      page: 'adminJobList',
                    ),
                  ),
                ),
                body: SafeArea(
                  top: true,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        wrapWithModel(
                          model: _model.sideBarModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: SideBarWidget(
                            page: 'dashboard',
                          ),
                        ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.headerModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: HeaderWidget(),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Saved Jobs',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.interTight(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 20.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
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
                                                    onTap: () async {
                                                      _model.displayType =
                                                          'List';
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.list_outlined,
                                                      color: _model
                                                                  .displayType ==
                                                              'List'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 28.0,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 100.0,
                                                    child: VerticalDivider(
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.displayType =
                                                          'Grid';
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.grid_view,
                                                      color: _model
                                                                  .displayType ==
                                                              'Grid'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 28.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (_model.displayType == 'List')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final jobList =
                                                  bookmarkedJobsBookmarkedJobsRecordList
                                                      .map((e) => e)
                                                      .toList();

                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: jobList.length,
                                                itemBuilder:
                                                    (context, jobListIndex) {
                                                  final jobListItem =
                                                      jobList[jobListIndex];
                                                  return Stack(
                                                    children: [
                                                      StreamBuilder<
                                                          JobPostingsRecord>(
                                                        stream: JobPostingsRecord
                                                            .getDocument(
                                                                jobListItem
                                                                    .jobId!),
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

                                                          final cardJobPostingsRecord =
                                                              snapshot.data!;

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
                                                                  EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            0.08,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              cardJobPostingsRecord.photos.firstOrNull,
                                                                              'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                            ),
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 0.1,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            JobDetailWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'jobRef': serializeParam(
                                                                                jobListItem.jobId,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Container(
                                                                              width: MediaQuery.sizeOf(context).width * 0.6,
                                                                              decoration: BoxDecoration(),
                                                                              child: Text(
                                                                                '${cardJobPostingsRecord.title}  ${dateTimeFormat("relative", cardJobPostingsRecord.postedAt)}',
                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                      font: GoogleFonts.interTight(
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                      ),
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: MediaQuery.sizeOf(context).width * 0.6,
                                                                              decoration: BoxDecoration(),
                                                                              child: Text(
                                                                                functions.htmlToString(cardJobPostingsRecord.description),
                                                                                maxLines: 3,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.inter(
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      fontSize: 13.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              cardJobPostingsRecord.location,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.inter(
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FontStyle.italic,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    fontSize: 13.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FontStyle.italic,
                                                                                  ),
                                                                            ),
                                                                          ].divide(SizedBox(height: 5.0)),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            10.0)),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.03,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              var confirmDialogResponse =
                                                                  await showDialog<
                                                                          bool>(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                Text('Do you want to remove bookmarked job post'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                child: Text('Cancel'),
                                                                              ),
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                child: Text('Confirm'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      ) ??
                                                                      false;
                                                              if (confirmDialogResponse) {
                                                                await jobListItem
                                                                    .reference
                                                                    .delete();
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .bookmark_border_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .customColor2,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      if (_model.displayType == 'Grid')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 10.0),
                                          child: Builder(
                                            builder: (context) {
                                              final jobListGrid =
                                                  bookmarkedJobsBookmarkedJobsRecordList
                                                      .map((e) => e)
                                                      .toList();

                                              return GridView.builder(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  crossAxisSpacing: 5.0,
                                                  mainAxisSpacing: 5.0,
                                                  childAspectRatio: 1.0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: jobListGrid.length,
                                                itemBuilder: (context,
                                                    jobListGridIndex) {
                                                  final jobListGridItem =
                                                      jobListGrid[
                                                          jobListGridIndex];
                                                  return StreamBuilder<
                                                      JobPostingsRecord>(
                                                    stream: JobPostingsRecord
                                                        .getDocument(
                                                            jobListGridItem
                                                                .jobId!),
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

                                                      final containerJobPostingsRecord =
                                                          snapshot.data!;

                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10.0),
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
                                                                          jobListGridItem
                                                                              .jobId,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            containerJobPostingsRecord.photos.firstOrNull,
                                                                            'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                          ),
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.25,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.42,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Text(
                                                                          containerJobPostingsRecord
                                                                              .title,
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                font: GoogleFonts.interTight(
                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                ),
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        functions
                                                                            .htmlToString(containerJobPostingsRecord.description),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FontWeight.normal,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        containerJobPostingsRecord
                                                                            .location,
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FontWeight.normal,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FontStyle.italic,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.03,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            5.0,
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
                                                                    var confirmDialogResponse =
                                                                        await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('Do you want to remove bookmarked job post'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                      child: Text('Cancel'),
                                                                                    ),
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                      child: Text('Confirm'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            ) ??
                                                                            false;
                                                                    if (confirmDialogResponse) {
                                                                      await jobListGridItem
                                                                          .reference
                                                                          .delete();
                                                                    }
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .bookmark_border_outlined,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .customColor2,
                                                                    size: 24.0,
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
                                              );
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 20.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
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
                                                    onTap: () async {
                                                      _model.displayType =
                                                          'List';
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.list_outlined,
                                                      color: _model
                                                                  .displayType ==
                                                              'List'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 28.0,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 100.0,
                                                    child: VerticalDivider(
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.displayType =
                                                          'Grid';
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.grid_view,
                                                      color: _model
                                                                  .displayType ==
                                                              'Grid'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 28.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (_model.displayType == 'List')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 20.0, 10.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final jobList =
                                                  bookmarkedJobsBookmarkedJobsRecordList
                                                      .map((e) => e)
                                                      .toList();

                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: jobList.length,
                                                itemBuilder:
                                                    (context, jobListIndex) {
                                                  final jobListItem =
                                                      jobList[jobListIndex];
                                                  return Stack(
                                                    children: [
                                                      StreamBuilder<
                                                          JobPostingsRecord>(
                                                        stream: JobPostingsRecord
                                                            .getDocument(
                                                                jobListItem
                                                                    .jobId!),
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

                                                          final cardJobPostingsRecord =
                                                              snapshot.data!;

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
                                                                  EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            0.12,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              cardJobPostingsRecord.photos.firstOrNull,
                                                                              'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                            ),
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 0.12,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        ),
                                                                      ),
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
                                                                            JobDetailWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'jobRef': serializeParam(
                                                                                jobListItem.jobId,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Container(
                                                                              width: MediaQuery.sizeOf(context).width * 0.45,
                                                                              decoration: BoxDecoration(),
                                                                              child: Text(
                                                                                '${cardJobPostingsRecord.title}  ${dateTimeFormat("relative", cardJobPostingsRecord.postedAt)}',
                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                      font: GoogleFonts.interTight(
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                      ),
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: MediaQuery.sizeOf(context).width * 0.45,
                                                                              decoration: BoxDecoration(),
                                                                              child: Text(
                                                                                functions.htmlToString(cardJobPostingsRecord.description),
                                                                                maxLines: 3,
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
                                                                              cardJobPostingsRecord.location,
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
                                                                          ].divide(SizedBox(height: 10.0)),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            20.0)),
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
                                                                            .end,
                                                                    children: [
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'Button pressed ...');
                                                                        },
                                                                        text: cardJobPostingsRecord
                                                                            .jobType,
                                                                        options:
                                                                            FFButtonOptions(
                                                                          height:
                                                                              35.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).customColor2,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                font: GoogleFonts.interTight(
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                ),
                                                                                color: Colors.white,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.normal,
                                                                                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: formatNumber(
                                                                                cardJobPostingsRecord.salary,
                                                                                formatType: FormatType.decimal,
                                                                                decimalType: DecimalType.automatic,
                                                                                currency: 'UGX ',
                                                                              ),
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
                                                                            TextSpan(
                                                                              text: cardJobPostingsRecord.duration,
                                                                              style: TextStyle(),
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
                                                                      StreamBuilder<
                                                                          JobCategoriesRecord>(
                                                                        stream:
                                                                            JobCategoriesRecord.getDocument(cardJobPostingsRecord.categoryRef!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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

                                                                          final textJobCategoriesRecord =
                                                                              snapshot.data!;

                                                                          return Text(
                                                                            textJobCategoriesRecord.name,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.inter(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            10.0)),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.025,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.025,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              var confirmDialogResponse =
                                                                  await showDialog<
                                                                          bool>(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                Text('Do you want to remove bookmarked job post'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                child: Text('Cancel'),
                                                                              ),
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                child: Text('Confirm'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      ) ??
                                                                      false;
                                                              if (confirmDialogResponse) {
                                                                await jobListItem
                                                                    .reference
                                                                    .delete();
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .bookmark_border_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .customColor2,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      if (_model.displayType == 'Grid')
                                        Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Builder(
                                            builder: (context) {
                                              final jobListGrid =
                                                  bookmarkedJobsBookmarkedJobsRecordList
                                                      .map((e) => e)
                                                      .toList();

                                              return GridView.builder(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 3,
                                                  crossAxisSpacing: 10.0,
                                                  mainAxisSpacing: 10.0,
                                                  childAspectRatio: 1.2,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: jobListGrid.length,
                                                itemBuilder: (context,
                                                    jobListGridIndex) {
                                                  final jobListGridItem =
                                                      jobListGrid[
                                                          jobListGridIndex];
                                                  return StreamBuilder<
                                                      JobPostingsRecord>(
                                                    stream: JobPostingsRecord
                                                        .getDocument(
                                                            jobListGridItem
                                                                .jobId!),
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

                                                      final containerJobPostingsRecord =
                                                          snapshot.data!;

                                                      return Container(
                                                        width: 100.0,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          10.0),
                                                              child: InkWell(
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
                                                                  context
                                                                      .pushNamed(
                                                                    JobDetailWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'jobRef':
                                                                          serializeParam(
                                                                        jobListGridItem
                                                                            .jobId,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              containerJobPostingsRecord.photos.firstOrNull,
                                                                              'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png',
                                                                            ),
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 0.12,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children:
                                                                              [
                                                                            FFButtonWidget(
                                                                              onPressed: () {
                                                                                print('Button pressed ...');
                                                                              },
                                                                              text: containerJobPostingsRecord.jobType,
                                                                              options: FFButtonOptions(
                                                                                height: 35.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).customColor2,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      font: GoogleFonts.interTight(
                                                                                        fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                      ),
                                                                                      color: Colors.white,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              dateTimeFormat("relative", containerJobPostingsRecord.postedAt!),
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
                                                                          ].divide(SizedBox(height: 10.0)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.23,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Text(
                                                                              containerJobPostingsRecord.title,
                                                                              style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: GoogleFonts.interTight(
                                                                                      fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                    ),
                                                                                    fontSize: 15.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.23,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Text(
                                                                              functions.htmlToString(containerJobPostingsRecord.description),
                                                                              maxLines: 3,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.inter(
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            formatNumber(
                                                                              containerJobPostingsRecord.salary,
                                                                              formatType: FormatType.decimal,
                                                                              decimalType: DecimalType.automatic,
                                                                              currency: 'UGX ',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.inter(
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            containerJobPostingsRecord.location,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.inter(
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          5.0)),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.025,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.025,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
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
                                                                    var confirmDialogResponse =
                                                                        await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('Do you want to remove bookmarked job post'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                      child: Text('Cancel'),
                                                                                    ),
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                      child: Text('Confirm'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            ) ??
                                                                            false;
                                                                    if (confirmDialogResponse) {
                                                                      await jobListGridItem
                                                                          .reference
                                                                          .delete();
                                                                    }
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .bookmark_border_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .customColor2,
                                                                    size: 24.0,
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
                                              );
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
