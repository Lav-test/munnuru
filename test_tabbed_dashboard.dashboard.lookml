- dashboard: test_tabbed_dashboards
  title: Test Tabbed Dashboards
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 3sTf8rWCBnT4ZS3Su0S44g
  theme_name: ''
  layout: newspaper
  tabs:
  - name: Test Tabbed Dashboards
    label: Test Tabbed Dashboards
  - name: New Tab 1
    label: New Tab 1
  elements:
  - title: Test Tabbed Dashboards
    name: Test Tabbed Dashboards
    model: thelook
    explore: orders
    type: marketplace_viz_report_table::report_table-marketplace
    fields: [users.state, orders.count]
    sorts: [orders.count desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      orders.count:
        is_active: false
    defaults_version: 0
    hidden_pivots: {}
    theme: traditional
    customTheme: ''
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    columnOrder: {}
    listen:
      State: users.state
    row: 0
    col: 0
    width: 24
    height: 12
    tab_name: Test Tabbed Dashboards
  - name: New Tile
    title: New Tile
    merged_queries:
    - model: thelook
      explore: orders
      type: looker_grid
      fields: [users.gender, orders.count]
      sorts: [orders.count desc 0]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
    - model: thelook
      explore: orders
      type: table
      fields: [users.gender, users.count]
      sorts: [users.count desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: users.gender
        source_field_name: users.gender
    type: looker_grid
    series_types: {}
    row: 12
    col: 0
    width: 8
    height: 6
    tab_name: Test Tabbed Dashboards
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Test Tabbed Dashboard PDF"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 8
    height: 6
    tab_name: New Tab 1
  - title: Untitled
    name: Untitled
    model: athena
    explore: orders
    type: looker_column
    fields: [orders.status, orders.count]
    sorts: [orders.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 12
    col: 8
    width: 8
    height: 6
    tab_name: New Tab 1
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: thelook
    explore: orders
    listens_to_filters: []
    field: users.state
