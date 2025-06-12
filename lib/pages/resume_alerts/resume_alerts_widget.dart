import '/comps/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/footer_header/header/header_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'resume_alerts_model.dart';
export 'resume_alerts_model.dart';

class ResumeAlertsWidget extends StatefulWidget {
  const ResumeAlertsWidget({super.key});

  static String routeName = 'ResumeAlerts';
  static String routePath = '/resumeAlerts';

  @override
  State<ResumeAlertsWidget> createState() => _ResumeAlertsWidgetState();
}

class _ResumeAlertsWidgetState extends State<ResumeAlertsWidget> {
  late ResumeAlertsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResumeAlertsModel());

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
        title: 'ResumeAlerts',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: Container(
              width: MediaQuery.sizeOf(context).width * 0.7,
              child: Drawer(
                elevation: 16.0,
                child: wrapWithModel(
                  model: _model.sideBarModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: SideBarWidget(
                    page: 'resumeAlerts',
                  ),
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
                        page: 'resumeAlerts',
                      ),
                    ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.749,
                      decoration: BoxDecoration(),
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 100.0, 15.0, 30.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Icon(
                                                    Icons.pages,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Resume Alerts',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        font: GoogleFonts
                                                            .interTight(
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
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            thickness: 2.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                final sample = List.generate(
                                                    random_data.randomInteger(
                                                        3, 9),
                                                    (index) => random_data
                                                            .randomString(
                                                          0,
                                                          0,
                                                          true,
                                                          false,
                                                          false,
                                                        )).toList();

                                                return FlutterFlowDataTable<
                                                    String>(
                                                  controller: _model
                                                      .paginatedDataTableController,
                                                  data: sample,
                                                  columnsBuilder:
                                                      (onSortChanged) => [
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Number Jobs',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      fixedWidth: MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.50)
                                                          : (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.20),
                                                      onSort: onSortChanged,
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Title',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      fixedWidth: MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.35)
                                                          : (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.20),
                                                      onSort: onSortChanged,
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Jobs Description',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      onSort: onSortChanged,
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Times',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      onSort: onSortChanged,
                                                    ),
                                                    DataColumn2(
                                                      label: DefaultTextStyle
                                                          .merge(
                                                        softWrap: true,
                                                        child: Text(
                                                          'Actions',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      onSort: onSortChanged,
                                                    ),
                                                  ],
                                                  dataRowBuilder: (sampleItem,
                                                          sampleIndex,
                                                          selected,
                                                          onSelectChanged) =>
                                                      DataRow(
                                                    selected: selected,
                                                    onSelectChanged:
                                                        onSelectChanged,
                                                    color: WidgetStateProperty
                                                        .all(FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground),
                                                    cells: [
                                                      Text(
                                                        'Edit Column 1',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      Text(
                                                        'Edit Column 2',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      Text(
                                                        'Edit Column 3',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      Text(
                                                        'Edit Column 4',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(5.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .remove_red_eye,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .delete_forever_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 24.0,
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 10.0)),
                                                        ),
                                                      ),
                                                    ]
                                                        .map((c) => DataCell(c))
                                                        .toList(),
                                                  ),
                                                  paginated: true,
                                                  selectable: true,
                                                  hidePaginator: false,
                                                  showFirstLastButtons: true,
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? MediaQuery.sizeOf(
                                                                  context)
                                                              .width
                                                          : (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.74),
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.75,
                                                  minWidth: 500.0,
                                                  headingRowHeight: 56.0,
                                                  dataRowHeight: 48.0,
                                                  columnSpacing: 20.0,
                                                  headingRowColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .buttonBg,
                                                  sortIconColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  addHorizontalDivider: true,
                                                  addTopAndBottomDivider: false,
                                                  hideDefaultHorizontalDivider:
                                                      true,
                                                  horizontalDividerColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  horizontalDividerThickness:
                                                      1.0,
                                                  addVerticalDivider: false,
                                                  checkboxUnselectedFillColor:
                                                      Colors.transparent,
                                                  checkboxSelectedFillColor:
                                                      Colors.transparent,
                                                  checkboxCheckColor:
                                                      Color(0x8A000000),
                                                  checkboxUnselectedBorderColor:
                                                      Color(0x8A000000),
                                                  checkboxSelectedBorderColor:
                                                      Color(0x8A000000),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          wrapWithModel(
                            model: _model.headerModel,
                            updateCallback: () => safeSetState(() {}),
                            child: HeaderWidget(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
