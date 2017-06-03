set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.0.00.45'
,p_default_workspace_id=>65734081803940315146
,p_default_application_id=>54515
,p_default_owner=>'EMCY'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 54515 - Ciudad Grande BPS
--
-- Application Export:
--   Application:     54515
--   Name:            Ciudad Grande BPS
--   Date and Time:   08:16 Saturday June 3, 2017
--   Exported By:     EMCY
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.0.00.45
--   Instance ID:     103890330541514
--

-- Application Statistics:
--   Pages:                     21
--     Items:                   92
--     Computations:             4
--     Validations:             20
--     Processes:               43
--     Regions:                 58
--     Buttons:                 53
--     Dynamic Actions:         10
--   Shared Components:
--     Logic:
--       Items:                  1
--       Processes:              1
--     Navigation:
--       Lists:                  5
--       Breadcrumbs:            1
--         Entries:             17
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       LOVs:                   3
--       Shortcuts:              2
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,54515)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'EMCY')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Ciudad Grande BPS')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'VANILLA54515')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'EDB20518D4A6CC33CF44F3FC3AFC7C7CA40ABDD0E79C1C85E036483F6035E503'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en-ph'
,p_flow_language_derived_from=>'0'
,p_date_format=>'MM/DD/YYYY'
,p_date_time_format=>'MM/DD/YYYY HH:MI:SS AM'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(33535998199108330817)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:&APP_NAME.'
,p_favicons=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/fa-home.ico"><link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/fa-home.png"><link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/fa-home.png">'
||'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/fa-home.png">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Ciudad Grande Billing and Payments System'
,p_substitution_string_02=>'OWNER'
,p_substitution_value_02=>'HO'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170415231248'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(33535935576824330758)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33535999329131330822)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33536364222617751100)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,9,31,12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33550965105918467730)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Member Status'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(33536364222617751100)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33623602829901640741)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Transaction Types'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(33536364222617751100)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33919391122045802622)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Parameter Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(33536364222617751100)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39558884828254576301)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Pay Periods'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(33536364222617751100)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33536685981767448337)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Members'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3,4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33543687593344189609)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Billings'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-book'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33622689588677776085)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Collections'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calculator'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33622715265830404131)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(33535997830894330815)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33535998093903330816)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(33621861816516623775)
,p_name=>'Main Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33621862067981623776)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Members'' Info'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-group'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33621862488120623778)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Generate Bill'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-book'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33621862855220623779)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Create Collection'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calculator'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33621863296718623781)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Maintenance Table'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(33621863694187623781)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(39507301934886737821)
,p_name=>'Maintenance List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39507302181230737822)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Member Status'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-spinner'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39507302548693737823)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Transaction Types'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tasks'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39507302949422737823)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Parameter Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dot-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39507303390584737824)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Pay Periods'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(41706363418216467592)
,p_name=>'Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41706363647136467593)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Monthly Collection Report'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_REPORT_TYPE,P22_YEAR:M,:'
,p_list_item_icon=>'fa-group'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41734148081577979433)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Annual Collection Report'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_report_type,P22_PERIOD:A,:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(41735518607927996651)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Monthly Collection Abstract'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1431959502706264202)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1442394823040026384)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1451275416032028975)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(33535935252801330758)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(33535935357832330758)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(33535935416541330758)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(34253040025892498431)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generateBill'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'd_openMonth DATE;',
'd_due_date DATE;',
'v_bill_total_amount NUMBER;',
'l_bill_hdr_pk NUMBER;',
'l_bill_dtl_pk NUMBER;',
'BEGIN',
'',
'',
'SELECT max(bill_Hdr_id)',
'   INTO l_bill_hdr_pk',
'  FROM ho_billing_header;',
'',
'SELECT max(bill_dtl_id)',
'   INTO l_bill_dtl_pk',
'  FROM ho_billing_Detail;',
'',
'SELECT d_value',
'  INTO d_openmonth',
' FROM ho_parameters',
'WHERE param_name = ''OPEN_MO'';',
'',
'd_due_Date := add_months( d_openMonth, 1) -1;',
'',
'',
'   FOR mem IN (select * from ho_members) LOOP',
'   ',
'	l_bill_hdr_pk := l_bill_hdr_pk +1;',
'',
'      INSERT INTO HO_BILLING_HEADER(bill_hdr_id,  member_id, billing_Date, due_date)',
'        VALUES (l_bill_hdr_pk, mem.member_id, d_openMonth, d_due_Date);',
'       ',
'       FOR charg IN (SELECT * FROM ho_charge_type WHERE classification = ''F'') LOOP',
'        ',
'         l_bill_dtl_pk := l_bill_dtl_pk + 1;',
'',
'	INSERT INTO HO_BILLING_DETAIL(bill_dtl_id, bill_hdr_id, charge_type_id, amount)',
'           VALUES(l_bill_dtl_pk, l_bill_hdr_pk, charg.charge_type_id, charg.FIXED_AMT);',
'',
'           ',
'       ',
'       END LOOP;--billing detail',
'   ',
'   END LOOP; --billing header',
'   ',
' ',
'',
'END;'))
,p_process_error_message=>'Error in generate_bill process'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(40109531424138284832)
,p_name=>'G_OPEN_PERIOD_ID'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(33740259853288727871)
,p_lov_name=>'CHARGE_CLASSIFICATION'
,p_lov_query=>'.'||wwv_flow_api.id(33740259853288727871)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(33740260198329727871)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Fixed'
,p_lov_return_value=>'F'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(33740260528517727872)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Computed'
,p_lov_return_value=>'C'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(33740260989539727872)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'One Time / Optional'
,p_lov_return_value=>'O'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27578466289430)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Adjustment'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(36998020207010562465)
,p_lov_name=>'MEMBERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select last_name ||'', ''|| first_name  as d,',
'       MEMBER_ID as r',
'  from ho_members',
' order by last_name, first_name'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(39990001700711149482)
,p_lov_name=>'PAY_PERIODS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
' select to_char(start_date,''Mon DD '')||''to''||to_char(end_Date,'' DD YYYY'') d, period_id r',
' from ho_pay_period',
' order by 2'))
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(33535999258066330821)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33535999632214330822)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33536365191298751103)
,p_parent_id=>wwv_flow_api.id(33535999632214330822)
,p_short_name=>'Maintenance'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33536692642488448387)
,p_short_name=>'List of Members'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33536693889633448393)
,p_parent_id=>wwv_flow_api.id(33536692642488448387)
,p_short_name=>'Member''s Info'
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33543731016503189715)
,p_parent_id=>0
,p_short_name=>'List of Billings'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33543732216199189723)
,p_parent_id=>wwv_flow_api.id(33543731016503189715)
,p_short_name=>'Billing info'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33550973634994467745)
,p_parent_id=>wwv_flow_api.id(33536365191298751103)
,p_short_name=>'List of Members'' Status'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33623430547359568301)
,p_short_name=>'Collections'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33623431766246568303)
,p_parent_id=>wwv_flow_api.id(33623430547359568301)
,p_short_name=>'Payment Info'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33740341315146381671)
,p_parent_id=>wwv_flow_api.id(33536365191298751103)
,p_short_name=>'Transaction Types'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33754386052358871605)
,p_parent_id=>wwv_flow_api.id(33543731016503189715)
,p_short_name=>'Generate Bill'
,p_link=>'f?p=&APP_ID.:8:&SESSION.'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(36569333690035411177)
,p_short_name=>'Billing'
,p_link=>'f?p=&APP_ID.:30:&SESSION.'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(36997920670458501545)
,p_parent_id=>wwv_flow_api.id(33623430547359568301)
,p_short_name=>'Payment Info'
,p_link=>'f?p=&APP_ID.:31:&SESSION.'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(39558918018171576346)
,p_parent_id=>wwv_flow_api.id(33536365191298751103)
,p_short_name=>'Pay Periods'
,p_link=>'f?p=&APP_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41706298779288433928)
,p_parent_id=>wwv_flow_api.id(33535999632214330822)
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41707088939418244635)
,p_parent_id=>0
,p_short_name=>'Collection Report'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41770968772270457150)
,p_parent_id=>wwv_flow_api.id(41706298779288433928)
,p_short_name=>'Monthly Collection Abstract'
,p_link=>'f?p=&APP_ID.:23:&SESSION.'
,p_page_id=>23
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(33535935657315330759)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535935735509330761)
,p_page_template_id=>wwv_flow_api.id(33535935657315330759)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535935834258330761)
,p_page_template_id=>wwv_flow_api.id(33535935657315330759)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535935931689330761)
,p_page_template_id=>wwv_flow_api.id(33535935657315330759)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535936101144330761)
,p_page_template_id=>wwv_flow_api.id(33535935657315330759)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535936202242330761)
,p_page_template_id=>wwv_flow_api.id(33535935657315330759)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535936260184330761)
,p_page_template_id=>wwv_flow_api.id(33535935657315330759)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535936355510330761)
,p_page_template_id=>wwv_flow_api.id(33535935657315330759)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535936495016330761)
,p_page_template_id=>wwv_flow_api.id(33535935657315330759)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(33535936522146330762)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535936614360330762)
,p_page_template_id=>wwv_flow_api.id(33535936522146330762)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535936748724330762)
,p_page_template_id=>wwv_flow_api.id(33535936522146330762)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535956814283330763)
,p_page_template_id=>wwv_flow_api.id(33535936522146330762)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535956919485330763)
,p_page_template_id=>wwv_flow_api.id(33535936522146330762)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535957096066330763)
,p_page_template_id=>wwv_flow_api.id(33535936522146330762)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535957145176330763)
,p_page_template_id=>wwv_flow_api.id(33535936522146330762)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535957271857330763)
,p_page_template_id=>wwv_flow_api.id(33535936522146330762)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535957381992330763)
,p_page_template_id=>wwv_flow_api.id(33535936522146330762)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535957441891330763)
,p_page_template_id=>wwv_flow_api.id(33535936522146330762)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(33535957552547330763)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535957639356330764)
,p_page_template_id=>wwv_flow_api.id(33535957552547330763)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535957713622330764)
,p_page_template_id=>wwv_flow_api.id(33535957552547330763)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(33535957846583330764)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535957913493330765)
,p_page_template_id=>wwv_flow_api.id(33535957846583330764)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535958047341330765)
,p_page_template_id=>wwv_flow_api.id(33535957846583330764)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535958139996330765)
,p_page_template_id=>wwv_flow_api.id(33535957846583330764)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535958209817330765)
,p_page_template_id=>wwv_flow_api.id(33535957846583330764)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535958398866330765)
,p_page_template_id=>wwv_flow_api.id(33535957846583330764)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535958453325330765)
,p_page_template_id=>wwv_flow_api.id(33535957846583330764)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535958557650330765)
,p_page_template_id=>wwv_flow_api.id(33535957846583330764)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535958636450330765)
,p_page_template_id=>wwv_flow_api.id(33535957846583330764)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535958723145330765)
,p_page_template_id=>wwv_flow_api.id(33535957846583330764)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(33535958826798330765)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535958915892330765)
,p_page_template_id=>wwv_flow_api.id(33535958826798330765)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535959057981330765)
,p_page_template_id=>wwv_flow_api.id(33535958826798330765)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535959127111330765)
,p_page_template_id=>wwv_flow_api.id(33535958826798330765)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535959282334330765)
,p_page_template_id=>wwv_flow_api.id(33535958826798330765)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535959371414330765)
,p_page_template_id=>wwv_flow_api.id(33535958826798330765)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535959503508330765)
,p_page_template_id=>wwv_flow_api.id(33535958826798330765)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535959551784330766)
,p_page_template_id=>wwv_flow_api.id(33535958826798330765)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(33535959630581330766)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535959752353330766)
,p_page_template_id=>wwv_flow_api.id(33535959630581330766)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535959812167330766)
,p_page_template_id=>wwv_flow_api.id(33535959630581330766)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535959919669330766)
,p_page_template_id=>wwv_flow_api.id(33535959630581330766)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(33535960078558330766)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535960167374330766)
,p_page_template_id=>wwv_flow_api.id(33535960078558330766)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535960209923330766)
,p_page_template_id=>wwv_flow_api.id(33535960078558330766)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535960331475330766)
,p_page_template_id=>wwv_flow_api.id(33535960078558330766)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535960493148330766)
,p_page_template_id=>wwv_flow_api.id(33535960078558330766)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535960515074330766)
,p_page_template_id=>wwv_flow_api.id(33535960078558330766)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535960627866330766)
,p_page_template_id=>wwv_flow_api.id(33535960078558330766)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535960720418330766)
,p_page_template_id=>wwv_flow_api.id(33535960078558330766)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535960880709330766)
,p_page_template_id=>wwv_flow_api.id(33535960078558330766)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(33535960971906330766)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535961031751330767)
,p_page_template_id=>wwv_flow_api.id(33535960971906330766)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535961138665330767)
,p_page_template_id=>wwv_flow_api.id(33535960971906330766)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535961264434330767)
,p_page_template_id=>wwv_flow_api.id(33535960971906330766)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535961316135330767)
,p_page_template_id=>wwv_flow_api.id(33535960971906330766)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535961420479330767)
,p_page_template_id=>wwv_flow_api.id(33535960971906330766)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535961538166330767)
,p_page_template_id=>wwv_flow_api.id(33535960971906330766)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535961706748330767)
,p_page_template_id=>wwv_flow_api.id(33535960971906330766)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(33535961796192330767)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535961814145330767)
,p_page_template_id=>wwv_flow_api.id(33535961796192330767)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535961989127330767)
,p_page_template_id=>wwv_flow_api.id(33535961796192330767)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535962077268330767)
,p_page_template_id=>wwv_flow_api.id(33535961796192330767)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(33535992689124330802)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(33535992787987330803)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(33535992865926330803)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535962143626330768)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535962282495330768)
,p_plug_template_id=>wwv_flow_api.id(33535962143626330768)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535963701792330771)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535963767182330771)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535963867516330772)
,p_plug_template_id=>wwv_flow_api.id(33535963767182330771)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535963925280330772)
,p_plug_template_id=>wwv_flow_api.id(33535963767182330771)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535964636182330772)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535964798047330772)
,p_plug_template_id=>wwv_flow_api.id(33535964636182330772)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535964862967330772)
,p_plug_template_id=>wwv_flow_api.id(33535964636182330772)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535968014931330775)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535968196658330775)
,p_plug_template_id=>wwv_flow_api.id(33535968014931330775)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535968259857330775)
,p_plug_template_id=>wwv_flow_api.id(33535968014931330775)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535970134102330776)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535970300454330777)
,p_plug_template_id=>wwv_flow_api.id(33535970134102330776)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535970359111330777)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535970477082330777)
,p_plug_template_id=>wwv_flow_api.id(33535970359111330777)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535971285547330777)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535971604218330778)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535971664949330778)
,p_plug_template_id=>wwv_flow_api.id(33535971604218330778)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535971723907330778)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535971846550330778)
,p_plug_template_id=>wwv_flow_api.id(33535971723907330778)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535971979824330778)
,p_plug_template_id=>wwv_flow_api.id(33535971723907330778)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535973855593330781)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535973971057330781)
,p_plug_template_id=>wwv_flow_api.id(33535973855593330781)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535974033652330781)
,p_plug_template_id=>wwv_flow_api.id(33535973855593330781)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535975085181330781)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33535975579975330782)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(33535975693676330782)
,p_plug_template_id=>wwv_flow_api.id(33535975579975330782)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535983980477330791)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535985646353330794)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535987758052330795)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535988590987330796)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535989431986330797)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535989993581330797)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535990023195330797)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535990185964330798)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535990300909330798)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535991162169330800)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33535991639153330800)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33535976174906330783)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33535976295727330783)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33535977914354330785)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33535980053910330787)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33535980472241330788)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33535980544409330788)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(33535980544409330788)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33535981884614330789)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33535982023642330789)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33535983044692330790)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(33535992163012330801)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(33535992295862330801)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(33535992314205330801)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(33535992440220330802)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(33535992604934330802)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(33535993302923330803)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(33535993498068330805)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(33535993384263330804)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(33535993876476330807)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(33535960971906330766)
,p_default_dialog_template=>wwv_flow_api.id(33535959630581330766)
,p_error_template=>wwv_flow_api.id(33535957552547330763)
,p_printer_friendly_template=>wwv_flow_api.id(33535960971906330766)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(33535957552547330763)
,p_default_button_template=>wwv_flow_api.id(33535992787987330803)
,p_default_region_template=>wwv_flow_api.id(33535971723907330778)
,p_default_chart_template=>wwv_flow_api.id(33535971723907330778)
,p_default_form_template=>wwv_flow_api.id(33535971723907330778)
,p_default_reportr_template=>wwv_flow_api.id(33535971723907330778)
,p_default_tabform_template=>wwv_flow_api.id(33535971723907330778)
,p_default_wizard_template=>wwv_flow_api.id(33535971723907330778)
,p_default_menur_template=>wwv_flow_api.id(33535975085181330781)
,p_default_listr_template=>wwv_flow_api.id(33535971723907330778)
,p_default_irr_template=>wwv_flow_api.id(33535971285547330777)
,p_default_report_template=>wwv_flow_api.id(33535980544409330788)
,p_default_label_template=>wwv_flow_api.id(33535992295862330801)
,p_default_menu_template=>wwv_flow_api.id(33535993302923330803)
,p_default_calendar_template=>wwv_flow_api.id(33535993384263330804)
,p_default_list_template=>wwv_flow_api.id(33535987758052330795)
,p_default_nav_list_template=>wwv_flow_api.id(33535991162169330800)
,p_default_top_nav_list_temp=>wwv_flow_api.id(33535991162169330800)
,p_default_side_nav_list_temp=>wwv_flow_api.id(33535990185964330798)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(33535963767182330771)
,p_default_dialogr_template=>wwv_flow_api.id(33535963701792330771)
,p_default_option_label=>wwv_flow_api.id(33535992295862330801)
,p_default_required_label=>wwv_flow_api.id(33535992440220330802)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(33535990023195330797)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>63
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#HAMMERJS_URL#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1432484313411943134)
,p_theme_id=>42
,p_name=>'Vita (orange)'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@utr_Palette1-lighter":"#a67cff","@utr_Palette1-light":"#ffffff","@utr_Palette1":"#e8e7ea","@g_Accent-OG":"#bebdbf","@utr_Palette1-darker":"#9c9b9d","@g_Accent-BG":"#ffbb7c","@utr_Palette2-light":"#ffffff","@utr_Palette3-norm'
||'al":"#e8e7ea","@utr_Palette3-dark":"#bebdbf","@utr_Palette2-darker":"#9c9b9d","@utr_Palette3-lighter":"#a67cff","@utr_Palette3-light":"#ffffff","@utr_Palette3":"#e8e7ea","@utr_Palette3-darker":"#9c9b9d","@utr_Palette4-lighter":"#ffbb7c","@utr_Palette'
||'4-light":"#ffffff","@utr_Palette4":"#e8e7ea","@utr_Palette4-dark":"#bebdbf","@utr_Palette4-darker":"#9c9b9d","@g_Body-Text":"#0e0e0e"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#1432484313411943134.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(33535993579287330806)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(33535993638092330806)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(33535993770790330806)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200D0A202A20566974610D0A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290D0A202A200D0A202A2054686973204353532066696C65207761732067656E657261746564207573';
wwv_flow_api.g_varchar2_table(2) := '696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200D0A202A200D0A202A2F0D0A0D0A2E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A2023333433';
wwv_flow_api.g_varchar2_table(3) := '3433343B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(4) := '723A20233563356335633B0D0A7D0D0A2E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233162316231623B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(5) := '233464346434643B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233432343234323B0D0A7D0D0A0D0A2E742D416C6572742D2D77697A617264207B0D0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(6) := '75733A203270783B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(7) := '636F6C6F723A20236666666165353B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F772068322C0D0A2E';
wwv_flow_api.g_varchar2_table(8) := '742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068332C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77206833207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D';
wwv_flow_api.g_varchar2_table(9) := '0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E67202E742D416C6572742D626F64792C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77202E742D416C6572742D626F647920';
wwv_flow_api.g_varchar2_table(10) := '7B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20236563666265653B0D0A7D0D0A2E742D41';
wwv_flow_api.g_varchar2_table(11) := '6C6572742D2D636F6C6F7242472E742D416C6572742D2D737563636573732068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373206833207B0D0A2020636F6C6F723A20233334333433343B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(12) := '742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373202E742D416C6572742D626F6479207B0D0A2020636F6C6F723A20233734373437343B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(13) := '64616E6765722C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666656165393B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572';
wwv_flow_api.g_varchar2_table(14) := '742D2D64616E6765722068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7265642068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068332C0D0A2E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(15) := '636F6C6F7242472E742D416C6572742D2D726564206833207B0D0A2020636F6C6F723A20233335333533353B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E676572202E742D416C6572742D626F64792C0D0A2E';
wwv_flow_api.g_varchar2_table(16) := '742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564202E742D416C6572742D626F6479207B0D0A2020636F6C6F723A20233734373437343B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F';
wwv_flow_api.g_varchar2_table(17) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236433653566373B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F2068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D';
wwv_flow_api.g_varchar2_table(18) := '2D696E666F206833207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F202E742D416C6572742D626F6479207B0D0A2020636F6C6F723A20233636363636363B';
wwv_flow_api.g_varchar2_table(19) := '0D0A7D0D0A0D0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E207B0D0A2020636F6C6F723A20236666636330303B0D0A7D0D0A0D0A2E';
wwv_flow_api.g_varchar2_table(20) := '742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0D0A2020636F6C6F723A20233463643936343B0D0A7D0D0A0D0A2E742D416C6572742D2D696E666F202E742D416C6572742D69636F6E207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(21) := '3235373863663B0D0A7D0D0A0D0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D726564202E742D416C6572742D69636F6E207B0D0A2020636F6C6F723A20236539306330303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(22) := '2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D686F72697A6F6E74616C2C0D0A2E742D416C6572742D2D77697A617264';
wwv_flow_api.g_varchar2_table(23) := '207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D426F64792D616C657274202E742D416C6572';
wwv_flow_api.g_varchar2_table(24) := '742D2D70616765207B0D0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373207B0D0A20';
wwv_flow_api.g_varchar2_table(25) := '206261636B67726F756E642D636F6C6F723A20726762612837342C203137302C2034342C20302E39293B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D49636F6E2C0D0A2E742D416C6572742D2D70';
wwv_flow_api.g_varchar2_table(26) := '6167652E742D416C6572742D2D73756363657373202E742D416C6572742D7469746C65207B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D416C6572742D2D70616765202E742D427574746F6E2D2D636C6F7365416C657274207B0D0A2020';
wwv_flow_api.g_varchar2_table(27) := '636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D387078';
wwv_flow_api.g_varchar2_table(28) := '20302030202364626462646320696E7365743B0D0A7D0D0A2E742D42616467654C6973742061207B0D0A2020636F6C6F723A20233639363936393B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(29) := '6974656D3A686F766572202E742D42616467654C6973742D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236562656165623B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(30) := '742D76616C7565207B0D0A2020636F6C6F723A20233639363936393B0D0A2020626F782D736861646F773A2030203020302031707820726762612835342C2035342C2035342C20302E312920696E7365743B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(31) := '6F723A20236635663566353B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C75652061207B0D0A2020626F782D736861646F773A20302030203020317078202366666262376320696E7365';
wwv_flow_api.g_varchar2_table(32) := '743B0D0A2020636F6C6F723A20236666623336643B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0D0A2020626F782D736861646F773A2030203020302034';
wwv_flow_api.g_varchar2_table(33) := '7078202366666262376320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D426164';
wwv_flow_api.g_varchar2_table(34) := '67654C6973742D76616C756520613A666F637573207B0D0A2020626F782D736861646F773A203020302030203270782072676261283235352C203138372C203132342C20302E3235292C20302030203020317078202366666262376320696E7365743B0D';
wwv_flow_api.g_varchar2_table(35) := '0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20233639363936393B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C617220612E742D4261';
wwv_flow_api.g_varchar2_table(36) := '6467654C6973742D77726170202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236666626237633B0D0A20207472616E736974696F6E3A20626F782D736861646F7720302E31732C20636F6C6F7220302E';
wwv_flow_api.g_varchar2_table(37) := '31732C206261636B67726F756E642D636F6C6F7220302E33733B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0D';
wwv_flow_api.g_varchar2_table(38) := '0A2020626F782D736861646F773A20302030203020347078202366666262376320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D42616467654C69';
wwv_flow_api.g_varchar2_table(39) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0D0A2020626F782D736861646F773A20302030';
wwv_flow_api.g_varchar2_table(40) := '203020387078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A0D0A2E742D42616467654C6973742D2D666C6F6174202E742D42616467654C6973742D6974656D3A61667465722C0D0A2E742D42616467654C6973742D2D66';
wwv_flow_api.g_varchar2_table(41) := '6C6578202E742D42616467654C6973742D6974656D3A61667465722C0D0A2E742D42616467654C6973742D2D636F6C73202E742D42616467654C6973742D6974656D3A61667465722C0D0A2E742D42616467654C6973742D2D6669786564202E742D4261';
wwv_flow_api.g_varchar2_table(42) := '6467654C6973742D6974656D3A61667465722C0D0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974656D3A6166746572207B0D0A20206261636B67726F756E643A20236462646264633B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(43) := '42616467654C6973742D2D666C6F6174202E742D42616467654C6973742D6974656D3A6265666F72652C0D0A2E742D42616467654C6973742D2D666C6578202E742D42616467654C6973742D6974656D3A6265666F72652C0D0A2E742D42616467654C69';
wwv_flow_api.g_varchar2_table(44) := '73742D2D636F6C73202E742D42616467654C6973742D6974656D3A6265666F72652C0D0A2E742D42616467654C6973742D2D6669786564202E742D42616467654C6973742D6974656D3A6265666F72652C0D0A2E742D42616467654C6973742D2D737461';
wwv_flow_api.g_varchar2_table(45) := '636B6564202E742D42616467654C6973742D6974656D3A6265666F7265207B0D0A20206261636B67726F756E643A20236462646264633B0D0A7D0D0A2E742D42616467654C6973742D2D626F74746F6D426F72646572207B0D0A2020626F726465722D62';
wwv_flow_api.g_varchar2_table(46) := '6F74746F6D2D636F6C6F723A20236265626462663B0D0A7D0D0A0D0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236538653865383B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(47) := '742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233366336633663B0D0A7D0D0A2E742D426F64792D7469746C65202E612D42617243';
wwv_flow_api.g_varchar2_table(48) := '68617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4261724368617274202E612D42617243686172';
wwv_flow_api.g_varchar2_table(49) := '742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D4261724368617274';
wwv_flow_api.g_varchar2_table(50) := '2D76616C75652C0D0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233735373537353B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(51) := '4261724368617274202E612D42617243686172742D6974656D20696D67207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D626172207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(52) := '6E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D636C6173736963202E612D42';
wwv_flow_api.g_varchar2_table(53) := '617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D';
wwv_flow_api.g_varchar2_table(54) := '626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0D0A2E612D42617243686172';
wwv_flow_api.g_varchar2_table(55) := '742D2D6D6F6465726E202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572';
wwv_flow_api.g_varchar2_table(56) := '202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D66696C6C6564207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(57) := '636F6C6F723A20236666626237633B0D0A7D0D0A0D0A626F64792C0D0A2E742D426F6479207B0D0A20206261636B67726F756E643A20236265626462663B0D0A2020636F6C6F723A20233065306530653B0D0A7D0D0A61207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(58) := '236666623336643B0D0A7D0D0A2E742D426F64792D7469746C6520612C0D0A2E742D426F64792D696E666F2061207B0D0A2020636F6C6F723A20236666613635333B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(59) := '6E642D636F6C6F723A20236231623062323B0D0A7D0D0A2E742D426F64792D7469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E75692D77696467';
wwv_flow_api.g_varchar2_table(60) := '65742D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(61) := '742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(62) := '20233430343034303B0D0A7D0D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E742C0D0A2E742D427574746F6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233336333633363B';
wwv_flow_api.g_varchar2_table(63) := '0D0A7D0D0A2E742D426F64792D73696465207B0D0A20206261636B67726F756E642D636F6C6F723A20236362636163633B0D0A2020636F6C6F723A20233065306530653B0D0A7D0D0A2E617065782D7264732D636F6E7461696E6572207B0D0A20206261';
wwv_flow_api.g_varchar2_table(64) := '636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(65) := '0D0A2E742D426F64792D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D7469746C652E6A732D6869646542726561646372756D6273207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(66) := '636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20236438';
wwv_flow_api.g_varchar2_table(67) := '643764383B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653465353B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A616374697665202E612D49';
wwv_flow_api.g_varchar2_table(68) := '636F6E207B0D0A2020636F6C6F723A20236362636163633B0D0A7D0D0A2E742D426F64792D746F70427574746F6E202E612D49636F6E207B0D0A2020636F6C6F723A20236265626462663B0D0A7D0D0A0D0A2E617065782D736964652D6E6176202E742D';
wwv_flow_api.g_varchar2_table(69) := '426F64792D6E61762C0D0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0D0A2E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020746F703A20343070783B0D0A7D0D0A406D6564696120';
wwv_flow_api.g_varchar2_table(70) := '6F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A7D0D0A406D';
wwv_flow_api.g_varchar2_table(71) := '65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032303070';
wwv_flow_api.g_varchar2_table(72) := '783B0D0A20207D0D0A7D0D0A2E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A0D0A2E617065782D746F702D6E6176202E742D426F64792D616374696F6E73207B0D0A';
wwv_flow_api.g_varchar2_table(73) := '2020746F703A20383070783B0D0A7D0D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0D0A2020746F703A20383070783B0D0A7D0D0A0D0A2E742D426F64792D6E6176207B0D0A202077696474683A2032303070783B0D0A7D';
wwv_flow_api.g_varchar2_table(74) := '0D0A0D0A2E742D426F64792D616374696F6E73207B0D0A202077696474683A2032303070783B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0D0A20202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(75) := '207472616E736C6174653364282D343070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030';
wwv_flow_api.g_varchar2_table(76) := '293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D426F64792D73696465207B0D0A2020202077696474683A2032343070783B0D0A202020206C6566743A';
wwv_flow_api.g_varchar2_table(77) := '20343070783B0D0A20207D0D0A7D0D0A0D0A2E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20343070783B0D0A20202D7765626B69742D7472616E';
wwv_flow_api.g_varchar2_table(78) := '73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283136307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364283136307078';
wwv_flow_api.g_varchar2_table(79) := '2C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469';
wwv_flow_api.g_varchar2_table(80) := '746C652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74';
wwv_flow_api.g_varchar2_table(81) := '207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20';
wwv_flow_api.g_varchar2_table(82) := '2020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D';
wwv_flow_api.g_varchar2_table(83) := '3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E617065782D736964652D6E61762E6A';
wwv_flow_api.g_varchar2_table(84) := '732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C';
wwv_flow_api.g_varchar2_table(85) := '656674202E742D426F64792D636F6E74656E742C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020202D7765626B';
wwv_flow_api.g_varchar2_table(86) := '69742D7472616E73666F726D3A206E6F6E653B0D0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870';
wwv_flow_api.g_varchar2_table(87) := '616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E74';
wwv_flow_api.g_varchar2_table(88) := '2D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564';
wwv_flow_api.g_varchar2_table(89) := '2E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A203070783B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E74';
wwv_flow_api.g_varchar2_table(90) := '2D426F64792D7469746C652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F6479';
wwv_flow_api.g_varchar2_table(91) := '2D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A';
wwv_flow_api.g_varchar2_table(92) := '202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C65667420';
wwv_flow_api.g_varchar2_table(93) := '2E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0D0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0D0A20202020747261';
wwv_flow_api.g_varchar2_table(94) := '6E73666F726D3A206E6F6E653B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A2030';
wwv_flow_api.g_varchar2_table(95) := '3B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20323830';
wwv_flow_api.g_varchar2_table(96) := '70783B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283136307078293B0D0A20202020747261';
wwv_flow_api.g_varchar2_table(97) := '6E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20202E617065782D73696465';
wwv_flow_api.g_varchar2_table(98) := '2D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A202020202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(99) := '206E6F6E653B0D0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D5061676542';
wwv_flow_api.g_varchar2_table(100) := '6F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0D0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0D0A202020207472616E73666F726D';
wwv_flow_api.g_varchar2_table(101) := '3A206E6F6E653B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D';
wwv_flow_api.g_varchar2_table(102) := '636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2034343070783B0D0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0D0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0D0A202020207472616E';
wwv_flow_api.g_varchar2_table(103) := '73666F726D3A206E6F6E653B0D0A20207D0D0A7D0D0A0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C617073656420';
wwv_flow_api.g_varchar2_table(104) := '2E742D426F64792D6E6176202E742D547265654E6176207B0D0A202077696474683A20343070783B0D0A7D0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0D0A2E617065782D';
wwv_flow_api.g_varchar2_table(105) := '736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(106) := '743A20343070783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E';
wwv_flow_api.g_varchar2_table(107) := '6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746558282D34307078293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C61746558282D34307078293B0D0A202020207472616E73666F72';
wwv_flow_api.g_varchar2_table(108) := '6D3A207472616E736C61746558282D34307078293B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_api.g_varchar2_table(109) := '436F6C6C6170736564202E742D426F64792D736964652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A2020';
wwv_flow_api.g_varchar2_table(110) := '7D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D';
wwv_flow_api.g_varchar2_table(111) := '0A202020206D617267696E2D6C6566743A20303B0D0A202020206C6566743A20343070783B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E74';
wwv_flow_api.g_varchar2_table(112) := '2D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64';
wwv_flow_api.g_varchar2_table(113) := '792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383070783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20202E617065782D73';
wwv_flow_api.g_varchar2_table(114) := '6964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A202020206C6566743A20343070783B0D0A20207D0D0A7D0D0A0D0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D42';
wwv_flow_api.g_varchar2_table(115) := '6F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0D0A2E742D50616765426F64792E6A732D726967687445';
wwv_flow_api.g_varchar2_table(116) := '7870616E646564202E742D426F64792D6E6176207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D';
wwv_flow_api.g_varchar2_table(117) := '3230307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A2020';
wwv_flow_api.g_varchar2_table(118) := '2E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D5061';
wwv_flow_api.g_varchar2_table(119) := '6765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0D0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0D0A202020207472616E73666F72';
wwv_flow_api.g_varchar2_table(120) := '6D3A206E6F6E653B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A';
wwv_flow_api.g_varchar2_table(121) := '2032303070783B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B';
wwv_flow_api.g_varchar2_table(122) := '0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E74';
wwv_flow_api.g_varchar2_table(123) := '2D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D';
wwv_flow_api.g_varchar2_table(124) := '0A202020206C6566743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E74';
wwv_flow_api.g_varchar2_table(125) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D';
wwv_flow_api.g_varchar2_table(126) := '50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6E6176207B0D';
wwv_flow_api.g_varchar2_table(127) := '0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0D0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20202E742D50616765426F64792E6A73';
wwv_flow_api.g_varchar2_table(128) := '2D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E742D50616765426F64792E6A732D726967687445';
wwv_flow_api.g_varchar2_table(129) := '7870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20343070783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C79207363';
wwv_flow_api.g_varchar2_table(130) := '7265656E20616E6420286D61782D77696474683A20393932707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A20';
wwv_flow_api.g_varchar2_table(131) := '2020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0D0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20202E742D50616765426F64792E6A732D72';
wwv_flow_api.g_varchar2_table(132) := '69676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C6566';
wwv_flow_api.g_varchar2_table(133) := '74202E742D426F64792D736964652C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D';
wwv_flow_api.g_varchar2_table(134) := '7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C61';
wwv_flow_api.g_varchar2_table(135) := '74653364282D32303070782C20302C2030293B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D61';
wwv_flow_api.g_varchar2_table(136) := '7267696E2D6C6566743A20343070782021696D706F7274616E743B0D0A20207D0D0A7D0D0A0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A';
wwv_flow_api.g_varchar2_table(137) := '203070783B0D0A7D0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202072696768743A203070783B0D0A7D0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C61';
wwv_flow_api.g_varchar2_table(138) := '70736564202E742D426F64792D616374696F6E73207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C6174652832';
wwv_flow_api.g_varchar2_table(139) := '30307078293B0D0A20207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A2020';
wwv_flow_api.g_varchar2_table(140) := '2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A7D0D0A0D0A2E742D426F64792D636F6E74656E74496E6E6572207B0D0A';
wwv_flow_api.g_varchar2_table(141) := '20206D617267696E3A206175746F3B0D0A20206D61782D77696474683A206175746F3B0D0A7D0D0A0D0A2E742D42726561646372756D622D6974656D3A6166746572207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3939';
wwv_flow_api.g_varchar2_table(142) := '3335293B0D0A7D0D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F766572207B0D0A2020636F6C6F723A20236666626237633B0D0A7D0D0A2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D';
wwv_flow_api.g_varchar2_table(143) := '625469746C65202E742D42726561646372756D622D6974656D3A6C6173742D6368696C64202E742D42726561646372756D622D6C6162656C207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D42726561646372756D62526567696F';
wwv_flow_api.g_varchar2_table(144) := '6E2D7469746C6554657874207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A2E742D427574746F6E2C0D0A2E612D427574746F6E207B0D0A2020626F726465723A206E6F6E653B0D0A2020636F6C6F723A20233333333333333B0D0A';
wwv_flow_api.g_varchar2_table(145) := '20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(146) := '20302E3132352920696E7365743B0D0A2020626F726465722D7261646975733A203270783B0D0A2020746578742D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F766572207B0D';
wwv_flow_api.g_varchar2_table(147) := '0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E742D427574746F6E2E742D';
wwv_flow_api.g_varchar2_table(148) := '427574746F6E2D2D73696D706C652C0D0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C65207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A2020626F';
wwv_flow_api.g_varchar2_table(149) := '782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A2020746578742D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65';
wwv_flow_api.g_varchar2_table(150) := '3A686F7665722C0D0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A666F6375732C0D0A2E612D427574746F6E2E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(151) := '696D706C653A666F6375732C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A6163746976652C0D0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A616374697665207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(152) := '636F6C6F723A20236536653665363B0D0A2020626F782D736861646F773A20302030203020317078202365366536653620696E7365743B0D0A7D0D0A406D656469612073637265656E20616E6420282D6D732D686967682D636F6E74726173743A206163';
wwv_flow_api.g_varchar2_table(153) := '7469766529207B0D0A20202E742D427574746F6E2C0D0A20202E612D427574746F6E207B0D0A20202020626F726465723A2031707820736F6C69643B0D0A20207D0D0A7D0D0A0D0A2E742D427574746F6E2D2D7072696D6172792C0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(154) := '6F6E2D2D686F742C0D0A2E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D73756363657373207B0D0A2020626F782D736861646F773A2030203020327078207267626128';
wwv_flow_api.g_varchar2_table(155) := '302C20302C20302C20302E30352920696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C652C0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E74';
wwv_flow_api.g_varchar2_table(156) := '2D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C652C0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E';
wwv_flow_api.g_varchar2_table(157) := '2D2D73696D706C65207B0D0A2020626F782D736861646F773A2030203020302031707820696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A686F7665722C0D0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B';
wwv_flow_api.g_varchar2_table(158) := '0D0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(159) := '686F743A686F7665722C0D0A2E742D427574746F6E2D2D64616E6765723A686F7665722C0D0A2E742D427574746F6E2D2D737563636573733A686F766572207B0D0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C';
wwv_flow_api.g_varchar2_table(160) := '20302C20302E31292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0D0A7D0D0A2E742D427574746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F766572207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(161) := '642D636F6C6F723A20236666666666663B0D0A20207A2D696E6465783A203130303B0D0A7D0D0A2E742D427574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A20207A2D696E';
wwv_flow_api.g_varchar2_table(162) := '6465783A203131303B0D0A7D0D0A2E742D427574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F6375732C0D0A2E742D427574746F6E3A6163746976653A666F6375732C0D0A2E612D427574746F6E3A6163746976653A666F637573207B0D';
wwv_flow_api.g_varchar2_table(163) := '0A2020626F782D736861646F773A20302030203020317078202366666262376320696E7365742C2030203020317078203270782072676261283235352C203138372C203132342C20302E3235292021696D706F7274616E743B0D0A7D0D0A2E742D427574';
wwv_flow_api.g_varchar2_table(164) := '746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820';
wwv_flow_api.g_varchar2_table(165) := '327078207267626128302C20302C20302C20302E32352920696E7365743B0D0A20207A2D696E6465783A203130303B0D0A7D0D0A2E742D427574746F6E3A6163746976653A666F637573207B0D0A2020626F782D736861646F773A203020302030203170';
wwv_flow_api.g_varchar2_table(166) := '78207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20302E32352920696E7365742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2E69732D6163746976652C';
wwv_flow_api.g_varchar2_table(167) := '0D0A2E742D427574746F6E2E69732D6163746976653A6163746976652C0D0A2E742D4D656E75427574746F6E2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A2020636F6C6F723A20233333';
wwv_flow_api.g_varchar2_table(168) := '333333333B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020746578742D736861646F773A206E6F6E653B0D0A20207A2D696E6465783A203130303B0D0A2020626F782D736861646F773A2030203020302031707820726762612830';
wwv_flow_api.g_varchar2_table(169) := '2C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20302E32352920696E7365743B0D0A7D0D0A2E742D427574746F6E2E69732D64697361626C65642C0D0A2E742D427574746F6E2E69732D6469';
wwv_flow_api.g_varchar2_table(170) := '7361626C65643A6163746976652C0D0A2E742D427574746F6E3A64697361626C6564207B0D0A20206F7061636974793A202E353B0D0A2020706F696E7465722D6576656E74733A206E6F6E653B0D0A7D0D0A0D0A2E742D427574746F6E2D2D686F742C0D';
wwv_flow_api.g_varchar2_table(171) := '0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742C0D0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D61727920';
wwv_flow_api.g_varchar2_table(172) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030303B0D0A2020746578742D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E31293B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(173) := '2E742D427574746F6E2D2D686F743A686F7665722C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A686F7665722C0D0A626F647920627574746F6E2E75692D73746174652D';
wwv_flow_api.g_varchar2_table(174) := '64656661756C742E75692D7072696F726974792D7072696D6172793A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666643561663B0D0A7D0D0A2E742D427574746F6E2D2D686F743A6163746976652C0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(175) := '75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0D0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A';
wwv_flow_api.g_varchar2_table(176) := '6163746976652C0D0A2E742D427574746F6E2D2D686F742E69732D6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E69732D6163746976652C0D0A626F6479';
wwv_flow_api.g_varchar2_table(177) := '20627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D6163746976652C0D0A2E742D427574746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D6163746976652C0D0A626F64';
wwv_flow_api.g_varchar2_table(178) := '79202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D6163746976652C0D0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75';
wwv_flow_api.g_varchar2_table(179) := '692D7072696F726974792D7072696D6172792E742D4D656E75427574746F6E2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236666613134393B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F';
wwv_flow_api.g_varchar2_table(180) := '6E2D2D73696D706C652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A626F647920627574746F6E2E75692D73746174652D';
wwv_flow_api.g_varchar2_table(181) := '64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0D0A2020626F782D736861646F773A20302030203020317078202366666262376320696E7365743B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(182) := '2D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233966376435653B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0D0A626F6479202E75692D73746174652D646566';
wwv_flow_api.g_varchar2_table(183) := '61756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0D0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072';
wwv_flow_api.g_varchar2_table(184) := '696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A20233966376435653B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F7665722C0D0A626F6479';
wwv_flow_api.g_varchar2_table(185) := '202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F7665722C0D0A626F647920627574746F6E2E75692D73746174652D64656661756C742E7569';
wwv_flow_api.g_varchar2_table(186) := '2D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F7665722C0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0D0A626F6479202E75692D73746174652D6465';
wwv_flow_api.g_varchar2_table(187) := '6661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0D0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D707269';
wwv_flow_api.g_varchar2_table(188) := '6D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574';
wwv_flow_api.g_varchar2_table(189) := '746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0D0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D42757474';
wwv_flow_api.g_varchar2_table(190) := '6F6E2D2D73696D706C653A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030303B0D0A2020626F782D736861646F773A2030203020302031707820236666626237';
wwv_flow_api.g_varchar2_table(191) := '6320696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574';
wwv_flow_api.g_varchar2_table(192) := '746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0D0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(193) := '2D73696D706C653A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0D0A626F6479202E75692D73746174652D64656661756C742E75692D6275';
wwv_flow_api.g_varchar2_table(194) := '74746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0D0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172';
wwv_flow_api.g_varchar2_table(195) := '792E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0D0A626F6479202E75692D73746174652D64';
wwv_flow_api.g_varchar2_table(196) := '656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0D0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072';
wwv_flow_api.g_varchar2_table(197) := '696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7072696D617279207B0D0A20206261';
wwv_flow_api.g_varchar2_table(198) := '636B67726F756E642D636F6C6F723A20236339363030303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023666337';
wwv_flow_api.g_varchar2_table(199) := '3930303B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6163746976652C0D0A2E742D427574746F6E2D2D7072696D6172792E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233936343830303B0D0A7D';
wwv_flow_api.g_varchar2_table(200) := '0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0D0A2020626F782D736861646F773A20302030203020317078202363393630303020696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(201) := '20236666666666663B0D0A2020636F6C6F723A20233731336430643B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A20233731336430643B0D0A7D';
wwv_flow_api.g_varchar2_table(202) := '0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F7665722C0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0D0A2E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(203) := '2D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236339363030303B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(204) := '2030203020317078202363393630303020696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D7072696D6172792E74';
wwv_flow_api.g_varchar2_table(205) := '2D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0D0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(206) := '66663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D64616E676572207B0D0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0D0A2020636F6C6F723A20236666656165393B0D0A7D0D0A2E742D427574746F6E2D2D64616E676572';
wwv_flow_api.g_varchar2_table(207) := '3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666323931643B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6163746976652C0D0A2E742D427574746F6E2D2D64616E6765722E69732D616374697665207B0D';
wwv_flow_api.g_varchar2_table(208) := '0A20206261636B67726F756E642D636F6C6F723A20236236303930303B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65207B0D0A2020626F782D736861646F773A203020302030203170782023653930';
wwv_flow_api.g_varchar2_table(209) := '63303020696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233934323632303B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65202E';
wwv_flow_api.g_varchar2_table(210) := '742D49636F6E207B0D0A2020636F6C6F723A20233934323632303B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A686F7665722C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F';
wwv_flow_api.g_varchar2_table(211) := '6E2D2D73696D706C653A666F6375732C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(212) := '3A20236666656165393B0D0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A686F766572202E742D49';
wwv_flow_api.g_varchar2_table(213) := '636F6E2C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A616374697665202E';
wwv_flow_api.g_varchar2_table(214) := '742D49636F6E207B0D0A2020636F6C6F723A20236666656165393B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7761726E696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A2020636F6C6F723A202330303030';
wwv_flow_api.g_varchar2_table(215) := '30303B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6163746976652C0D0A2E742D';
wwv_flow_api.g_varchar2_table(216) := '427574746F6E2D2D7761726E696E672E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65207B0D';
wwv_flow_api.g_varchar2_table(217) := '0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233863373330643B0D0A7D0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(218) := '6F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A20233863373330643B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A686F';
wwv_flow_api.g_varchar2_table(219) := '7665722C0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F6375732C0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A616374697665207B0D0A20206261';
wwv_flow_api.g_varchar2_table(220) := '636B67726F756E642D636F6C6F723A20236666636330303B0D0A2020636F6C6F723A20233030303030303B0D0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D77';
wwv_flow_api.g_varchar2_table(221) := '61726E696E672E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0D0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(222) := '6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73756363657373207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(223) := '6F756E642D636F6C6F723A20233463643936343B0D0A2020636F6C6F723A20233037316630623B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233736653238383B';
wwv_flow_api.g_varchar2_table(224) := '0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6163746976652C0D0A2E742D427574746F6E2D2D737563636573732E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(225) := '2D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65207B0D0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(226) := '666666663B0D0A2020636F6C6F723A20233333373933663B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A20233333373933663B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(227) := '2D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A686F7665722C0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F6375732C0D0A2E742D427574746F6E2D2D737563';
wwv_flow_api.g_varchar2_table(228) := '636573732E742D427574746F6E2D2D73696D706C653A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A2020636F6C6F723A20233037316630623B0D0A2020626F782D736861646F773A203020302030';
wwv_flow_api.g_varchar2_table(229) := '20317078202334636439363420696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D737563636573732E742D427574';
wwv_flow_api.g_varchar2_table(230) := '746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233037316630623B0D';
wwv_flow_api.g_varchar2_table(231) := '0A7D0D0A2E742D427574746F6E2D2D70696C6C5374617274207B0D0A2020626F726465722D746F702D72696768742D7261646975733A20302021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20';
wwv_flow_api.g_varchar2_table(232) := '302021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D70696C6C456E64207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A20302021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D6C6566';
wwv_flow_api.g_varchar2_table(233) := '742D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D70696C6C207B0D0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6869646553686F';
wwv_flow_api.g_varchar2_table(234) := '772E742D427574746F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D4865616465722D6272616E64696E67202E742D427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E737061';
wwv_flow_api.g_varchar2_table(235) := '72656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0D0A20207472616E736974696F6E3A206E6F6E653B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A2E742D427574746F6E2E742D427574';
wwv_flow_api.g_varchar2_table(236) := '746F6E2D2D6865616465723A666F6375732C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976653A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202366666533633920696E736574';
wwv_flow_api.g_varchar2_table(237) := '2C2030203020317078203270782072676261283235352C203232372C203230312C20302E3235292021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F7665722C0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(238) := '2E742D427574746F6E2D2D6865616465723A666F6375732C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(239) := '2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(240) := '6865616465723A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E34293B0D0A';
wwv_flow_api.g_varchar2_table(241) := '7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A2020626F782D736861646F773A206E';
wwv_flow_api.g_varchar2_table(242) := '6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A6265666F7265207B0D0A2020636F6E74656E743A2027273B0D0A2020706F736974696F6E3A206162736F6C';
wwv_flow_api.g_varchar2_table(243) := '7574653B0D0A2020746F703A20303B0D0A2020626F74746F6D3A20303B0D0A202072696768743A20303B0D0A202077696474683A203170783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A';
wwv_flow_api.g_varchar2_table(244) := '7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265652E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(245) := '0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A686F7665722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572';
wwv_flow_api.g_varchar2_table(246) := '547265653A666F6375733A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(247) := '2D6865616465725269676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236231623062323B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A686F';
wwv_flow_api.g_varchar2_table(248) := '766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233938393639393B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A6163746976652C0D0A2E74';
wwv_flow_api.g_varchar2_table(249) := '2D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D427574746F6E2D2D6E617642617220';
wwv_flow_api.g_varchar2_table(250) := '2E742D427574746F6E2D6261646765207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0D0A7D0D0A2E742D427574746F6E2D2D6865';
wwv_flow_api.g_varchar2_table(251) := '6C70427574746F6E202E612D49636F6E207B0D0A20206F7061636974793A202E353B0D0A7D0D0A2E612D43616C656E6461722D627574746F6E207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020636F6C6F723A2023373037303730';
wwv_flow_api.g_varchar2_table(252) := '3B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F5549207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279207B0D0A2020636F6C6F723A202337313364';
wwv_flow_api.g_varchar2_table(253) := '30642021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0D0A2020636F6C6F723A20236339363030302021696D706F7274616E743B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(254) := '427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67207B0D0A2020636F6C6F723A20233863373330642021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67';
wwv_flow_api.g_varchar2_table(255) := '202E742D49636F6E207B0D0A2020636F6C6F723A20236666636330302021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572207B0D0A2020636F6C6F723A2023383131333064202169';
wwv_flow_api.g_varchar2_table(256) := '6D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572202E742D49636F6E207B0D0A2020636F6C6F723A20236539306330302021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(257) := '2D2D6E6F55492E742D427574746F6E2D2D73756363657373207B0D0A2020636F6C6F723A20233333373933662021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D4963';
wwv_flow_api.g_varchar2_table(258) := '6F6E207B0D0A2020636F6C6F723A20233463643936342021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74207B0D0A2020636F6C6F723A20233863366134622021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(259) := '0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20236666626237632021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574';
wwv_flow_api.g_varchar2_table(260) := '746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6E6F55';
wwv_flow_api.g_varchar2_table(261) := '492E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A0D0A2E742D427574746F6E526567696F6E207B0D0A';
wwv_flow_api.g_varchar2_table(262) := '20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233336333633363B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0D0A';
wwv_flow_api.g_varchar2_table(263) := '20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D77697A6172642C0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(264) := '726465722D7261646975733A2030203020327078203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(265) := '2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D7469746C65202E742D42';
wwv_flow_api.g_varchar2_table(266) := '7574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E742D427574746F6E526567696F6E2D2D';
wwv_flow_api.g_varchar2_table(267) := '73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574';
wwv_flow_api.g_varchar2_table(268) := '746F6E526567696F6E2D7469746C652C0D0A2E742D427574746F6E526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A202333363336';
wwv_flow_api.g_varchar2_table(269) := '33363B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D';
wwv_flow_api.g_varchar2_table(270) := '0A0D0A2E66632D746F6F6C626172207B0D0A2020626F726465722D636F6C6F723A20236530653065313B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020626F726465722D7261646975733A20327078203270782030';
wwv_flow_api.g_varchar2_table(271) := '20303B0D0A7D0D0A2E66632D746F6F6C6261722068322C0D0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0D0A2E6663202E66632D6461792D6E756D626572207B0D0A2020636F6C6F723A20233336333633';
wwv_flow_api.g_varchar2_table(272) := '363B0D0A7D0D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0D0A2E66632D76696577202E75692D7769646765742D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236235623462363B0D';
wwv_flow_api.g_varchar2_table(273) := '0A2020636F6C6F723A20233033303330333B0D0A2020626F726465722D636F6C6F723A20236138613761613B0D0A7D0D0A6469762E66632D6167656E64614C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A';
wwv_flow_api.g_varchar2_table(274) := '2020626F726465722D636F6C6F723A20236530653065313B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(275) := '233963396139643B0D0A2020636F6C6F723A20233033303330333B0D0A2020626F726465722D636F6C6F723A20236630656666303B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D646179207B0D0A2020636F6C6F723A2023303330333033';
wwv_flow_api.g_varchar2_table(276) := '3B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D64617465207B0D0A2020636F6C6F723A20233239323932393B0D0A7D0D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D73746172742D74696D652C0D0A2E6663';
wwv_flow_api.g_varchar2_table(277) := '202E66632D6167656E64614C697374202E66632D6576656E742D616C6C2D646179207B0D0A2020636F6C6F723A20233563356335633B0D0A7D0D0A626F6479202E66632074642E66632D746F6461792C0D0A626F6479202E6663202E75692D7769646765';
wwv_flow_api.g_varchar2_table(278) := '742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20236462646264633B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74656E742E66632D746F6461792E75692D737461';
wwv_flow_api.g_varchar2_table(279) := '74652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236538653865383B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0D0A2020626F726465722D636F6C6F723A20236630656666303B';
wwv_flow_api.g_varchar2_table(280) := '0D0A7D0D0A0D0A2E742D436172642D77726170207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D436172642D777261703A666F637573207B0D0A2020626F726465722D636F6C6F723A20236666626237633B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(281) := '2E742D436172642D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D436172642D64657363207B0D0A2020636F6C6F723A20233332333233323B0D0A7D0D0A2E742D43617264732D2D636F6D70616374202E';
wwv_flow_api.g_varchar2_table(282) := '742D436172642D77726170207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663166323B0D0A7D0D0A2E742D43617264732D2D636F6D70616374202E742D436172642D64657363207B0D0A2020636F6C6F723A20233539353935393B0D';
wwv_flow_api.g_varchar2_table(283) := '0A7D0D0A2E742D436172642D696E666F207B0D0A2020636F6C6F723A20233539353935393B0D0A7D0D0A2E742D436172642D7469746C65207B0D0A2020636F6C6F723A20233332333233333B0D0A7D0D0A2E742D43617264732D2D6261736963202E742D';
wwv_flow_api.g_varchar2_table(284) := '43617264202E742D436172642D777261702C0D0A2E742D436172642D2D6261736963202E742D436172642D77726170207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663166323B0D0A7D0D0A2E742D43617264732D2D626173696320';
wwv_flow_api.g_varchar2_table(285) := '2E742D43617264202E742D436172642D69636F6E202E742D49636F6E2C0D0A2E742D436172642D2D6261736963202E742D436172642D69636F6E202E742D49636F6E207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(286) := '726F756E642D636F6C6F723A20234130413041303B0D0A7D0D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D7469746C65577261702C0D0A2E742D436172642D2D6261736963202E742D436172642D7469746C655772';
wwv_flow_api.g_varchar2_table(287) := '6170207B0D0A20206261636B67726F756E642D636F6C6F723A20236332633163333B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D777261702C0D0A2E742D436172642D2D6665617475726564202E';
wwv_flow_api.g_varchar2_table(288) := '742D436172642D77726170207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663166323B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D69636F6E202E742D49636F6E2C0D0A2E74';
wwv_flow_api.g_varchar2_table(289) := '2D436172642D2D6665617475726564202E742D436172642D69636F6E202E742D49636F6E207B0D0A2020626F726465722D7261646975733A2031303070783B0D0A2020636F6C6F723A20234646463B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(290) := '20234130413041303B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D626F64792C0D0A2E742D436172642D2D6665617475726564202E742D436172642D626F6479207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(291) := '6E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D436C617373696343616C656E64';
wwv_flow_api.g_varchar2_table(292) := '61722D646179436F6C756D6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236630656666303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A2020626F726465722D636F6C6F723A20236538653865383B0D0A2020636F';
wwv_flow_api.g_varchar2_table(293) := '6C6F723A20233563356335633B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179207B0D0A2020626F726465722D636F6C6F723A20236538653865383B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D69';
wwv_flow_api.g_varchar2_table(294) := '6E616374697665202E742D436C617373696343616C656E6461722D64617465207B0D0A20206F7061636974793A202E353B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0D0A2E742D436C6173736963';
wwv_flow_api.g_varchar2_table(295) := '43616C656E6461722D6461792E69732D696E616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C6173';
wwv_flow_api.g_varchar2_table(296) := '73696343616C656E6461722D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D64617465207B0D0A20';
wwv_flow_api.g_varchar2_table(297) := '20636F6C6F723A20233735373537353B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236538653865383B0D0A7D0D0A2E742D436C617373696343616C656E646172';
wwv_flow_api.g_varchar2_table(298) := '2D6576656E74207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(299) := '20233030303030303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D43';
wwv_flow_api.g_varchar2_table(300) := '6C617373696343616C656E6461722D74696D65436F6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236630656666303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C65';
wwv_flow_api.g_varchar2_table(301) := '6E6461722D6461794576656E74732C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(302) := '436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E747320612C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461';
wwv_flow_api.g_varchar2_table(303) := '722D6461794576656E74732061207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D43';
wwv_flow_api.g_varchar2_table(304) := '6C617373696343616C656E6461722D6461792E69732D746F6461792C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(305) := '756E642D636F6C6F723A20233763336330303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C697374207B0D0A2020626F726465722D636F6C6F723A20236538653865383B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C';
wwv_flow_api.g_varchar2_table(306) := '6973745469746C652C0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020626F726465722D636F6C6F723A20236538653865383B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65';
wwv_flow_api.g_varchar2_table(307) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236630656666303B0D0A2020636F6C6F723A20233563356335633B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020636F6C6F723A20233336';
wwv_flow_api.g_varchar2_table(308) := '333633363B0D0A7D0D0A2E742D436F6D6D656E74732D7573657249636F6E2C0D0A2E742D436F6D6D656E74732D75736572496D67207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D436F6D6D656E74732D7573657249';
wwv_flow_api.g_varchar2_table(309) := '636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D436F6D6D656E74732D696E666F207B0D0A2020636F6C6F723A20233632363236323B0D0A7D0D0A2E742D436F6D6D656E74732D636F6D6D656E';
wwv_flow_api.g_varchar2_table(310) := '74207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(311) := '6465722D7261646975733A2032707820327078203020303B0D0A2020626F726465722D636F6C6F723A20236532653165323B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F3A6166746572207B0D0A20';
wwv_flow_api.g_varchar2_table(312) := '20626F726465722D636F6C6F723A2072676261283234382C203234382C203234382C2030293B0D0A2020626F726465722D72696768742D636F6C6F723A20236662666266623B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D';
wwv_flow_api.g_varchar2_table(313) := '656E74732D696E666F3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2072676261283233322C203233322C203233322C2030293B0D0A2020626F726465722D72696768742D636F6C6F723A20236532653165323B0D0A7D0D0A2E742D43';
wwv_flow_api.g_varchar2_table(314) := '6F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A2020';
wwv_flow_api.g_varchar2_table(315) := '626F726465722D636F6C6F723A20236532653165323B0D0A7D0D0A2E742D436F6E66696750616E656C2D61626F7574207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663765303B0D0A2020636F6C6F723A20233536353635363B0D0A';
wwv_flow_api.g_varchar2_table(316) := '7D0D0A2E742D436F6E66696750616E656C2D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(317) := '742D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64697361626C6564207B0D';
wwv_flow_api.g_varchar2_table(318) := '0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0D0A7D0D0A2E742D436F6E66696750616E656C2D73657474696E672C0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A2023363936393639';
wwv_flow_api.g_varchar2_table(319) := '3B0D0A7D0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0D0A2020636F6C6F723A20233639363936393B0D0A7D';
wwv_flow_api.g_varchar2_table(320) := '0D0A2E742D436F6E66696750616E656C2D617474724C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D436F6E66696750616E656C2D6174747256';
wwv_flow_api.g_varchar2_table(321) := '616C7565207B0D0A2020636F6C6F723A20236666623336643B0D0A7D0D0A0D0A2E742D4469616C6F67526567696F6E2D626F6479207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E7428236635663566';
wwv_flow_api.g_varchar2_table(322) := '35203330252C2023663566356635292C202D7765626B69742D6C696E6561722D6772616469656E7428236635663566352C20236635663566352037302529203020313030252C202D7765626B69742D6C696E6561722D6772616469656E74287267626128';
wwv_flow_api.g_varchar2_table(323) := '302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E303529293B0D0A';
wwv_flow_api.g_varchar2_table(324) := '20206261636B67726F756E643A202D6F2D6C696E6561722D6772616469656E742823663566356635203330252C2023663566356635292C202D6F2D6C696E6561722D6772616469656E7428236635663566352C2023663566356635203730252920302031';
wwv_flow_api.g_varchar2_table(325) := '3030252C202D6F2D6C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C202D6F2D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C';
wwv_flow_api.g_varchar2_table(326) := '207267626128302C20302C20302C20302E303529293B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823663566356635203330252C2023663566356635292C206C696E6561722D6772616469656E742823663566356635';
wwv_flow_api.g_varchar2_table(327) := '2C20236635663566352037302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128';
wwv_flow_api.g_varchar2_table(328) := '302C20302C20302C2030292C207267626128302C20302C20302C20302E30352929203020313030253B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A0D0A2E742D466F6F7465722C0D0A2E742D466F6F74657220';
wwv_flow_api.g_varchar2_table(329) := '61207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E65723A6265666F7265207B0D0A2020636F6C6F723A20233239323932393B0D0A7D0D0A2E742D466F726D2D6669656C642C0D0A2E74';
wwv_flow_api.g_varchar2_table(330) := '2D466F726D2D73656C6563742C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D2C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C';
wwv_flow_api.g_varchar2_table(331) := '0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F2C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642C0D0A2E742D466F726D2D696E707574436F6E74';
wwv_flow_api.g_varchar2_table(332) := '61696E657220696E7075742E70617373776F72642C0D0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265612C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E6461746570';
wwv_flow_api.g_varchar2_table(333) := '69636B65722C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C792C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762C0D0A2E742D466F726D2D';
wwv_flow_api.g_varchar2_table(334) := '696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D2C0D0A2E742D466F726D2D74657874617265612C0D0A2E752D54462D6974656D2D2D746578742C0D0A2E752D54462D6974656D2D2D74657874617265612C0D0A2E752D5446';
wwv_flow_api.g_varchar2_table(335) := '2D6974656D2D2D646174657069636B65722C0D0A2E752D54462D6974656D2D2D73656C656374207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020636F6C6F723A20233239323932393B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(336) := '6F723A20236538653865383B0D0A2020626F726465722D636F6C6F723A20236366636563663B0D0A7D0D0A2E742D466F726D2D6669656C643A666F6375732C0D0A2E742D466F726D2D73656C6563743A666F6375732C0D0A2E742D466F726D2D696E7075';
wwv_flow_api.g_varchar2_table(337) := '74436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A666F6375732C0D0A2E742D466F726D2D696E707574';
wwv_flow_api.g_varchar2_table(338) := '436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E';
wwv_flow_api.g_varchar2_table(339) := '657220696E7075742E70617373776F72643A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E';
wwv_flow_api.g_varchar2_table(340) := '7075742E646174657069636B65723A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E707574';
wwv_flow_api.g_varchar2_table(341) := '2E706F7075705F6C6F763A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F6375732C0D0A2E742D466F726D2D74657874617265613A666F6375732C0D0A2E752D54462D6974';
wwv_flow_api.g_varchar2_table(342) := '656D2D2D746578743A666F6375732C0D0A2E752D54462D6974656D2D2D74657874617265613A666F6375732C0D0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375732C0D0A2E752D54462D6974656D2D2D73656C6563743A666F6375';
wwv_flow_api.g_varchar2_table(343) := '73207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A2020626F726465722D636F6C6F723A20236666626237632021696D706F7274616E743B0D0A7D0D0A2E742D466F726D2D6669656C643A';
wwv_flow_api.g_varchar2_table(344) := '666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D73656C6563743A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F637573';
wwv_flow_api.g_varchar2_table(345) := '3A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C';
wwv_flow_api.g_varchar2_table(346) := '6563742E7965735F6E6F3A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E70';
wwv_flow_api.g_varchar2_table(347) := '7574436F6E7461696E657220696E7075742E70617373776F72643A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A666F6375733A3A2D6D732D7661';
wwv_flow_api.g_varchar2_table(348) := '6C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C6179';
wwv_flow_api.g_varchar2_table(349) := '5F6F6E6C793A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E74';
wwv_flow_api.g_varchar2_table(350) := '61696E65722073656C6563745B6D756C7469706C655D3A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0D0A2E752D54462D6974656D2D2D746578743A666F637573';
wwv_flow_api.g_varchar2_table(351) := '3A3A2D6D732D76616C75652C0D0A2E752D54462D6974656D2D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0D0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0D0A2E752D54';
wwv_flow_api.g_varchar2_table(352) := '462D6974656D2D2D73656C6563743A666F6375733A3A2D6D732D76616C7565207B0D0A2020636F6C6F723A20233239323932393B0D0A20200D0A7D0D0A2E742D466F726D2D6669656C643A686F7665722C0D0A2E742D466F726D2D73656C6563743A686F';
wwv_flow_api.g_varchar2_table(353) := '7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A686F76';
wwv_flow_api.g_varchar2_table(354) := '65722C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A686F7665722C0D0A2E74';
wwv_flow_api.g_varchar2_table(355) := '2D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A686F7665722C0D0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(356) := '2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A686F7665722C0D0A2E742D466F726D2D696E';
wwv_flow_api.g_varchar2_table(357) := '707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A686F7665722C0D0A2E742D466F726D2D74657874617265';
wwv_flow_api.g_varchar2_table(358) := '613A686F7665722C0D0A2E752D54462D6974656D2D2D746578743A686F7665722C0D0A2E752D54462D6974656D2D2D74657874617265613A686F7665722C0D0A2E752D54462D6974656D2D2D646174657069636B65723A686F7665722C0D0A2E752D5446';
wwv_flow_api.g_varchar2_table(359) := '2D6974656D2D2D73656C6563743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D';
wwv_flow_api.g_varchar2_table(360) := '706C616365686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572';
wwv_flow_api.g_varchar2_table(361) := '207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0D0A202063';
wwv_flow_api.g_varchar2_table(362) := '6F6C6F723A20233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D466F726D20696E7075742E66696C65207B0D0A2020636F6C6F723A20233239323932393B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E';
wwv_flow_api.g_varchar2_table(363) := '6572207370616E2E646973706C61795F6F6E6C79207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D73';
wwv_flow_api.g_varchar2_table(364) := '656C6563742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(365) := '233239323932393B0D0A7D0D0A2E742D466F726D2D6669656C642D2D726561644F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D726164696F4C6162656C2C0D0A2E74';
wwv_flow_api.g_varchar2_table(366) := '2D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162656C2C0D0A2E742D466F726D2D636865636B626F784C6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67';
wwv_flow_api.g_varchar2_table(367) := '726F7570206C6162656C2C0D0A2E742D466F726D2D6C6162656C207B0D0A2020636F6C6F723A20233432343234323B0D0A7D0D0A2E742D466F726D2D6572726F72207B0D0A2020636F6C6F723A20234539323032303B0D0A7D0D0A2E742D466F726D2D70';
wwv_flow_api.g_varchar2_table(368) := '6F737454657874207B0D0A2020636F6C6F723A20236332633263323B0D0A7D0D0A2E742D466F726D2D2D73656172636820696E7075742E742D466F726D2D7365617263684669656C64207B0D0A20206261636B67726F756E642D636F6C6F723A20236538';
wwv_flow_api.g_varchar2_table(369) := '653865383B0D0A2020636F6C6F723A20233239323832393B0D0A7D0D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C64207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(370) := '636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C64';
wwv_flow_api.g_varchar2_table(371) := '3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A2020626F726465722D636F6C6F723A20236666626237632021696D706F7274616E743B0D0A7D0D0A2E742D4865726F5265';
wwv_flow_api.g_varchar2_table(372) := '67696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D7765626B69742D696E7075742D706C616365686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061';
wwv_flow_api.g_varchar2_table(373) := '636974793A202E35353B0D0A7D0D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D6D6F7A2D706C616365686F6C646572207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(374) := '233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A2D6D732D696E7075742D706C616365';
wwv_flow_api.g_varchar2_table(375) := '686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E686173446174657069636B65722C0D0A2E742D466F72';
wwv_flow_api.g_varchar2_table(376) := '6D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D746F702D72696768742D7261646975733A20303B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0D';
wwv_flow_api.g_varchar2_table(377) := '0A7D0D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A20303B0D0A202062';
wwv_flow_api.g_varchar2_table(378) := '6F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D';
wwv_flow_api.g_varchar2_table(379) := '0D0A0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B2C0D0A2E742D486561646572202E742D427574746F6E';
wwv_flow_api.g_varchar2_table(380) := '2E742D427574746F6E2D2D6865616465722E69732D6163746976652C0D0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572207B0D0A2020636F6C6F723A2023303030';
wwv_flow_api.g_varchar2_table(381) := '3030303B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0D0A2E742D4865616465';
wwv_flow_api.g_varchar2_table(382) := '72202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865616465723A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C';
wwv_flow_api.g_varchar2_table(383) := '696E6B3A666F6375732C0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202366666533633920696E';
wwv_flow_api.g_varchar2_table(384) := '7365742C2030203020317078203270782072676261283235352C203232372C203230312C20302E3235292021696D706F7274616E743B0D0A7D0D0A2E742D4865616465722D6E6176207B0D0A20206261636B67726F756E642D636F6C6F723A2023666639';
wwv_flow_api.g_varchar2_table(385) := '3333303B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261';
wwv_flow_api.g_varchar2_table(386) := '722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E61';
wwv_flow_api.g_varchar2_table(387) := '2D4D656E752D636F6E74656E74207B0D0A2020626F726465722D746F702D77696474683A20303B0D0A7D0D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0D0A2020626F782D736861646F773A2030203270782036707820726762';
wwv_flow_api.g_varchar2_table(388) := '6128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D4865726F526567696F6E207B0D0A2020';
wwv_flow_api.g_varchar2_table(389) := '6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4865726F526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4865';
wwv_flow_api.g_varchar2_table(390) := '726F526567696F6E2D69636F6E207B0D0A2020626F726465722D7261646975733A203470783B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D4865726F52';
wwv_flow_api.g_varchar2_table(391) := '6567696F6E2D2D6665617475726564207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D4865726F526567696F6E2D2D66656174757265642C0D0A2E742D4865726F526567696F6E2D2D666561';
wwv_flow_api.g_varchar2_table(392) := '7475726564202E742D4865726F526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233336333533363B0D0A7D0D0A0D0A2E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(393) := '3A20236462646264633B0D0A7D0D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0D0A2020636F6C6F723A20233639363936393B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D76616C7565207B0D';
wwv_flow_api.g_varchar2_table(394) := '0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0D0A2020626F726465722D746F702D636F6C6F723A20236562656165623B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(395) := '20236630656666303B0D0A7D0D0A2E612D4952522D66756C6C56696577207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F';
wwv_flow_api.g_varchar2_table(396) := '6C73207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4952522D736F7274576964676574207B0D0A2020626F782D736861646F773A20302032707820347078207267626128302C20302C2030';
wwv_flow_api.g_varchar2_table(397) := '2C20302E31293B0D0A7D0D0A2E612D4952522D746F6F6C626172207B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428236462646264632C2023633263316333293B0D0A2020626F726465722D636F6C6F723A2023613861';
wwv_flow_api.g_varchar2_table(398) := '3761613B0D0A7D0D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A7D0D0A2E612D5265706F72742D70657263656E744368617274207B0D0A20';
wwv_flow_api.g_varchar2_table(399) := '206261636B67726F756E642D636F6C6F723A20233763336330303B0D0A7D0D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0D0A20202D7765626B69742D626F726465722D746F702D72696768742D7261646975733A203070782021';
wwv_flow_api.g_varchar2_table(400) := '696D706F7274616E743B0D0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A20202D6D6F7A2D626F726465722D7261646975732D746F7072696768743A203070';
wwv_flow_api.g_varchar2_table(401) := '78202021696D706F7274616E743B0D0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B0D0A2020626F726465722D746F702D72696768742D7261646975733A20307078202169';
wwv_flow_api.g_varchar2_table(402) := '6D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A7D0D0A2E612D4952522D69636F6E566965775461626C652C0D0A2E612D4952522D636861727456696577';
wwv_flow_api.g_varchar2_table(403) := '2C0D0A2E612D4952522D7069766F74566965772C0D0A2E612D4952522D67726F75704279566965772C0D0A2E612D4952522D64657461696C56696577207B0D0A2020626F726465722D746F702D636F6C6F723A20236562656165623B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(404) := '4952522D746F6F6C6261722D2D73696E676C65526F77207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236536653565363B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(405) := '6630656666303B0D0A2020626F726465722D746F703A2031707820736F6C696420236462646264633B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020236462646264633B0D0A7D0D0A2E612D4952522D6865616465723A';
wwv_flow_api.g_varchar2_table(406) := '686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236538653865383B0D0A7D0D0A2E612D4952522D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236666393333303B0D0A20';
wwv_flow_api.g_varchar2_table(407) := '20626F726465722D626F74746F6D3A206E6F6E653B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652061207B0D0A2020636F6C6F723A20233763336330303B0D0A7D0D0A2E612D4952522D6865616465722E69732D616374697665';
wwv_flow_api.g_varchar2_table(408) := '202E612D4952522D686561646572536F7274207B0D0A2020636F6C6F723A20233763336330303B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E642D636F6C6F723A20236562656165623B0D0A7D0D';
wwv_flow_api.g_varchar2_table(409) := '0A2E612D4952522D7461626C65207472207464207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E612D4952522D7461626C65207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(410) := '636F6C6C617073653A2073657061726174653B0D0A7D0D0A2E612D4952522D7461626C652074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20236565656565663B0D0A7D0D0A2E742D4952522D726567696F6E2D2D';
wwv_flow_api.g_varchar2_table(411) := '6E6F426F7264657273202E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E612D4952522D736F72745769646765742D726F7773207B0D0A2020636F6C6F723A20233030303030303B0D0A2020626F';
wwv_flow_api.g_varchar2_table(412) := '726465722D746F703A2031707820736F6C696420236666393333303B0D0A20206261636B67726F756E643A20236666616536323B0D0A7D0D0A626F6479202E612D4952522D736F72745769646765742D726F77207B0D0A2020636F6C6F723A2023303030';
wwv_flow_api.g_varchar2_table(413) := '3030303B0D0A2020626F782D736861646F773A2030202D3170782030202366663933333020696E7365743B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D73656172636846';
wwv_flow_api.g_varchar2_table(414) := '69656C642C0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A2020636F6C6F723A20233030303030303B0D0A20';
wwv_flow_api.g_varchar2_table(415) := '206261636B67726F756E643A20236666393333303B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F773A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666393333303B0D0A7D0D0A626F6479202E612D4952';
wwv_flow_api.g_varchar2_table(416) := '522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2C0D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F637573207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(417) := '723A207267626128302C20302C20302C20302E39293B0D0A20206261636B67726F756E642D636F6C6F723A20236666393333303B0D0A7D0D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A';
wwv_flow_api.g_varchar2_table(418) := '686F7665722C0D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F6375733A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023666661653632';
wwv_flow_api.g_varchar2_table(419) := '3B0D0A7D0D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666393333303B0D0A7D0D0A2E612D4952522D736F72745769646765742D616374696F6E73';
wwv_flow_api.g_varchar2_table(420) := '2D6974656D207B0D0A2020626F726465722D72696768743A206E6F6E653B0D0A7D0D0A2E612D4952522D736F7274576964676574207B0D0A2020626F726465723A206E6F6E653B0D0A7D0D0A2E612D4952522D7461626C65207464207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(421) := '6465722D6C6566743A2031707820736F6C696420236538653865383B0D0A2020626F726465722D746F703A2031707820736F6C696420236538653865383B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C207B0D0A';
wwv_flow_api.g_varchar2_table(422) := '2020636F6C6F723A207267626128302C20302C20302C20302E39293B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3529';
wwv_flow_api.g_varchar2_table(423) := '3B0D0A7D0D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020327078202366666262376320696E7365743B0D0A7D0D0A2E612D4952522D7365617263682D6669656C643A666F6375';
wwv_flow_api.g_varchar2_table(424) := '73207B0D0A2020626F726465722D636F6C6F723A20236666626237633B0D0A2020626F782D736861646F773A20302030203020317078202366666262376320696E7365742C202D32707820302030202366666262376320696E7365742C20327078203020';
wwv_flow_api.g_varchar2_table(425) := '30202366666262376320696E7365742C203020302032707820302072676261283235352C203138372C203132342C20302E35293B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D652C0D0A2E612D4952522D73696E676C65526F772D7661';
wwv_flow_api.g_varchar2_table(426) := '6C7565207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236536653565363B0D0A2020636F6C6F723A20233336333533363B0D0A7D0D0A2E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(427) := '2D636F6C6F723A20236635663566353B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656465';
wwv_flow_api.g_varchar2_table(428) := '643B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656465643B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73';
wwv_flow_api.g_varchar2_table(429) := '696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653565363B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F766572207B0D0A2020';
wwv_flow_api.g_varchar2_table(430) := '6261636B67726F756E642D636F6C6F723A20236666626237633B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0D0A2E612D4952522D636F6E74726F6C734C6162656C207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(431) := '6F723A20236635663566353B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0D0A20202E69732D6D6178696D697A65642E742D4952522D726567696F6E202E742D6668742D7468';
wwv_flow_api.g_varchar2_table(432) := '656164202E612D4952522D686561646572207B0D0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236462646264633B0D0A20207D0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D6974656D2C0D0A2E742D4C696E6B734C69';
wwv_flow_api.g_varchar2_table(433) := '73742D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236462646264633B0D0A7D0D0A2E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20236366636563663B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B';
wwv_flow_api.g_varchar2_table(434) := '3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236538653865383B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A2030203020302031707820236666626237';
wwv_flow_api.g_varchar2_table(435) := '6320696E7365743B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A20236366636563663B0D0A7D0D0A0D0A2E742D4C696E6B734C';
wwv_flow_api.g_varchar2_table(436) := '6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236562656165623B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D4C696E6B734C6973';
wwv_flow_api.g_varchar2_table(437) := '742D2D73686F774261646765202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236530653065313B0D0A7D0D0A2E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(438) := '4C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(439) := '2D636F6C6F723A20236235623462363B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F76';
wwv_flow_api.g_varchar2_table(440) := '65723A6265666F7265207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F7665';
wwv_flow_api.g_varchar2_table(441) := '72207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B';
wwv_flow_api.g_varchar2_table(442) := '3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0D';
wwv_flow_api.g_varchar2_table(443) := '0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303135292C207267626128302C20302C20302C20302929';
wwv_flow_api.g_varchar2_table(444) := '2C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E30313529293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B';
wwv_flow_api.g_varchar2_table(445) := '734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A20236666626237633B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A626566';
wwv_flow_api.g_varchar2_table(446) := '6F7265207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(447) := '75733A203470783B0D0A7D0D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D4C696E6B734C6973742D2D6163';
wwv_flow_api.g_varchar2_table(448) := '74696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(449) := '3A20233030303030303B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E2C0D0A2E742D4C696E6B734C6973742D2D616374696F';
wwv_flow_api.g_varchar2_table(450) := '6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E';
wwv_flow_api.g_varchar2_table(451) := '6B734C6973742D6261646765207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A0D0A2E742D4C6F67696E2D69636F6E56616C69646174696F6E207B0D0A20206261636B67726F756E643A20233463643936343B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(452) := '77686974653B0D0A7D0D0A626F6479202E742D4C6F67696E2D7469746C65207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D4C6F67696E2D726567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A202366356635';
wwv_flow_api.g_varchar2_table(453) := '66353B0D0A7D0D0A2E742D4C6F67696E2D6C6F676F2E6661207B0D0A2020636F6C6F723A20236666626237633B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E742D';
wwv_flow_api.g_varchar2_table(454) := '50616765426F64792D2D6C6F67696E2C0D0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0D0A202020206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A20207D0D0A7D0D0A0D0A2E742D4D65646961';
wwv_flow_api.g_varchar2_table(455) := '4C6973742D6974656D207B0D0A2020626F726465722D636F6C6F723A20236366636563663B0D0A7D0D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0D0A2020626F726465722D726967';
wwv_flow_api.g_varchar2_table(456) := '68743A2031707820736F6C696420236366636563663B0D0A7D0D0A0D0A612E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20236666623336643B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A';
wwv_flow_api.g_varchar2_table(457) := '686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236562656165623B0D0A2020636F6C6F723A20236666623336643B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0D0A2020626F782D73';
wwv_flow_api.g_varchar2_table(458) := '6861646F773A20302030203020317078202366666262376320696E7365743B0D0A7D0D0A2E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D4D656469614C6973742D62616467';
wwv_flow_api.g_varchar2_table(459) := '652C0D0A2E742D4D656469614C6973742D64657363207B0D0A2020636F6C6F723A20233639363936393B0D0A7D0D0A2E742D4D656469614C6973742D69636F6E207B0D0A2020636F6C6F723A20236366636563663B0D0A7D0D0A2E742D4D656469614C69';
wwv_flow_api.g_varchar2_table(460) := '73742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6265666F72652C0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(461) := '3A20236462646264633B0D0A7D0D0A2E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E612D4D656E754261722D6974656D203E202E612D';
wwv_flow_api.g_varchar2_table(462) := '4D656E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D617267696E2D726967';
wwv_flow_api.g_varchar2_table(463) := '68743A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A7D0D0A2E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E643A20236666383631363B0D0A2020626F726465722D72696768743A2031707820736F';
wwv_flow_api.g_varchar2_table(464) := '6C696420236666613134393B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236666613134393B0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D0D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C';
wwv_flow_api.g_varchar2_table(465) := '64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E754261722E752D72746C202E612D';
wwv_flow_api.g_varchar2_table(466) := '4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020626F726465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E673A2038';
wwv_flow_api.g_varchar2_table(467) := '70782038707820387078203470783B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35';
wwv_flow_api.g_varchar2_table(468) := '293B0D0A7D0D0A2E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666613134393B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206261';
wwv_flow_api.g_varchar2_table(469) := '636B67726F756E642D636F6C6F723A20236666613134393B0D0A7D0D0A0D0A2E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D207B0D0A';
wwv_flow_api.g_varchar2_table(470) := '2020636F6C6F723A20233030303030303B0D0A7D0D0A2E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A20236135613361363B0D0A7D0D0A2E612D4D656E752D2D6375';
wwv_flow_api.g_varchar2_table(471) := '7272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(472) := '642D636F6C6F723A20236265626462663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C';
wwv_flow_api.g_varchar2_table(473) := '207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C20';
wwv_flow_api.g_varchar2_table(474) := '7B0D0A2020636F6C6F723A20233366336633663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(475) := '6B67726F756E642D636F6C6F723A20236666383631363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D65';
wwv_flow_api.g_varchar2_table(476) := '6E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(477) := '6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E65';
wwv_flow_api.g_varchar2_table(478) := '72202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E612D4D656E75202E612D4D65';
wwv_flow_api.g_varchar2_table(479) := '6E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D616363656C207B0D0A';
wwv_flow_api.g_varchar2_table(480) := '2020636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E612D4D656E752D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283139302C203138392C203139312C20302E3935293B0D';
wwv_flow_api.g_varchar2_table(481) := '0A2020626F726465722D636F6C6F723A20236135613361363B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D4D656E75426172207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(482) := '6E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D486561646572202E612D4D656E75426172207B0D0A20206261636B67726F756E642D636F6C6F723A20236666383631363B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D';
wwv_flow_api.g_varchar2_table(483) := '0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233239323832393B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D69';
wwv_flow_api.g_varchar2_table(484) := '74656D203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D';
wwv_flow_api.g_varchar2_table(485) := '617267696E2D72696768743A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E643A20236538653865383B0D0A202062';
wwv_flow_api.g_varchar2_table(486) := '6F726465722D72696768743A2031707820736F6C696420236366636563663B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236366636563663B0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(487) := '6F6E202E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E61';
wwv_flow_api.g_varchar2_table(488) := '2D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A';
wwv_flow_api.g_varchar2_table(489) := '2020626F726465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E673A203870782038707820387078203470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D6469';
wwv_flow_api.g_varchar2_table(490) := '7361626C6564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20726762612834312C2034302C2034312C20302E35293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0D0A2020';
wwv_flow_api.g_varchar2_table(491) := '6261636B67726F756E642D636F6C6F723A20236366636563663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236366636563663B';
wwv_flow_api.g_varchar2_table(492) := '0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(493) := '723A20233033303330333B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A20236138613761613B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(494) := '6F6E202E612D4D656E752D2D63757272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236235623462363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69';
wwv_flow_api.g_varchar2_table(495) := '732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236332633163333B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F637573656420';
wwv_flow_api.g_varchar2_table(496) := '3E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0D0A2020636F6C6F723A20233033303330333B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C';
wwv_flow_api.g_varchar2_table(497) := '65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20233432343234323B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E';
wwv_flow_api.g_varchar2_table(498) := '69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236538653865383B0D0A2020636F6C6F723A202332';
wwv_flow_api.g_varchar2_table(499) := '39323832393B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(500) := '612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69';
wwv_flow_api.g_varchar2_table(501) := '732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(502) := '696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D';
wwv_flow_api.g_varchar2_table(503) := '0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20233239323832393B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(504) := '742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A207267626128332C20332C20332C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A202062';
wwv_flow_api.g_varchar2_table(505) := '61636B67726F756E642D636F6C6F723A2072676261283139342C203139332C203139352C20302E3935293B0D0A2020626F726465722D636F6C6F723A20236138613761613B0D0A2020626F782D736861646F773A20302031707820327078207267626128';
wwv_flow_api.g_varchar2_table(506) := '302C20302C20302C20302E3035293B0D0A7D0D0A0D0A2E742D486561646572207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(507) := '20233030303030303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D486561';
wwv_flow_api.g_varchar2_table(508) := '646572202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666616536322021696D70';
wwv_flow_api.g_varchar2_table(509) := '6F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E6973';
wwv_flow_api.g_varchar2_table(510) := '2D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666616536322021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E61';
wwv_flow_api.g_varchar2_table(511) := '2D4D656E754261722D6C6162656C2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(512) := '3030303030302021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D486561646572202E612D4D65';
wwv_flow_api.g_varchar2_table(513) := '6E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666616536322021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D';
wwv_flow_api.g_varchar2_table(514) := '656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E38293B0D0A2020626F726465722D636F6C6F723A20236666626237633B0D0A';
wwv_flow_api.g_varchar2_table(515) := '2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C';
wwv_flow_api.g_varchar2_table(516) := '202E612D49636F6E2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A202366666435';
wwv_flow_api.g_varchar2_table(517) := '61663B0D0A2020626F726465722D636F6C6F723A20236666643561663B0D0A2020636F6C6F723A20233330313730303B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D';
wwv_flow_api.g_varchar2_table(518) := '4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20236666653363383B0D0A2020626F726465722D636F6C6F723A20236666653363383B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D';
wwv_flow_api.g_varchar2_table(519) := '2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(520) := '636F6C6F723A20233030303030303B0D0A2020636F6C6F723A20236266626662663B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E61';
wwv_flow_api.g_varchar2_table(521) := '2D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236663373930303B0D0A7D0D0A2E742D486561646572202E612D';
wwv_flow_api.g_varchar2_table(522) := '4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236666616536323B0D0A7D0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D20';
wwv_flow_api.g_varchar2_table(523) := '7B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D486561646572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D486561646572202E612D4D';
wwv_flow_api.g_varchar2_table(524) := '656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A2023666661';
wwv_flow_api.g_varchar2_table(525) := '3134392021696D706F7274616E743B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A202330653065';
wwv_flow_api.g_varchar2_table(526) := '30653B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E';
wwv_flow_api.g_varchar2_table(527) := '754261722D6974656D2E69732D666F63757365642C0D0A2E742D426F6479202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236135613361362021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(528) := '2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261';
wwv_flow_api.g_varchar2_table(529) := '636B67726F756E642D636F6C6F723A20236135613361362021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E';
wwv_flow_api.g_varchar2_table(530) := '742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233065306530652021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(531) := '2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D6375727265';
wwv_flow_api.g_varchar2_table(532) := '6E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236135613361362021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D';
wwv_flow_api.g_varchar2_table(533) := '656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20726762612831342C2031342C2031342C20302E38293B0D0A2020626F726465722D636F6C6F723A20236534653465353B0D0A2020626F726465722D7261646975733A20313030253B0D';
wwv_flow_api.g_varchar2_table(534) := '0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D426F6479202E612D4D656E';
wwv_flow_api.g_varchar2_table(535) := '754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233765376338303B0D0A2020626F726465722D636F6C6F723A20233765376338';
wwv_flow_api.g_varchar2_table(536) := '303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020';
wwv_flow_api.g_varchar2_table(537) := '636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E20';
wwv_flow_api.g_varchar2_table(538) := '2E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233065306530653B0D0A2020626F726465722D636F6C6F723A20233065306530653B0D0A2020636F6C6F723A202363646364';
wwv_flow_api.g_varchar2_table(539) := '63643B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(540) := '6666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236135613361363B0D0A7D0D0A2E742D426F6479202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D';
wwv_flow_api.g_varchar2_table(541) := '0A20206261636B67726F756E642D636F6C6F723A20236135613361363B0D0A7D0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20233065306530653B0D0A7D0D0A2E742D426F6479202E612D4D';
wwv_flow_api.g_varchar2_table(542) := '656E752D616363656C207B0D0A2020636F6C6F723A20726762612831342C2031342C2031342C20302E3735293B0D0A7D0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D426F647920';
wwv_flow_api.g_varchar2_table(543) := '2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236231623062322021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E75426172203E';
wwv_flow_api.g_varchar2_table(544) := '20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236462646264633B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D636F6C6F723A20236135613361363B0D0A7D0D0A2E742D42';
wwv_flow_api.g_varchar2_table(545) := '6F6479202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(546) := '2D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233336333633363B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D20';
wwv_flow_api.g_varchar2_table(547) := '7B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572';
wwv_flow_api.g_varchar2_table(548) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236462646264632021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(549) := '6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236462646264632021696D706F7274616E743B0D0A7D0D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(550) := '6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F';
wwv_flow_api.g_varchar2_table(551) := '6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233336333633362021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261';
wwv_flow_api.g_varchar2_table(552) := '722D6974656D2E69732D657870616E6465642C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A202364';
wwv_flow_api.g_varchar2_table(553) := '62646264632021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20726762612835342C203534';
wwv_flow_api.g_varchar2_table(554) := '2C2035342C20302E38293B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D';
wwv_flow_api.g_varchar2_table(555) := '63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F76';
wwv_flow_api.g_varchar2_table(556) := '6572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236235623462363B0D0A2020626F726465722D636F6C6F723A20236235623462363B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(557) := '6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(558) := '20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A';
wwv_flow_api.g_varchar2_table(559) := '20206261636B67726F756E642D636F6C6F723A20233336333633363B0D0A2020626F726465722D636F6C6F723A20233336333633363B0D0A2020636F6C6F723A20236635663566353B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D69';
wwv_flow_api.g_varchar2_table(560) := '74656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(561) := '663B0D0A2020636F6C6F723A20236462646264633B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A202364626462';
wwv_flow_api.g_varchar2_table(562) := '64633B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(563) := '726762612835342C2035342C2035342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974';
wwv_flow_api.g_varchar2_table(564) := '656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236538653865382021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75426172203E20756C207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(565) := '756E642D636F6C6F723A20236462646264633B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D636F6C6F723A20236462646264633B0D0A7D0D0A2E742D526567696F6E202E612D4D656E7542';
wwv_flow_api.g_varchar2_table(566) := '61722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20';
wwv_flow_api.g_varchar2_table(567) := '303B0D0A20206261636B67726F756E642D636F6C6F723A20236666616536323B0D0A7D0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D4865616465722D757365724D656E75';
wwv_flow_api.g_varchar2_table(568) := '202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666613134392021696D706F7274616E743B0D0A7D0D0A2E742D4865616465722D757365724D656E752E612D4D656E75202E';
wwv_flow_api.g_varchar2_table(569) := '612D4D656E752D6974656D202E612D4D656E752D6C6162656C207B0D0A2020636F6C6F723A20233030303030303B0D0A20202D7765626B69742D666F6E742D736D6F6F7468696E673A20616E7469616C69617365643B0D0A7D0D0A0D0A2E742D4E617669';
wwv_flow_api.g_varchar2_table(570) := '676174696F6E4261722D6D656E75202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236666383631363B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(571) := '6465722D77696474683A20303B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D';
wwv_flow_api.g_varchar2_table(572) := '2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666613134392021696D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F';
wwv_flow_api.g_varchar2_table(573) := '6375736564203E202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(574) := '6666666666662021696D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D65';
wwv_flow_api.g_varchar2_table(575) := '6E75202E612D4D656E752D6974656D20612C0D0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0D0A2020636F6C6F723A202330303030303020';
wwv_flow_api.g_varchar2_table(576) := '21696D706F7274616E743B0D0A7D0D0A0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666623336643B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(577) := '742D506F7075704C4F562D726573756C74735365742074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0D0A7D0D0A2E742D506F7075704C4F562D726573756C7473';
wwv_flow_api.g_varchar2_table(578) := '5365742074723A6E74682D6368696C6428326E29207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234641464146413B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0D0A2E75692D776964676574';
wwv_flow_api.g_varchar2_table(579) := '2D636F6E74656E7420612E742D506F7075704C4F562D726573756C74735365742D6C696E6B207B0D0A2020636F6C6F723A20236666623336643B0D0A7D0D0A2E742D506167652D2D706F7075704C4F56207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(580) := '6F723A20234646463B0D0A7D0D0A2E742D506F7075704C4F562D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20236265626462663B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B732061207B0D';
wwv_flow_api.g_varchar2_table(581) := '0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F';
wwv_flow_api.g_varchar2_table(582) := '7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D6C696E6B7320612C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D';
wwv_flow_api.g_varchar2_table(583) := '6C696E6B732061207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666393933613B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(584) := '20233030303030303B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233366336633663B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D70616769';
wwv_flow_api.g_varchar2_table(585) := '6E6174696F6E207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(586) := '6F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233735373537353B0D0A7D0D0A0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(587) := '696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D426F6479202E6669656C64646174612062207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D7469746C6520';
wwv_flow_api.g_varchar2_table(588) := '2E6669656C64646174612062207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E6669656C64646174612062207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(589) := '6669656C646461746120622C0D0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(590) := '2D636F6C6F723A20236332633163333B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236138613761613B0D0A7D0D0A2E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(591) := '6F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0D0A2020636F6C6F723A20233033303330333B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(592) := '207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2D2D737461636B6564207B0D0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E2D2D737461636B6564203E202E742D52';
wwv_flow_api.g_varchar2_table(593) := '6567696F6E2D686561646572207B0D0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(594) := '726F756E642D636F6C6F723A20236635663566353B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236462646264633B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D6865616465';
wwv_flow_api.g_varchar2_table(595) := '72202E742D526567696F6E2D7469746C652C0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(596) := '2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D6865616465722C0D0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0D0A';
wwv_flow_api.g_varchar2_table(597) := '20206261636B67726F756E642D636F6C6F723A20236666326435353B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666363037653B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(598) := '2D686561646572202E742D526567696F6E2D7469746C652C0D0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0D';
wwv_flow_api.g_varchar2_table(599) := '0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D';
wwv_flow_api.g_varchar2_table(600) := '526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D6865616465722C0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(601) := '67696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0D0A2020626F726465722D626F74746F6D';
wwv_flow_api.g_varchar2_table(602) := '3A2031707820736F6C696420233333393566663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0D0A2E742D526567696F6E2D2D616363656E74322E';
wwv_flow_api.g_varchar2_table(603) := '742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574';
wwv_flow_api.g_varchar2_table(604) := '746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(605) := '666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D6865616465722C0D0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(606) := '686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666616133333B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7433203E';
wwv_flow_api.g_varchar2_table(607) := '202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0D0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D52656769';
wwv_flow_api.g_varchar2_table(608) := '6F6E2D7469746C652C0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F';
wwv_flow_api.g_varchar2_table(609) := '72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(610) := '65722C0D0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(611) := '6465722D626F74746F6D3A2031707820736F6C696420233261633834353B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(612) := '2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561';
wwv_flow_api.g_varchar2_table(613) := '646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0D0A2020';
wwv_flow_api.g_varchar2_table(614) := '636F6C6F723A20233037316630623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D6865616465722C0D0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E20';
wwv_flow_api.g_varchar2_table(615) := '2E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236138613861633B0D0A7D0D0A2E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(616) := '2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0D0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(617) := '6572202E742D526567696F6E2D7469746C652C0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74352E742D5265';
wwv_flow_api.g_varchar2_table(618) := '67696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D686561646572207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(619) := '6465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E2068322E';
wwv_flow_api.g_varchar2_table(620) := '742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233033303330333B0D0A7D0D0A2E742D526567696F6E2D626F6479207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D526567696F6E2D2D6869646553686F772E';
wwv_flow_api.g_varchar2_table(621) := '69732D636F6C6C6170736564207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2D2D7363726F6C6C426F6479203E202E742D526567696F6E2D626F647957726170203E';
wwv_flow_api.g_varchar2_table(622) := '202E742D526567696F6E2D626F6479207B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823663566356635203330252C2072676261283234352C203234352C203234352C203029292C206C696E6561722D677261646965';
wwv_flow_api.g_varchar2_table(623) := '6E742872676261283234352C203234352C203234352C2030292C20236635663566352037302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303235292C207267626128302C20302C20302C20';
wwv_flow_api.g_varchar2_table(624) := '3029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A';
wwv_flow_api.g_varchar2_table(625) := '7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D6865616465';
wwv_flow_api.g_varchar2_table(626) := '72207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D73696465202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B';
wwv_flow_api.g_varchar2_table(627) := '0D0A7D0D0A2E742D526567696F6E2C0D0A2E742D526567696F6E2D686561646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E2D2D6E6F4247207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(628) := '3A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2D2D6361726F';
wwv_flow_api.g_varchar2_table(629) := '7573656C202E617065782D7264732D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(630) := '3A207267626128302C20302C20302C20302E3235293B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A686F766572207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(631) := '642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A6163746976652C0D0A2E742D526567696F6E2D2D6361726F7573656C202E';
wwv_flow_api.g_varchar2_table(632) := '617065782D7264732D627574746F6E3A6163746976653A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E6170';
wwv_flow_api.g_varchar2_table(633) := '65782D7264732D6E6578742D726567696F6E207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D70726576696F75732D726567696F';
wwv_flow_api.g_varchar2_table(634) := '6E207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D7264732D73656C656374';
wwv_flow_api.g_varchar2_table(635) := '6564202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3435293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567';
wwv_flow_api.g_varchar2_table(636) := '696F6E2D6361726F7573656C4E61764974656D2E617065782D7264732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A';
wwv_flow_api.g_varchar2_table(637) := '7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(638) := '7261646975733A20313030253B0D0A7D0D0A0D0A2E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D636F6C48656164207B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236462646264633B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(639) := '722D746F703A2031707820736F6C696420236462646264633B0D0A7D0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0D0A2E742D5265706F72742D7265706F7274207472202E74';
wwv_flow_api.g_varchar2_table(640) := '2D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0D0A2020626F726465722D72696768743A2031707820736F6C696420236462646264633B0D0A7D0D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C6420';
wwv_flow_api.g_varchar2_table(641) := '2E742D5265706F72742D63656C6C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236462646264633B0D0A7D0D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0D0A20';
wwv_flow_api.g_varchar2_table(642) := '206261636B67726F756E642D636F6C6F723A20236538653865383B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236462646264633B0D0A7D0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F';
wwv_flow_api.g_varchar2_table(643) := '72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572';
wwv_flow_api.g_varchar2_table(644) := '202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236630656666302021696D706F7274616E743B0D0A7D0D0A2E742D5265706F72742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D';
wwv_flow_api.g_varchar2_table(645) := '7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E742D5265706F72742D2D616C74526F7773';
wwv_flow_api.g_varchar2_table(646) := '44656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A0D0A2E742D52';
wwv_flow_api.g_varchar2_table(647) := '65706F72742D706167696E6174696F6E5465787420622C0D0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(648) := '233030303030303B0D0A7D0D0A2E742D536F6369616C466F6F746572207B0D0A202070616464696E672D746F703A20343870783B0D0A202070616464696E672D626F74746F6D3A20323470783B0D0A7D0D0A2E742D536F6369616C466F6F746572202E72';
wwv_flow_api.g_varchar2_table(649) := '6F77207B0D0A202070616464696E672D746F703A203870783B0D0A7D0D0A2E742D536F6369616C466F6F746572202E636F6C207B0D0A202070616464696E672D626F74746F6D3A203870783B0D0A2020746578742D616C69676E3A2063656E7465723B0D';
wwv_flow_api.g_varchar2_table(650) := '0A20207472616E736974696F6E3A20616C6C202E32733B0D0A7D0D0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A2020';
wwv_flow_api.g_varchar2_table(651) := '2D6D6F7A2D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6F2D7472616E73666F726D3A207472616E736C61746559282D38';
wwv_flow_api.g_varchar2_table(652) := '7078293B0D0A20207472616E73666F726D3A207472616E736C61746559282D387078293B0D0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D536F63';
wwv_flow_api.g_varchar2_table(653) := '69616C466F6F7465722061207B0D0A20207472616E736974696F6E3A20616C6C202E32733B0D0A2020646973706C61793A20626C6F636B3B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A2020746578742D616C69676E3A206365';
wwv_flow_api.g_varchar2_table(654) := '6E7465723B0D0A2020636F6C6F723A20726762612831342C2031342C2031342C20302E38293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0D0A2020646973706C61793A20626C6F636B3B0D0A20206D617267696E3A';
wwv_flow_api.g_varchar2_table(655) := '2030206175746F3B0D0A2020636F6C6F723A20726762612831342C2031342C2031342C20302E34293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E6661207B0D0A2020666F6E742D73697A653A20323870783B0D0A202077696474683A20';
wwv_flow_api.g_varchar2_table(656) := '333270783B0D0A20206865696768743A20333270783B0D0A20206C696E652D6865696768743A20333270783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E207B0D';
wwv_flow_api.g_varchar2_table(657) := '0A202077696474683A20333270783B0D0A20206865696768743A20333270783B0D0A20206C696E652D6865696768743A20333270783B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A6265666F7265207B0D0A2020666F6E';
wwv_flow_api.g_varchar2_table(658) := '742D73697A653A20333270783B0D0A7D0D0A2E742D536F6369616C466F6F74657220613A686F7665722C0D0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0D0A2020636F6C6F723A20236666623336643B0D0A7D0D';
wwv_flow_api.g_varchar2_table(659) := '0A2E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233332333233323B0D0A7D0D0A2E742D5365';
wwv_flow_api.g_varchar2_table(660) := '61726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20233332333233323B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(661) := '742D526567696F6E202E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233639363936393B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(662) := '233639363936393B0D0A7D0D0A2E742D5374617475734C6973742D626C6F636B486561646572207B0D0A2020636F6C6F723A20233336333633363B0D0A20206261636B67726F756E642D636F6C6F723A20236332633163333B0D0A7D0D0A2E742D537461';
wwv_flow_api.g_varchar2_table(663) := '7475734C6973742D68656164657254657874416C742C0D0A2E742D5374617475734C6973742D617474722C0D0A2E742D5374617475734C6973742D7465787444657363207B0D0A2020636F6C6F723A20233639363936393B0D0A7D0D0A2E742D53746174';
wwv_flow_api.g_varchar2_table(664) := '75734C6973742D6974656D5469746C65207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B6572207B0D0A2020636F6C6F723A2023373037';
wwv_flow_api.g_varchar2_table(665) := '3037303B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B6572';
wwv_flow_api.g_varchar2_table(666) := '3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D';
wwv_flow_api.g_varchar2_table(667) := '5374617475734C6973742D6D61726B6572207B0D0A2020626F726465722D7261646975733A20323470783B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D537461';
wwv_flow_api.g_varchar2_table(668) := '7475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233730373037303B';
wwv_flow_api.g_varchar2_table(669) := '0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475734C6973742D6D61726B65722C0D0A2E742D5374617475734C6973742D2D62756C6C65';
wwv_flow_api.g_varchar2_table(670) := '7473202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A2E742D5374617475734C6973';
wwv_flow_api.g_varchar2_table(671) := '742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A2E742D5374';
wwv_flow_api.g_varchar2_table(672) := '617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B';
wwv_flow_api.g_varchar2_table(673) := '0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(674) := '4630463046303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A2020636F6C6F723A202341304130';
wwv_flow_api.g_varchar2_table(675) := '41303B0D0A7D0D0A0D0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B2C0D0A2E617065782D726473202E617065782D7264732D73656C65637465642061207B0D0A2020';
wwv_flow_api.g_varchar2_table(676) := '626F782D736861646F773A2030202D3270782030202366666630653220696E7365743B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F6375732C0D0A2E617065782D72647320613A666F637573207B0D0A2020';
wwv_flow_api.g_varchar2_table(677) := '626F782D736861646F773A20302030203020327078202366666630653220696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C207B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428236265626462662C20236634';
wwv_flow_api.g_varchar2_table(678) := '66346634293B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D426F6479202E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020636F6C6F723A20233366336633663B0D0A7D0D0A2E742D426F64792D746974';
wwv_flow_api.g_varchar2_table(679) := '6C65202E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020636F6C6F723A20233830';
wwv_flow_api.g_varchar2_table(680) := '383038303B0D0A7D0D0A2E742D526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E2C0D0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020636F6C6F723A20233735373537';
wwv_flow_api.g_varchar2_table(681) := '353B0D0A7D0D0A2E742D426F6479202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D7469746C65202E742D546162732D2D70696C6C202E742D5461';
wwv_flow_api.g_varchar2_table(682) := '62732D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(683) := '2D526567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C696E6B2C0D0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233336333633363B';
wwv_flow_api.g_varchar2_table(684) := '0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F';
wwv_flow_api.g_varchar2_table(685) := '637573207B0D0A2020626F726465722D636F6C6F723A20233436393646433B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A2023463046304630';
wwv_flow_api.g_varchar2_table(686) := '3B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A66697273742D6368696C64202E742D546162732D6C696E6B207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D5461';
wwv_flow_api.g_varchar2_table(687) := '62732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D49636F';
wwv_flow_api.g_varchar2_table(688) := '6E207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0D0A2E617065782D7264732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D5461';
wwv_flow_api.g_varchar2_table(689) := '62732D2D73696D706C65202E742D546162732D6C696E6B3A686F7665722C0D0A2E617065782D72647320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(690) := '742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A6163746976652C0D0A2E617065782D72647320613A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D';
wwv_flow_api.g_varchar2_table(691) := '0A7D0D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0D0A2E742D426F6479202E617065782D7264732061207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D7469746C';
wwv_flow_api.g_varchar2_table(692) := '65202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0D0A2E742D426F64792D7469746C65202E617065782D72647320612C0D0A2E742D426F64792D696E666F202E742D546162732D2D73696D706C65202E742D546162732D6C69';
wwv_flow_api.g_varchar2_table(693) := '6E6B2C0D0A2E742D426F64792D696E666F202E617065782D7264732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0D0A2E742D52';
wwv_flow_api.g_varchar2_table(694) := '6567696F6E202E617065782D7264732061207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E617065782D7264732D686F7665722E6C6566742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772';
wwv_flow_api.g_varchar2_table(695) := '616469656E74286C6566742C2023666666666666203530252C2072676261283235352C203235352C203235352C2030292031303025293B0D0A20200D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C';
wwv_flow_api.g_varchar2_table(696) := '2023666666666666203530252C2072676261283235352C203235352C203235352C2030292031303025293B0D0A20200D0A7D0D0A2E617065782D7264732D686F7665722E72696768742061207B0D0A20206261636B67726F756E643A202D7765626B6974';
wwv_flow_api.g_varchar2_table(697) := '2D6C696E6561722D6772616469656E74286C6566742C20236666666666662030252C2072676261283235352C203235352C203235352C2030292031252C202366666666666620353025293B0D0A20200D0A20206261636B67726F756E643A206C696E6561';
wwv_flow_api.g_varchar2_table(698) := '722D6772616469656E7428746F2072696768742C20236666666666662030252C2072676261283235352C203235352C203235352C2030292031252C202366666666666620353025293B0D0A20200D0A7D0D0A0D0A2E612D546167436C6F75642D6C696E6B';
wwv_flow_api.g_varchar2_table(699) := '207B0D0A2020626F726465722D636F6C6F723A20236538653865383B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E643A20236630656666303B0D0A20207472616E736974696F6E3A206261636B67726F756E';
wwv_flow_api.g_varchar2_table(700) := '642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F7220302E32733B0D0A2020636F6C6F723A20236666623036383B0D0A7D0D0A2E612D546167436C6F75642D6C696E';
wwv_flow_api.g_varchar2_table(701) := '6B207370616E207B0D0A20207472616E736974696F6E3A20636F6C6F72202E32733B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(702) := '756E642D636F6C6F723A20236666626237633B0D0A2020626F726465722D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030303B0D0A2020626F782D736861646F773A20302030203020327078202366666262376320696E';
wwv_flow_api.g_varchar2_table(703) := '7365743B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E612D546167436C6F75642D636F756E74207B0D0A2020636F6C6F723A20233563356335633B';
wwv_flow_api.g_varchar2_table(704) := '0D0A2020666F6E742D7765696768743A203230303B0D0A7D0D0A2E742D54696D656C696E65207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D54696D656C696E652D757365726E616D652C0D0A2E742D54696D656C696E652D6461';
wwv_flow_api.g_varchar2_table(705) := '74652C0D0A2E742D54696D656C696E652D64657363207B0D0A2020636F6C6F723A20233639363936393B0D0A7D0D0A2E742D54696D656C696E652D77726170207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D54696D656C696E65';
wwv_flow_api.g_varchar2_table(706) := '2D74797065207B0D0A20206261636B67726F756E642D636F6C6F723A20236238623762393B0D0A2020636F6C6F723A20233033303330333B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(707) := '2D636F6C6F723A20233463643936343B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D75706461746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0D0A2020';
wwv_flow_api.g_varchar2_table(708) := '636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D72656D6F766564207B0D0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(709) := '54696D656C696E652D777261703A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202366666262376320696E7365743B0D0A7D0D0A2E742D50616765426F64792D2D6C6566';
wwv_flow_api.g_varchar2_table(710) := '744E6176202E742D426F64792D6E6176207B0D0A20206261636B67726F756E642D636F6C6F723A20236666393333303B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(711) := '2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202364656464646520696E7365743B0D0A7D0D0A2E742D526567696F6E202E612D54726565';
wwv_flow_api.g_varchar2_table(712) := '566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F';
wwv_flow_api.g_varchar2_table(713) := '772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A';
wwv_flow_api.g_varchar2_table(714) := '20206261636B67726F756E642D636F6C6F723A20236564656465643B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F';
wwv_flow_api.g_varchar2_table(715) := '702C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F';
wwv_flow_api.g_varchar2_table(716) := '64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(717) := '2D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653565362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(718) := '2D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E61';
wwv_flow_api.g_varchar2_table(719) := '2D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612835342C2035342C2035342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265';
wwv_flow_api.g_varchar2_table(720) := '65566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C6520';
wwv_flow_api.g_varchar2_table(721) := '2E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233336333633362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(722) := '2D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20233336333633362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20';
wwv_flow_api.g_varchar2_table(723) := '2E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E';
wwv_flow_api.g_varchar2_table(724) := '74202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20726762612835342C2035342C203534';
wwv_flow_api.g_varchar2_table(725) := '2C20302E3935293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D526567696F6E202E612D5472';
wwv_flow_api.g_varchar2_table(726) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_api.g_varchar2_table(727) := '202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D';
wwv_flow_api.g_varchar2_table(728) := '63757272656E742D2D746F70202E612D49636F6E207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C';
wwv_flow_api.g_varchar2_table(729) := '207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D52';
wwv_flow_api.g_varchar2_table(730) := '6567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_api.g_varchar2_table(731) := '76656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_api.g_varchar2_table(732) := '6C202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612835342C2035342C2035342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(733) := '2D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233336333633362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54';
wwv_flow_api.g_varchar2_table(734) := '726565566965772D726F77207B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C';
wwv_flow_api.g_varchar2_table(735) := '61707369626C65203E202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D547265';
wwv_flow_api.g_varchar2_table(736) := '65566965772D726F772E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236564656465643B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472';
wwv_flow_api.g_varchar2_table(737) := '6565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202366663936333520696E7365743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(738) := '4C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C6563746564';
wwv_flow_api.g_varchar2_table(739) := '2C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(740) := '2D636F6C6F723A20236666613635333B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D54726565';
wwv_flow_api.g_varchar2_table(741) := '4E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_api.g_varchar2_table(742) := '76656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236666616536323B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D';
wwv_flow_api.g_varchar2_table(743) := '686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666396534342021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265655669';
wwv_flow_api.g_varchar2_table(744) := '65772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D5472656556';
wwv_flow_api.g_varchar2_table(745) := '6965772D746F67676C65207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F';
wwv_flow_api.g_varchar2_table(746) := '772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565';
wwv_flow_api.g_varchar2_table(747) := '566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556';
wwv_flow_api.g_varchar2_table(748) := '6965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472';
wwv_flow_api.g_varchar2_table(749) := '6565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66';
wwv_flow_api.g_varchar2_table(750) := '612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D5472';
wwv_flow_api.g_varchar2_table(751) := '65654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(752) := '4C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F';
wwv_flow_api.g_varchar2_table(753) := '6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E';
wwv_flow_api.g_varchar2_table(754) := '612D49636F6E207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(755) := '696E68657269743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D547265654E6176202E612D5472';
wwv_flow_api.g_varchar2_table(756) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265';
wwv_flow_api.g_varchar2_table(757) := '65566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(758) := '566965772D746F67676C65207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D74';
wwv_flow_api.g_varchar2_table(759) := '6F67676C653A686F766572207B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F';
wwv_flow_api.g_varchar2_table(760) := '77207B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E';
wwv_flow_api.g_varchar2_table(761) := '612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E61';
wwv_flow_api.g_varchar2_table(762) := '2D49636F6E207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74';
wwv_flow_api.g_varchar2_table(763) := '656E74207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A0D0A2E742D4469616C6F672D2D77697A617264207B0D0A2020626F726465723A20236462646264633B0D0A7D0D0A2E742D57697A617264207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(764) := '2D636F6C6F723A20236635663566353B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A626F647920';
wwv_flow_api.g_varchar2_table(765) := '2E742D57697A6172642D2D6D6F64616C207B0D0A20206261636B67726F756E643A20236635663566353B0D0A7D0D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D57697A6172642D626F6479207B0D0A20206261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(766) := '206C696E6561722D6772616469656E742823663566356635203430252C2072676261283234352C203234352C203234352C203029292C206C696E6561722D6772616469656E742872676261283234352C203234352C203234352C2030292C202366356635';
wwv_flow_api.g_varchar2_table(767) := '66352036302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303235292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20';
wwv_flow_api.g_varchar2_table(768) := '302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D52656769';
wwv_flow_api.g_varchar2_table(769) := '6F6E207B0D0A20206261636B67726F756E643A20236635663566353B0D0A7D0D0A2E742D57697A617264207B0D0A2020626F726465722D636F6C6F723A20236462646264633B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D6865616465';
wwv_flow_api.g_varchar2_table(770) := '72207B0D0A20206261636B67726F756E642D636F6C6F723A20236630656666303B0D0A2020626F726465722D636F6C6F723A20236533653365333B0D0A7D0D0A2E742D57697A61726453746570732D777261703A6166746572207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(771) := '726F756E642D636F6C6F723A20236462646264633B0D0A7D0D0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236332633163333B0D';
wwv_flow_api.g_varchar2_table(772) := '0A7D0D0A2E742D57697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(773) := '234646463B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(774) := '2D57697A61726453746570732D6C6162656C207B0D0A2020636F6C6F723A20233563356335633B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6C6162656C207B0D0A2020';
wwv_flow_api.g_varchar2_table(775) := '636F6C6F723A20233336333633363B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(776) := '6465722D626F74746F6D2D6C6566742D7261646975733A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236265626462663B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A202063';
wwv_flow_api.g_varchar2_table(777) := '6F6C6F723A20233030303030303B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(778) := '6469616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0D0A2020626F726465722D746F702D636F6C6F723A20234630463046303B0D0A7D0D0A0D0A626F6479202E75692D7769646765742D636F6E74656E74207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(779) := '65722D636F6C6F723A20236530653065313B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74656E742061207B0D';
wwv_flow_api.g_varchar2_table(780) := '0A2020636F6C6F723A20236666623336643B0D0A7D0D0A626F6479202E75692D7769646765742D686561646572207B0D0A2020626F726465722D636F6C6F723A20236530653065313B0D0A20206261636B67726F756E642D636F6C6F723A202363326331';
wwv_flow_api.g_varchar2_table(781) := '63333B0D0A2020636F6C6F723A20233033303330333B0D0A7D0D0A626F6479202E75692D7769646765742D6865616465722061207B0D0A2020636F6C6F723A20233033303330333B0D0A7D0D0A0D0A626F6479202E75692D73746174652D64656661756C';
wwv_flow_api.g_varchar2_table(782) := '742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(783) := '6F756E642D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A626F6479202E75692D73746174652D64656661756C7420612C0D0A626F6479202E75692D73746174652D64656661756C7420613A6C696E6B';
wwv_flow_api.g_varchar2_table(784) := '2C0D0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0D0A626F6479202E75692D73746174652D61637469766520612C0D0A626F6479202E75692D73746174652D61637469766520613A6C696E6B2C0D0A626F647920';
wwv_flow_api.g_varchar2_table(785) := '2E75692D73746174652D61637469766520613A76697369746564207B0D0A2020636F6C6F723A20236666623336643B0D0A7D0D0A626F6479202E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E';
wwv_flow_api.g_varchar2_table(786) := '75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(787) := '33333333333B0D0A7D0D0A626F6479202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765742D686561646572202E';
wwv_flow_api.g_varchar2_table(788) := '75692D73746174652D666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202366666262376320696E7365742C2030203020317078203270782072676261283235352C203138372C203132342C20302E3235292021696D706F';
wwv_flow_api.g_varchar2_table(789) := '7274616E743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F';
wwv_flow_api.g_varchar2_table(790) := '6E70616E6520627574746F6E3A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202366666262376320696E7365742C2030203020317078203270782072676261283235352C';
wwv_flow_api.g_varchar2_table(791) := '203138372C203132342C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D73746174652D686F76657220612C0D0A626F6479202E75692D73746174652D686F76657220613A686F7665722C0D0A626F6479202E75692D7374';
wwv_flow_api.g_varchar2_table(792) := '6174652D686F76657220613A6C696E6B2C0D0A626F6479202E75692D73746174652D686F76657220613A766973697465642C0D0A626F6479202E75692D73746174652D666F63757320612C0D0A626F6479202E75692D73746174652D666F63757320613A';
wwv_flow_api.g_varchar2_table(793) := '686F7665722C0D0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0D0A626F6479202E75692D73746174652D666F63757320613A76697369746564207B0D0A2020636F6C6F723A20236666623336643B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(794) := '75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D616374697665';
wwv_flow_api.g_varchar2_table(795) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A0D0A626F6479202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D776964676574';
wwv_flow_api.g_varchar2_table(796) := '2D636F6E74656E74202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(797) := '666666663B0D0A2020636F6C6F723A20236266626662663B0D0A7D0D0A626F6479202E75692D73746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768';
wwv_flow_api.g_varchar2_table(798) := '7420612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C696768742061207B0D0A2020636F6C6F723A20236266626662663B0D0A7D0D0A626F6479202E75692D73746174652D6572726F722C0D0A62';
wwv_flow_api.g_varchar2_table(799) := '6F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F72207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(800) := '723A20236539306330303B0D0A2020636F6C6F723A20236666656165393B0D0A7D0D0A626F6479202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F7220';
wwv_flow_api.g_varchar2_table(801) := '612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722061207B0D0A2020636F6C6F723A20236666656165393B0D0A7D0D0A626F6479202E75692D73746174652D6572726F722D746578742C0D0A626F';
wwv_flow_api.g_varchar2_table(802) := '6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(803) := '20236539306330303B0D0A7D0D0A0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D646566';
wwv_flow_api.g_varchar2_table(804) := '61756C74207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D7374617465';
wwv_flow_api.g_varchar2_table(805) := '2D64656661756C742E75692D73746174652D6163746976652C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374697665207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(806) := '2D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030303B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64';
wwv_flow_api.g_varchar2_table(807) := '656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E7569';
wwv_flow_api.g_varchar2_table(808) := '2D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237632021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D646566';
wwv_flow_api.g_varchar2_table(809) := '61756C742E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(810) := '3A20236538653865382021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C743A666F6375732C0D0A626F6479202E75692D646174657069636B65722074';
wwv_flow_api.g_varchar2_table(811) := '6420612E75692D73746174652D64656661756C743A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202366666262376320696E7365742C2030203020317078203270782072';
wwv_flow_api.g_varchar2_table(812) := '676261283235352C203138372C203132342C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686967686C';
wwv_flow_api.g_varchar2_table(813) := '696768742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236530653065313B0D';
wwv_flow_api.g_varchar2_table(814) := '0A7D0D0A626F6479202E75692D646174657069636B6572207468207B0D0A2020636F6C6F723A20233735373537353B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6865616465722C0D0A626F6479';
wwv_flow_api.g_varchar2_table(815) := '202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578742C0D0A626F6479202E75';
wwv_flow_api.g_varchar2_table(816) := '692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C6562617220';
wwv_flow_api.g_varchar2_table(817) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236332633163333B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236138613761613B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D';
wwv_flow_api.g_varchar2_table(818) := '7469746C65207B0D0A2020636F6C6F723A20233033303330333B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0D0A2E742D4469616C6F672D70616765207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(819) := '6F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F672C0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75';
wwv_flow_api.g_varchar2_table(820) := '692D6469616C6F672D7469746C656261722C0D0A2E742D4469616C6F672D2D77697A61726420626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2023663566';
wwv_flow_api.g_varchar2_table(821) := '3566353B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(822) := '626F6479202E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(823) := '75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F64';
wwv_flow_api.g_varchar2_table(824) := '79202E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D6C656674';
wwv_flow_api.g_varchar2_table(825) := '2C0D0A626F6479202E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F72';
wwv_flow_api.g_varchar2_table(826) := '6E65722D72696768742C0D0A626F6479202E75692D636F726E65722D6272207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A0D0A626F6479202E75692D627574746F6E2E75692D636F726E6572';
wwv_flow_api.g_varchar2_table(827) := '2D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A62';
wwv_flow_api.g_varchar2_table(828) := '6F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F';
wwv_flow_api.g_varchar2_table(829) := '6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(830) := '626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626C207B0D0A';
wwv_flow_api.g_varchar2_table(831) := '2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72';
wwv_flow_api.g_varchar2_table(832) := '696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A0D0A2E61635F726573756C7473207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(833) := '6465723A2031707820736F6C696420236366636563663B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233336333533363B0D0A7D0D0A2E61635F6C6F6164696E67207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(834) := '6F756E643A20236666666666662075726C28272E2E2F2E2E2F2E2E2F617065785F75692F696D672F6C65676163792F6C6F6164696E6731367831362E67696627292072696768742063656E746572206E6F2D7265706561743B0D0A7D0D0A2E61635F6F64';
wwv_flow_api.g_varchar2_table(835) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20236538653865383B0D0A7D0D0A626F6479202E61635F6F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030';
wwv_flow_api.g_varchar2_table(836) := '303B0D0A7D0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D617869732D7469746C652C0D0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732D7469746C6520';
wwv_flow_api.g_varchar2_table(837) := '7B0D0A202066696C6C3A20233336333633363B0D0A7D0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973202E7469636B20746578742C0D0A626F6479202E612D44334261724368617274202E612D44';
wwv_flow_api.g_varchar2_table(838) := '334C696E6543686172742D61786973202E7469636B2074657874207B0D0A202066696C6C3A20233735373537353B0D0A7D0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973206C696E652C0D0A626F';
wwv_flow_api.g_varchar2_table(839) := '6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973206C696E652C0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D6178697320706174682C0D0A626F6479202E612D44';
wwv_flow_api.g_varchar2_table(840) := '334261724368617274202E612D44334C696E6543686172742D617869732070617468207B0D0A20207374726F6B653A20236462646264633B0D0A7D0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732D74';
wwv_flow_api.g_varchar2_table(841) := '69746C65207B0D0A202066696C6C3A20233336333633363B0D0A7D0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964206C696E652C0D0A626F6479202E612D44334261724368617274202E612D44334261';
wwv_flow_api.g_varchar2_table(842) := '7243686172742D67726964207B0D0A20207374726F6B653A20236462646264633B0D0A7D0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D61786973206C696E652C0D0A626F6479202E612D443342617243686172';
wwv_flow_api.g_varchar2_table(843) := '74202E612D443342617243686172742D617869732070617468207B0D0A20207374726F6B653A20236332633163333B0D0A7D0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D61786973202E7469636B2074657874';
wwv_flow_api.g_varchar2_table(844) := '207B0D0A202066696C6C3A20233735373537353B0D0A7D0D0A626F6479202E612D4433546F6F6C746970207B0D0A20206261636B67726F756E642D636F6C6F723A20233735373437373B0D0A2020636F6C6F723A20236635663566352021696D706F7274';
wwv_flow_api.g_varchar2_table(845) := '616E743B0D0A7D0D0A626F6479202E612D4433546F6F6C7469702D636F6E74656E74207B0D0A2020626F726465722D746F703A20233866386439313B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C656765';
wwv_flow_api.g_varchar2_table(846) := '6E642D2D65787465726E616C2D626F7264657273207B0D0A2020626F726465722D77696474683A20303B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642D6974656D2C0D0A626F6479202E612D443343686172744C6567656E642E612D';
wwv_flow_api.g_varchar2_table(847) := '443343686172744C6567656E642D2D6261636B67726F756E64202E612D443343686172744C6567656E642D6C61796F7574207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D77696474';
wwv_flow_api.g_varchar2_table(848) := '683A20302021696D706F7274616E743B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642D6974656D2D76616C7565207B0D0A2020636F6C6F723A20233563356335633B0D0A7D0D0A626F6479202E612D443343686172744C6567656E64';
wwv_flow_api.g_varchar2_table(849) := '2E612D443343686172744C6567656E642D2D7371756172652D636F6C6F72202E612D443343686172744C6567656E642D6974656D2D636F6C6F72207B0D0A2020626F726465722D7261646975733A20313030253B0D0A2020626F726465722D7269676874';
wwv_flow_api.g_varchar2_table(850) := '2D77696474683A20303B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F6479202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236135613361363B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(851) := '722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236265626462663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233065306530653B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(852) := '742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233366336633663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A202362386237';
wwv_flow_api.g_varchar2_table(853) := '62393B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(854) := '66626237633B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(855) := '3A20236666636330303B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236239623862613B0D';
wwv_flow_api.g_varchar2_table(856) := '0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236234623362353B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A20200D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(857) := '742D526567696F6E202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236462646264633B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A2023663566';
wwv_flow_api.g_varchar2_table(858) := '3566353B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(859) := '6F723A20233735373537353B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236565656565663B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(860) := '6F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(861) := '2D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A2020636F6C6F723A20233030303030303B0D';
wwv_flow_api.g_varchar2_table(862) := '0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236630656666303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D646179';
wwv_flow_api.g_varchar2_table(863) := '2E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236562656165623B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D69';
wwv_flow_api.g_varchar2_table(864) := '6E6943616C207B0D0A2020626F726465723A2031707820736F6C696420233938393639393B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236231623062323B0D0A7D0D0A2E742D426F';
wwv_flow_api.g_varchar2_table(865) := '64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(866) := '3A20233332333233323B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236162616161633B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(867) := '426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F6C6F723A202330303030';
wwv_flow_api.g_varchar2_table(868) := '30303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A2020';
wwv_flow_api.g_varchar2_table(869) := '636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236163616261643B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(870) := '2D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236137613661383B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20200D0A20200D0A20200D';
wwv_flow_api.g_varchar2_table(871) := '0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(872) := '6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461794F';
wwv_flow_api.g_varchar2_table(873) := '665765656B207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236639663966393B0D0A2020636F6C6F723A20233430';
wwv_flow_api.g_varchar2_table(874) := '343034303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626237633B0D0A2020636F';
wwv_flow_api.g_varchar2_table(875) := '6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A202366666363';
wwv_flow_api.g_varchar2_table(876) := '30303B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D';
wwv_flow_api.g_varchar2_table(877) := '0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A0D0A2E742D426F6479202E612D44657461696C6564436F6E7465';
wwv_flow_api.g_varchar2_table(878) := '6E744C6973742D7469746C65207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D426F64792D696E666F202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0D0A2020636F6C6F723A20233430343034303B';
wwv_flow_api.g_varchar2_table(879) := '0D0A7D0D0A2E742D526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C652C0D0A2E742D427574746F6E526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(880) := '723A20233336333633363B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D3A666F637573202E612D44657461696C6564436F6E74656E744C6973742D686561646572207B0D0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(881) := '3A20302030203020317078202366666131343920696E7365743B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D74';
wwv_flow_api.g_varchar2_table(882) := '726967676572207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020626F782D736861646F773A20302030203020317078202366666262376320696E7365743B0D0A2020636F6C6F723A20236666626237633B0D0A7D';
wwv_flow_api.g_varchar2_table(883) := '0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(884) := '636F6C6F723A20236666613134393B0D0A2020636F6C6F723A20233030303030303B0D0A2020626F782D736861646F773A20302030203020317078202366666131343920696E7365743B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E7465';
wwv_flow_api.g_varchar2_table(885) := '6E744C6973742D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236538653865383B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D69636F6E207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(886) := '20726762612835342C2035342C2035342C20302E35293B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6261646765207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A626F6479202E612D4465746169';
wwv_flow_api.g_varchar2_table(887) := '6C6564436F6E74656E744C6973742D74726967676572207B0D0A20206261636B67726F756E643A20233030303030303B0D0A2020636F6C6F723A20726762612835342C2035342C2035342C20302E3735293B0D0A7D0D0A626F6479202E612D4465746169';
wwv_flow_api.g_varchar2_table(888) := '6C6564436F6E74656E744C6973742D747269676765723A686F766572207B0D0A2020636F6C6F723A20236666613134393B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0D0A20';
wwv_flow_api.g_varchar2_table(889) := '20636F6C6F723A20236666613134393B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A626F6479202E636F6E74';
wwv_flow_api.g_varchar2_table(890) := '656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20236666383631363B0D0A7D0D0A626F6479202E636F6E74656E742D746F6F6C746970202E61';
wwv_flow_api.g_varchar2_table(891) := '2D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E';
wwv_flow_api.g_varchar2_table(892) := '744C6973742D626F64792D726F772D636F6E74656E74207B0D0A2020636F6C6F723A20236666663065323B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D686561646572207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(893) := '756E643A20233030303030303B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0D0A2020636F6C6F723A20233336333633363B0D0A7D0D0A626F6479202E612D44657461696C';
wwv_flow_api.g_varchar2_table(894) := '6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0D0A2020636F6C6F723A20236666383631363B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E';
wwv_flow_api.g_varchar2_table(895) := '744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6166746572207B0D0A2020626F726465722D636F6C6F723A2023663566356635207472616E73706172656E743B0D0A7D0D0A626F6479202E61';
wwv_flow_api.g_varchar2_table(896) := '2D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6265666F7265207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(897) := '6F6C6F723A2023303030303030207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970207B0D0A20202D7765626B69742D626F726465722D7261646975733A203270783B0D0A2020';
wwv_flow_api.g_varchar2_table(898) := '2D6D6F7A2D626F726465722D7261646975733A203270783B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74';
wwv_flow_api.g_varchar2_table(899) := '656E744C6973742D626F6479207B0D0A20202D7765626B69742D626F726465722D7261646975733A203270783B0D0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D';
wwv_flow_api.g_varchar2_table(900) := '0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2023666638363136207472616E73706172656E743B0D0A7D0D0A62';
wwv_flow_api.g_varchar2_table(901) := '6F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6166746572207B0D0A2020626F726465722D636F6C6F723A2023666638363136207472616E73706172656E743B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(902) := '202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D2E6C696768743A6166746572207B0D0A2020626F726465722D636F6C6F723A2023656165616561207472616E73706172656E743B0D0A7D0D0A62';
wwv_flow_api.g_varchar2_table(903) := '6F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2023666638363136207472616E73706172656E743B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(904) := '75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6166746572207B0D0A2020626F726465722D636F6C6F723A2023666638363136207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F';
wwv_flow_api.g_varchar2_table(905) := '6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6265666F7265207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E742023303030303030207472616E73706172656E74207472616E7370617265';
wwv_flow_api.g_varchar2_table(906) := '6E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6166746572207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E742023666638363136207472';
wwv_flow_api.g_varchar2_table(907) := '616E73706172656E74207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2074';
wwv_flow_api.g_varchar2_table(908) := '72616E73706172656E74207472616E73706172656E74207472616E73706172656E7420726762612835342C2035342C2035342C20302E35293B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F';
wwv_flow_api.g_varchar2_table(909) := '772E72696768743A6166746572207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420236666383631363B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(910) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0D0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0D0A7D0D0A626F64';
wwv_flow_api.g_varchar2_table(911) := '79202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(912) := '7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D77726170';
wwv_flow_api.g_varchar2_table(913) := '3A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(914) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0D0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261646765';
wwv_flow_api.g_varchar2_table(915) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(916) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38';
wwv_flow_api.g_varchar2_table(917) := '707820302030202333333935666620696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(918) := '28203329207B0D0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(919) := '2D6974656D3A6E74682D6368696C64282033292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(920) := '67654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366666161333320696E7365743B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(921) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(922) := '233463643936343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0D0A202063';
wwv_flow_api.g_varchar2_table(923) := '6F6C6F723A20233037316630623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E';
wwv_flow_api.g_varchar2_table(924) := '742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332616338343520696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467';
wwv_flow_api.g_varchar2_table(925) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0D0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0D0A7D0D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(926) := '73742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(927) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020';
wwv_flow_api.g_varchar2_table(928) := '626F782D736861646F773A2030202D38707820302030202361386138616320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(929) := '742D6974656D3A6E74682D6368696C6428203629207B0D0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(930) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(931) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202335666263';
wwv_flow_api.g_varchar2_table(932) := '653420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0D0A20206261';
wwv_flow_api.g_varchar2_table(933) := '636B67726F756E642D636F6C6F723A20236666636330303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(934) := '696C64282037292061207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(935) := '6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202363636133303020696E7365743B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(936) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0D0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0D0A7D0D';
wwv_flow_api.g_varchar2_table(937) := '0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0D0A2020636F6C6F723A20233032333935';
wwv_flow_api.g_varchar2_table(938) := '323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(939) := '777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332386237663920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(940) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(941) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6461';
wwv_flow_api.g_varchar2_table(942) := '73682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(943) := '30202D38707820302030202366663662363320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(944) := '68696C642820313029207B0D0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(945) := '654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(946) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B';
wwv_flow_api.g_varchar2_table(947) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(948) := '2D636F6C6F723A20236666353737373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129';
wwv_flow_api.g_varchar2_table(949) := '2061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(950) := '6C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366663861613020696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_api.g_varchar2_table(951) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0D0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(952) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(953) := '7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(954) := '703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(955) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0D0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(956) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(957) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(958) := '30202D38707820302030202366663935303020696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(959) := '68696C642820313429207B0D0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(960) := '654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0D0A2020636F6C6F723A20233338346333633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(961) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334366438356620696E7365743B';
wwv_flow_api.g_varchar2_table(962) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(963) := '2D636F6C6F723A20236135613561393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529';
wwv_flow_api.g_varchar2_table(964) := '2061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(965) := '6C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_api.g_varchar2_table(966) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0D0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(967) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(968) := '7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(969) := '703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333316139646220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(970) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0D0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(971) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(972) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(973) := '30202D38707820302030202366666363303020696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(974) := '68696C642820313829207B0D0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(975) := '654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0D0A2020636F6C6F723A20233335363137353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(976) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B';
wwv_flow_api.g_varchar2_table(977) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(978) := '2D636F6C6F723A20236666363235393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929';
wwv_flow_api.g_varchar2_table(979) := '2061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(980) := '6C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366663932386320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_api.g_varchar2_table(981) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0D0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(982) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(983) := '7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(984) := '703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361326131653820696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(985) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0D0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(986) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(987) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(988) := '30202D38707820302030202365623536373220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(989) := '68696C642820323229207B0D0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(990) := '654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(991) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202331613837666620696E7365743B';
wwv_flow_api.g_varchar2_table(992) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(993) := '2D636F6C6F723A20236536383630303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329';
wwv_flow_api.g_varchar2_table(994) := '2061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(995) := '6C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366666130316120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_api.g_varchar2_table(996) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0D0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(997) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0D0A2020636F6C6F723A20233036316330613B0D0A';
wwv_flow_api.g_varchar2_table(998) := '7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(999) := '703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(1000) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0D0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(1001) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(1002) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(1003) := '30202D38707820302030202339613961396420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1004) := '68696C642820323629207B0D0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1005) := '654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(1006) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202335326166643620696E7365743B';
wwv_flow_api.g_varchar2_table(1007) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1008) := '2D636F6C6F723A20236536623830303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729';
wwv_flow_api.g_varchar2_table(1009) := '2061207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1010) := '6C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202362333866303020696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_api.g_varchar2_table(1011) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0D0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(1012) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0D0A2020636F6C6F723A20233032333434613B0D0A';
wwv_flow_api.g_varchar2_table(1013) := '7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(1014) := '703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337636337653920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(1015) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0D0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(1016) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(1017) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(1018) := '30202D38707820302030202365623630353920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1019) := '68696C642820333029207B0D0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1020) := '654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(1021) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337353733636520696E7365743B';
wwv_flow_api.g_varchar2_table(1022) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1023) := '2D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236666313434303B0D0A2020636F6C6F723A20236666313434303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1024) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1025) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1026) := '6666663B0D0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1027) := '73742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233030366565363B0D0A2020636F6C6F723A20233030366565363B0D0A7D0D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(1028) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D77726170202E742D42616467';
wwv_flow_api.g_varchar2_table(1029) := '654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D';
wwv_flow_api.g_varchar2_table(1030) := '42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C6172';
wwv_flow_api.g_varchar2_table(1031) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236536383630';
wwv_flow_api.g_varchar2_table(1032) := '303B0D0A2020636F6C6F723A20236536383630303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1033) := '68696C6428203329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1034) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236666393530';
wwv_flow_api.g_varchar2_table(1035) := '303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1036) := '73742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233337643535323B0D0A2020636F6C6F723A20233337643535323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1037) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1038) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A202330';
wwv_flow_api.g_varchar2_table(1039) := '37316630623B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(1040) := '4C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233831383138373B0D0A2020636F6C6F723A20233831383138373B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1041) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D77726170202E742D4261';
wwv_flow_api.g_varchar2_table(1042) := '6467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E';
wwv_flow_api.g_varchar2_table(1043) := '742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C';
wwv_flow_api.g_varchar2_table(1044) := '61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A2023323439';
wwv_flow_api.g_varchar2_table(1045) := '6564323B0D0A2020636F6C6F723A20233234396564323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1046) := '2D6368696C6428203629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(1047) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A2023333461';
wwv_flow_api.g_varchar2_table(1048) := '6164633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D4261646765';
wwv_flow_api.g_varchar2_table(1049) := '4C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236536623830303B0D0A2020636F6C6F723A20236536623830303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1050) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1051) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1052) := '233030303030303B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(1053) := '67654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233431633066393B0D0A2020636F6C6F723A20233431633066393B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(1054) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D77726170202E742D';
wwv_flow_api.g_varchar2_table(1055) := '42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829';
wwv_flow_api.g_varchar2_table(1056) := '202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233032333935323B0D0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263';
wwv_flow_api.g_varchar2_table(1057) := '756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1058) := '66323331373B0D0A2020636F6C6F723A20236666323331373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1059) := '74682D6368696C6428203929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(1060) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1061) := '66336233303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D4261';
wwv_flow_api.g_varchar2_table(1062) := '6467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233434343164313B0D0A2020636F6C6F723A20233434343164313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(1063) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(1064) := '654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1065) := '6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1066) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236666336536323B0D0A2020636F6C6F723A20236666336536323B0D0A7D';
wwv_flow_api.g_varchar2_table(1067) := '0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D77';
wwv_flow_api.g_varchar2_table(1068) := '726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1069) := '696C642820313129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0D0A7D0D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1070) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(1071) := '636F6C6F723A20233139383766663B0D0A2020636F6C6F723A20233139383766663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1072) := '73742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1073) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1074) := '642D636F6C6F723A20233333393566663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1075) := '2820313329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236666613031393B0D0A2020636F6C6F723A20236666613031393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6369726375';
wwv_flow_api.g_varchar2_table(1076) := '6C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A62';
wwv_flow_api.g_varchar2_table(1077) := '6F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C75';
wwv_flow_api.g_varchar2_table(1078) := '652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1079) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233562646337313B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1080) := '233562646337313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D';
wwv_flow_api.g_varchar2_table(1081) := '42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1082) := '6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233338346333633B0D0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(1083) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C7565207B';
wwv_flow_api.g_varchar2_table(1084) := '0D0A2020626F726465722D636F6C6F723A20233938393839633B0D0A2020636F6C6F723A20233938393839633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(1085) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C6172';
wwv_flow_api.g_varchar2_table(1086) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(1087) := '20206261636B67726F756E642D636F6C6F723A20236135613561393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1088) := '6D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233437623264663B0D0A2020636F6C6F723A20233437623264663B0D0A7D0D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(1089) := '4C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D77726170202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1090) := '742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D426164';
wwv_flow_api.g_varchar2_table(1091) := '67654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D';
wwv_flow_api.g_varchar2_table(1092) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236666643131393B';
wwv_flow_api.g_varchar2_table(1093) := '0D0A2020636F6C6F723A20236666643131393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1094) := '6C642820313729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(1095) := '2D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233333333333333B0D0A20206261636B67726F756E642D636F6C6F723A20236666643633';
wwv_flow_api.g_varchar2_table(1096) := '333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1097) := '6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233632636266613B0D0A2020636F6C6F723A20233632636266613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1098) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1099) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1100) := '20233335363137353B0D0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1101) := '6467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236666346134303B0D0A2020636F6C6F723A20236666346134303B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1102) := '6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D7772617020';
wwv_flow_api.g_varchar2_table(1103) := '2E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1104) := '20313929202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1105) := '63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1106) := '723A20233635363364393B0D0A2020636F6C6F723A20233635363364393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1107) := '74656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1108) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1109) := '6C6F723A20233739373864653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231';
wwv_flow_api.g_varchar2_table(1110) := '29202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236462316133663B0D0A2020636F6C6F723A20236462316133663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_api.g_varchar2_table(1111) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F647920';
wwv_flow_api.g_varchar2_table(1112) := '2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C7565206120';
wwv_flow_api.g_varchar2_table(1113) := '7B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1114) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233030363263633B0D0A2020636F6C6F723A2023303036';
wwv_flow_api.g_varchar2_table(1115) := '3263633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467';
wwv_flow_api.g_varchar2_table(1116) := '654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1117) := '3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0D0A7D0D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(1118) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C7565207B0D0A2020';
wwv_flow_api.g_varchar2_table(1119) := '626F726465722D636F6C6F723A20236363373730303B0D0A2020636F6C6F723A20236363373730303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1120) := '42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42';
wwv_flow_api.g_varchar2_table(1121) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261';
wwv_flow_api.g_varchar2_table(1122) := '636B67726F756E642D636F6C6F723A20236536383630303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1123) := '682D6368696C642820323429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233361623434663B0D0A2020636F6C6F723A20233361623434663B0D0A7D0D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1124) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1125) := '6C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1126) := '73742D76616C75652061207B0D0A2020636F6C6F723A20233036316330613B0D0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_api.g_varchar2_table(1127) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233733373337373B0D0A2020';
wwv_flow_api.g_varchar2_table(1128) := '636F6C6F723A20233733373337373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1129) := '323529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(1130) := '67654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0D0A';
wwv_flow_api.g_varchar2_table(1131) := '7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1132) := '76616C7565207B0D0A2020626F726465722D636F6C6F723A20233261383962313B0D0A2020636F6C6F723A20233261383962313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1133) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1134) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536';
wwv_flow_api.g_varchar2_table(1135) := '653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1136) := '6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236363613330303B0D0A2020636F6C6F723A20236363613330303B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1137) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D77726170202E742D42';
wwv_flow_api.g_varchar2_table(1138) := '616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729';
wwv_flow_api.g_varchar2_table(1139) := '202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233030303030303B0D0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263';
wwv_flow_api.g_varchar2_table(1140) := '756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1141) := '3362616264643B0D0A2020636F6C6F723A20233362616264643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1142) := '6E74682D6368696C642820323829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1143) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233032333434613B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1144) := '20233531623465313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E74';
wwv_flow_api.g_varchar2_table(1145) := '2D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236464323531623B0D0A2020636F6C6F723A20236464323531623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_api.g_varchar2_table(1146) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1147) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C75652061207B0D0A20';
wwv_flow_api.g_varchar2_table(1148) := '20636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(1149) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233431343062353B0D0A2020636F6C6F723A20233431343062353B';
wwv_flow_api.g_varchar2_table(1150) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1151) := '742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1152) := '2D6368696C642820333029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0D0A7D0D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1153) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0D0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1154) := '67654C6973742D6974656D3A6E74682D6368696C64282031292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1155) := '20312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1156) := '6467654C6973742D6974656D3A6E74682D6368696C6428203229207B0D0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1157) := '6E74682D6368696C64282032292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467';
wwv_flow_api.g_varchar2_table(1158) := '654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333333935666620696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1159) := '3A6E74682D6368696C6428203329207B0D0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033';
wwv_flow_api.g_varchar2_table(1160) := '292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A68';
wwv_flow_api.g_varchar2_table(1161) := '6F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366666161333320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1162) := '3429207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1163) := '6F723A20233037316630623B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1164) := '782D736861646F773A2030202D38707820302030202332616338343520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1165) := '67726F756E642D636F6C6F723A20233865386539333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0D0A2020636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1166) := '0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(1167) := '2D38707820302030202361386138616320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1168) := '3A20233334616164633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1169) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870782030203020233566';
wwv_flow_api.g_varchar2_table(1170) := '6263653420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A';
wwv_flow_api.g_varchar2_table(1171) := '7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_api.g_varchar2_table(1172) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202363636133303020696E7365743B0D';
wwv_flow_api.g_varchar2_table(1173) := '0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0D0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0D0A7D0D0A2E742D43617264732D';
wwv_flow_api.g_varchar2_table(1174) := '2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0D0A2020636F6C6F723A20233032333935323B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1175) := '2D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332386237663920696E7365743B0D0A7D0D0A2E742D4361726473';
wwv_flow_api.g_varchar2_table(1176) := '2D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E74';
wwv_flow_api.g_varchar2_table(1177) := '2D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1178) := '696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366663662363320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E';
wwv_flow_api.g_varchar2_table(1179) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0D0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1180) := '6974656D3A6E74682D6368696C6428203130292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061';
wwv_flow_api.g_varchar2_table(1181) := '2E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1182) := '73742D6974656D3A6E74682D6368696C642820313129207B0D0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1183) := '6368696C6428203131292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C';
wwv_flow_api.g_varchar2_table(1184) := '6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366663861613020696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1185) := '74682D6368696C642820313229207B0D0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132';
wwv_flow_api.g_varchar2_table(1186) := '292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A';
wwv_flow_api.g_varchar2_table(1187) := '686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1188) := '20313329207B0D0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0D0A2020';
wwv_flow_api.g_varchar2_table(1189) := '636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0D0A';
wwv_flow_api.g_varchar2_table(1190) := '2020626F782D736861646F773A2030202D38707820302030202366663935303020696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0D0A20';
wwv_flow_api.g_varchar2_table(1191) := '206261636B67726F756E642D636F6C6F723A20233730653138333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0D0A2020636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1192) := '38346333633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(1193) := '646F773A2030202D38707820302030202334366438356620696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1194) := '6E642D636F6C6F723A20236135613561393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(1195) := '0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38';
wwv_flow_api.g_varchar2_table(1196) := '707820302030202362666266633220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1197) := '20233564626265333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1198) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333';
wwv_flow_api.g_varchar2_table(1199) := '316139646220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0D0A20206261636B67726F756E642D636F6C6F723A20236666643633333B';
wwv_flow_api.g_varchar2_table(1200) := '0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_api.g_varchar2_table(1201) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366666363303020696E73';
wwv_flow_api.g_varchar2_table(1202) := '65743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0D0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0D0A7D0D0A2E742D43';
wwv_flow_api.g_varchar2_table(1203) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0D0A2020636F6C6F723A20233335363137353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1204) := '67654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1205) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0D0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0D0A7D0D0A2E742D43617264732D2D636F6C';
wwv_flow_api.g_varchar2_table(1206) := '6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1207) := '656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366663932386320696E7365743B0D0A7D0D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(1208) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0D0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1209) := '42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1210) := '696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361326131653820696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_api.g_varchar2_table(1211) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0D0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1212) := '2D6974656D3A6E74682D6368696C6428203231292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920';
wwv_flow_api.g_varchar2_table(1213) := '612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1214) := '6973742D6974656D3A6E74682D6368696C642820323229207B0D0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1215) := '2D6368696C6428203232292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D4261646765';
wwv_flow_api.g_varchar2_table(1216) := '4C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202331613837666620696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1217) := '6E74682D6368696C642820323329207B0D0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(1218) := '33292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D77726170';
wwv_flow_api.g_varchar2_table(1219) := '3A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366666130316120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1220) := '2820323429207B0D0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0D0A20';
wwv_flow_api.g_varchar2_table(1221) := '20636F6C6F723A20233036316330613B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0D';
wwv_flow_api.g_varchar2_table(1222) := '0A2020626F782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0D0A';
wwv_flow_api.g_varchar2_table(1223) := '20206261636B67726F756E642D636F6C6F723A20233830383038343B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1224) := '6536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1225) := '61646F773A2030202D38707820302030202339613961396420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1226) := '756E642D636F6C6F723A20233266393963363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0D0A2020636F6C6F723A20236536653665363B0D0A';
wwv_flow_api.g_varchar2_table(1227) := '7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D';
wwv_flow_api.g_varchar2_table(1228) := '38707820302030202335326166643620696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1229) := '3A20236536623830303B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436172';
wwv_flow_api.g_varchar2_table(1230) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D387078203020302023';
wwv_flow_api.g_varchar2_table(1231) := '62333866303020696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0D0A20206261636B67726F756E642D636F6C6F723A2023353162346531';
wwv_flow_api.g_varchar2_table(1232) := '3B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0D0A2020636F6C6F723A20233032333434613B0D0A7D0D0A2E742D43617264732D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1233) := '697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337636337653920696E';
wwv_flow_api.g_varchar2_table(1234) := '7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0D0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(1235) := '43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1236) := '6467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365623630353920696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1237) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0D0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0D0A7D0D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1238) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1239) := '74656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337353733636520696E7365743B0D0A7D0D0A2E752D436F6C6F7242';
wwv_flow_api.g_varchar2_table(1240) := '472D2D31207B0D0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0D0A7D0D0A2E752D436F6C6F7246472D2D31207B0D0A2020636F6C6F723A20236666326435353B0D0A7D0D0A2E752D436F6C6F7242472D2D32207B0D0A202062';
wwv_flow_api.g_varchar2_table(1241) := '61636B67726F756E642D636F6C6F723A20233030376166663B0D0A7D0D0A2E752D436F6C6F7246472D2D32207B0D0A2020636F6C6F723A20233030376166663B0D0A7D0D0A2E752D436F6C6F7242472D2D33207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1242) := '6F6C6F723A20236666393530303B0D0A7D0D0A2E752D436F6C6F7246472D2D33207B0D0A2020636F6C6F723A20236666393530303B0D0A7D0D0A2E752D436F6C6F7242472D2D34207B0D0A20206261636B67726F756E642D636F6C6F723A202334636439';
wwv_flow_api.g_varchar2_table(1243) := '36343B0D0A7D0D0A2E752D436F6C6F7246472D2D34207B0D0A2020636F6C6F723A20233463643936343B0D0A7D0D0A2E752D436F6C6F7242472D2D35207B0D0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1244) := '436F6C6F7246472D2D35207B0D0A2020636F6C6F723A20233865386539333B0D0A7D0D0A2E752D436F6C6F7242472D2D36207B0D0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0D0A7D0D0A2E752D436F6C6F7246472D2D3620';
wwv_flow_api.g_varchar2_table(1245) := '7B0D0A2020636F6C6F723A20233334616164633B0D0A7D0D0A2E752D436F6C6F7242472D2D37207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A7D0D0A2E752D436F6C6F7246472D2D37207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1246) := '20236666636330303B0D0A7D0D0A2E752D436F6C6F7242472D2D38207B0D0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0D0A7D0D0A2E752D436F6C6F7246472D2D38207B0D0A2020636F6C6F723A20233561633866613B0D0A';
wwv_flow_api.g_varchar2_table(1247) := '7D0D0A2E752D436F6C6F7242472D2D39207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A2E752D436F6C6F7246472D2D39207B0D0A2020636F6C6F723A20236666336233303B0D0A7D0D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1248) := '42472D2D3130207B0D0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0D0A7D0D0A2E752D436F6C6F7246472D2D3130207B0D0A2020636F6C6F723A20233538353664363B0D0A7D0D0A2E752D436F6C6F7242472D2D3131207B0D';
wwv_flow_api.g_varchar2_table(1249) := '0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0D0A7D0D0A2E752D436F6C6F7246472D2D3131207B0D0A2020636F6C6F723A20236666353737373B0D0A7D0D0A2E752D436F6C6F7242472D2D3132207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1250) := '6F756E642D636F6C6F723A20233333393566663B0D0A7D0D0A2E752D436F6C6F7246472D2D3132207B0D0A2020636F6C6F723A20233333393566663B0D0A7D0D0A2E752D436F6C6F7242472D2D3133207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1251) := '723A20236666616133333B0D0A7D0D0A2E752D436F6C6F7246472D2D3133207B0D0A2020636F6C6F723A20236666616133333B0D0A7D0D0A2E752D436F6C6F7242472D2D3134207B0D0A20206261636B67726F756E642D636F6C6F723A20233730653138';
wwv_flow_api.g_varchar2_table(1252) := '333B0D0A7D0D0A2E752D436F6C6F7246472D2D3134207B0D0A2020636F6C6F723A20233730653138333B0D0A7D0D0A2E752D436F6C6F7242472D2D3135207B0D0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1253) := '2D436F6C6F7246472D2D3135207B0D0A2020636F6C6F723A20236135613561393B0D0A7D0D0A2E752D436F6C6F7242472D2D3136207B0D0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0D0A7D0D0A2E752D436F6C6F7246472D';
wwv_flow_api.g_varchar2_table(1254) := '2D3136207B0D0A2020636F6C6F723A20233564626265333B0D0A7D0D0A2E752D436F6C6F7242472D2D3137207B0D0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0D0A7D0D0A2E752D436F6C6F7246472D2D3137207B0D0A2020';
wwv_flow_api.g_varchar2_table(1255) := '636F6C6F723A20236666643633333B0D0A7D0D0A2E752D436F6C6F7242472D2D3138207B0D0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0D0A7D0D0A2E752D436F6C6F7246472D2D3138207B0D0A2020636F6C6F723A202337';
wwv_flow_api.g_varchar2_table(1256) := '62643366623B0D0A7D0D0A2E752D436F6C6F7242472D2D3139207B0D0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0D0A7D0D0A2E752D436F6C6F7246472D2D3139207B0D0A2020636F6C6F723A20236666363235393B0D0A7D';
wwv_flow_api.g_varchar2_table(1257) := '0D0A2E752D436F6C6F7242472D2D3230207B0D0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0D0A7D0D0A2E752D436F6C6F7246472D2D3230207B0D0A2020636F6C6F723A20233739373864653B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1258) := '7242472D2D3231207B0D0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0D0A7D0D0A2E752D436F6C6F7246472D2D3231207B0D0A2020636F6C6F723A20236536323934643B0D0A7D0D0A2E752D436F6C6F7242472D2D3232207B';
wwv_flow_api.g_varchar2_table(1259) := '0D0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0D0A7D0D0A2E752D436F6C6F7246472D2D3232207B0D0A2020636F6C6F723A20233030366565363B0D0A7D0D0A2E752D436F6C6F7242472D2D3233207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1260) := '726F756E642D636F6C6F723A20236536383630303B0D0A7D0D0A2E752D436F6C6F7246472D2D3233207B0D0A2020636F6C6F723A20236536383630303B0D0A7D0D0A2E752D436F6C6F7242472D2D3234207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1261) := '6F723A20233434633335613B0D0A7D0D0A2E752D436F6C6F7246472D2D3234207B0D0A2020636F6C6F723A20233434633335613B0D0A7D0D0A2E752D436F6C6F7242472D2D3235207B0D0A20206261636B67726F756E642D636F6C6F723A202338303830';
wwv_flow_api.g_varchar2_table(1262) := '38343B0D0A7D0D0A2E752D436F6C6F7246472D2D3235207B0D0A2020636F6C6F723A20233830383038343B0D0A7D0D0A2E752D436F6C6F7242472D2D3236207B0D0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1263) := '752D436F6C6F7246472D2D3236207B0D0A2020636F6C6F723A20233266393963363B0D0A7D0D0A2E752D436F6C6F7242472D2D3237207B0D0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0D0A7D0D0A2E752D436F6C6F724647';
wwv_flow_api.g_varchar2_table(1264) := '2D2D3237207B0D0A2020636F6C6F723A20236536623830303B0D0A7D0D0A2E752D436F6C6F7242472D2D3238207B0D0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0D0A7D0D0A2E752D436F6C6F7246472D2D3238207B0D0A20';
wwv_flow_api.g_varchar2_table(1265) := '20636F6C6F723A20233531623465313B0D0A7D0D0A2E752D436F6C6F7242472D2D3239207B0D0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0D0A7D0D0A2E752D436F6C6F7246472D2D3239207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1266) := '6536333532623B0D0A7D0D0A2E752D436F6C6F7242472D2D3330207B0D0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0D0A7D0D0A2E752D436F6C6F7246472D2D3330207B0D0A2020636F6C6F723A20233466346463313B0D0A';
wwv_flow_api.g_varchar2_table(1267) := '7D0D0A0D0A2E752D436F6C6F722D312D42472D2D747874207B0D0A2020636F6C6F723A20236666326435353B0D0A7D0D0A2E752D436F6C6F722D312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0D0A';
wwv_flow_api.g_varchar2_table(1268) := '7D0D0A2E752D436F6C6F722D312D42472D2D66696C6C207B0D0A202066696C6C3A20236666326435353B0D0A7D0D0A2E752D436F6C6F722D312D42472D2D6272207B0D0A20207374726F6B653A20236666326435353B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1269) := '6F723A20236666326435353B0D0A7D0D0A2E752D436F6C6F722D312D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D312D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1270) := '3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D312D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D312D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(1271) := '2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D322D42472D2D747874207B0D0A2020636F6C6F723A20233030376166663B0D0A7D0D0A2E752D436F6C6F722D322D42472D2D6267207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1272) := '67726F756E642D636F6C6F723A20233030376166663B0D0A7D0D0A2E752D436F6C6F722D322D42472D2D66696C6C207B0D0A202066696C6C3A20233030376166663B0D0A7D0D0A2E752D436F6C6F722D322D42472D2D6272207B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1273) := '3A20233030376166663B0D0A2020626F726465722D636F6C6F723A20233030376166663B0D0A7D0D0A2E752D436F6C6F722D322D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D322D46472D2D';
wwv_flow_api.g_varchar2_table(1274) := '6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D322D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D322D46472D2D6272';
wwv_flow_api.g_varchar2_table(1275) := '207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D332D42472D2D747874207B0D0A2020636F6C6F723A20236666393530303B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1276) := '436F6C6F722D332D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0D0A7D0D0A2E752D436F6C6F722D332D42472D2D66696C6C207B0D0A202066696C6C3A20236666393530303B0D0A7D0D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1277) := '6C6F722D332D42472D2D6272207B0D0A20207374726F6B653A20236666393530303B0D0A2020626F726465722D636F6C6F723A20236666393530303B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D747874207B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1278) := '6666663B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666';
wwv_flow_api.g_varchar2_table(1279) := '663B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D342D42472D2D747874207B0D0A20';
wwv_flow_api.g_varchar2_table(1280) := '20636F6C6F723A20233463643936343B0D0A7D0D0A2E752D436F6C6F722D342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A2E752D436F6C6F722D342D42472D2D66696C6C207B0D0A2020';
wwv_flow_api.g_varchar2_table(1281) := '66696C6C3A20233463643936343B0D0A7D0D0A2E752D436F6C6F722D342D42472D2D6272207B0D0A20207374726F6B653A20233463643936343B0D0A2020626F726465722D636F6C6F723A20233463643936343B0D0A7D0D0A2E752D436F6C6F722D342D';
wwv_flow_api.g_varchar2_table(1282) := '46472D2D747874207B0D0A2020636F6C6F723A20233037316630623B0D0A7D0D0A2E752D436F6C6F722D342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233037316630623B0D0A7D0D0A2E752D436F6C6F722D342D4647';
wwv_flow_api.g_varchar2_table(1283) := '2D2D66696C6C207B0D0A202066696C6C3A20233037316630623B0D0A7D0D0A2E752D436F6C6F722D342D46472D2D6272207B0D0A20207374726F6B653A20233037316630623B0D0A2020626F726465722D636F6C6F723A20233037316630623B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1284) := '0A2E752D436F6C6F722D352D42472D2D747874207B0D0A2020636F6C6F723A20233865386539333B0D0A7D0D0A2E752D436F6C6F722D352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1285) := '752D436F6C6F722D352D42472D2D66696C6C207B0D0A202066696C6C3A20233865386539333B0D0A7D0D0A2E752D436F6C6F722D352D42472D2D6272207B0D0A20207374726F6B653A20233865386539333B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1286) := '233865386539333B0D0A7D0D0A2E752D436F6C6F722D352D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D352D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1287) := '66666666663B0D0A7D0D0A2E752D436F6C6F722D352D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D352D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1288) := '726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D362D42472D2D747874207B0D0A2020636F6C6F723A20233334616164633B0D0A7D0D0A2E752D436F6C6F722D362D42472D2D6267207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1289) := '6E642D636F6C6F723A20233334616164633B0D0A7D0D0A2E752D436F6C6F722D362D42472D2D66696C6C207B0D0A202066696C6C3A20233334616164633B0D0A7D0D0A2E752D436F6C6F722D362D42472D2D6272207B0D0A20207374726F6B653A202333';
wwv_flow_api.g_varchar2_table(1290) := '34616164633B0D0A2020626F726465722D636F6C6F723A20233334616164633B0D0A7D0D0A2E752D436F6C6F722D362D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D362D46472D2D6267207B';
wwv_flow_api.g_varchar2_table(1291) := '0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D362D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D362D46472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1292) := '20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D372D42472D2D747874207B0D0A2020636F6C6F723A20236666636330303B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1293) := '722D372D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A7D0D0A2E752D436F6C6F722D372D42472D2D66696C6C207B0D0A202066696C6C3A20236666636330303B0D0A7D0D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1294) := '372D42472D2D6272207B0D0A20207374726F6B653A20236666636330303B0D0A2020626F726465722D636F6C6F723A20236666636330303B0D0A7D0D0A2E752D436F6C6F722D372D46472D2D747874207B0D0A2020636F6C6F723A20233030303030303B';
wwv_flow_api.g_varchar2_table(1295) := '0D0A7D0D0A2E752D436F6C6F722D372D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0D0A7D0D0A2E752D436F6C6F722D372D46472D2D66696C6C207B0D0A202066696C6C3A20233030303030303B0D0A';
wwv_flow_api.g_varchar2_table(1296) := '7D0D0A2E752D436F6C6F722D372D46472D2D6272207B0D0A20207374726F6B653A20233030303030303B0D0A2020626F726465722D636F6C6F723A20233030303030303B0D0A7D0D0A2E752D436F6C6F722D382D42472D2D747874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1297) := '6F723A20233561633866613B0D0A7D0D0A2E752D436F6C6F722D382D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0D0A7D0D0A2E752D436F6C6F722D382D42472D2D66696C6C207B0D0A202066696C6C';
wwv_flow_api.g_varchar2_table(1298) := '3A20233561633866613B0D0A7D0D0A2E752D436F6C6F722D382D42472D2D6272207B0D0A20207374726F6B653A20233561633866613B0D0A2020626F726465722D636F6C6F723A20233561633866613B0D0A7D0D0A2E752D436F6C6F722D382D46472D2D';
wwv_flow_api.g_varchar2_table(1299) := '747874207B0D0A2020636F6C6F723A20233032333935323B0D0A7D0D0A2E752D436F6C6F722D382D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233032333935323B0D0A7D0D0A2E752D436F6C6F722D382D46472D2D6669';
wwv_flow_api.g_varchar2_table(1300) := '6C6C207B0D0A202066696C6C3A20233032333935323B0D0A7D0D0A2E752D436F6C6F722D382D46472D2D6272207B0D0A20207374726F6B653A20233032333935323B0D0A2020626F726465722D636F6C6F723A20233032333935323B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1301) := '436F6C6F722D392D42472D2D747874207B0D0A2020636F6C6F723A20236666336233303B0D0A7D0D0A2E752D436F6C6F722D392D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1302) := '6C6F722D392D42472D2D66696C6C207B0D0A202066696C6C3A20236666336233303B0D0A7D0D0A2E752D436F6C6F722D392D42472D2D6272207B0D0A20207374726F6B653A20236666336233303B0D0A2020626F726465722D636F6C6F723A2023666633';
wwv_flow_api.g_varchar2_table(1303) := '6233303B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(1304) := '663B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1305) := '2D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31302D42472D2D747874207B0D0A2020636F6C6F723A20233538353664363B0D0A7D0D0A2E752D436F6C6F722D31302D42472D2D6267207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1306) := '2D636F6C6F723A20233538353664363B0D0A7D0D0A2E752D436F6C6F722D31302D42472D2D66696C6C207B0D0A202066696C6C3A20233538353664363B0D0A7D0D0A2E752D436F6C6F722D31302D42472D2D6272207B0D0A20207374726F6B653A202335';
wwv_flow_api.g_varchar2_table(1307) := '38353664363B0D0A2020626F726465722D636F6C6F723A20233538353664363B0D0A7D0D0A2E752D436F6C6F722D31302D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31302D46472D2D6267';
wwv_flow_api.g_varchar2_table(1308) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31302D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31302D46472D2D6272';
wwv_flow_api.g_varchar2_table(1309) := '207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31312D42472D2D747874207B0D0A2020636F6C6F723A20236639303032663B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1310) := '2D436F6C6F722D31312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236639303032663B0D0A7D0D0A2E752D436F6C6F722D31312D42472D2D66696C6C207B0D0A202066696C6C3A20236639303032663B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1311) := '2D436F6C6F722D31312D42472D2D6272207B0D0A20207374726F6B653A20236639303032663B0D0A2020626F726465722D636F6C6F723A20236639303032663B0D0A7D0D0A2E752D436F6C6F722D31312D46472D2D747874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1312) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31312D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31312D46472D2D66696C6C207B0D0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1313) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31312D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31322D42472D';
wwv_flow_api.g_varchar2_table(1314) := '2D747874207B0D0A2020636F6C6F723A20233030363263633B0D0A7D0D0A2E752D436F6C6F722D31322D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233030363263633B0D0A7D0D0A2E752D436F6C6F722D31322D42472D';
wwv_flow_api.g_varchar2_table(1315) := '2D66696C6C207B0D0A202066696C6C3A20233030363263633B0D0A7D0D0A2E752D436F6C6F722D31322D42472D2D6272207B0D0A20207374726F6B653A20233030363263633B0D0A2020626F726465722D636F6C6F723A20233030363263633B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1316) := '0A2E752D436F6C6F722D31322D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31322D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1317) := '0A2E752D436F6C6F722D31322D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31322D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1318) := '6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31332D42472D2D747874207B0D0A2020636F6C6F723A20236363373730303B0D0A7D0D0A2E752D436F6C6F722D31332D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1319) := '6F723A20236363373730303B0D0A7D0D0A2E752D436F6C6F722D31332D42472D2D66696C6C207B0D0A202066696C6C3A20236363373730303B0D0A7D0D0A2E752D436F6C6F722D31332D42472D2D6272207B0D0A20207374726F6B653A20236363373730';
wwv_flow_api.g_varchar2_table(1320) := '303B0D0A2020626F726465722D636F6C6F723A20236363373730303B0D0A7D0D0A2E752D436F6C6F722D31332D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31332D46472D2D6267207B0D0A';
wwv_flow_api.g_varchar2_table(1321) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31332D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31332D46472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1322) := '20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31342D42472D2D747874207B0D0A2020636F6C6F723A20233261633834353B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1323) := '6F722D31342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0D0A7D0D0A2E752D436F6C6F722D31342D42472D2D66696C6C207B0D0A202066696C6C3A20233261633834353B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1324) := '6F722D31342D42472D2D6272207B0D0A20207374726F6B653A20233261633834353B0D0A2020626F726465722D636F6C6F723A20233261633834353B0D0A7D0D0A2E752D436F6C6F722D31342D46472D2D747874207B0D0A2020636F6C6F723A20233130';
wwv_flow_api.g_varchar2_table(1325) := '343931393B0D0A7D0D0A2E752D436F6C6F722D31342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233130343931393B0D0A7D0D0A2E752D436F6C6F722D31342D46472D2D66696C6C207B0D0A202066696C6C3A20233130';
wwv_flow_api.g_varchar2_table(1326) := '343931393B0D0A7D0D0A2E752D436F6C6F722D31342D46472D2D6272207B0D0A20207374726F6B653A20233130343931393B0D0A2020626F726465722D636F6C6F723A20233130343931393B0D0A7D0D0A2E752D436F6C6F722D31352D42472D2D747874';
wwv_flow_api.g_varchar2_table(1327) := '207B0D0A2020636F6C6F723A20233734373437613B0D0A7D0D0A2E752D436F6C6F722D31352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233734373437613B0D0A7D0D0A2E752D436F6C6F722D31352D42472D2D66696C';
wwv_flow_api.g_varchar2_table(1328) := '6C207B0D0A202066696C6C3A20233734373437613B0D0A7D0D0A2E752D436F6C6F722D31352D42472D2D6272207B0D0A20207374726F6B653A20233734373437613B0D0A2020626F726465722D636F6C6F723A20233734373437613B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1329) := '436F6C6F722D31352D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31352D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1330) := '436F6C6F722D31352D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31352D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1331) := '236666666666663B0D0A7D0D0A2E752D436F6C6F722D31362D42472D2D747874207B0D0A2020636F6C6F723A20233231386562643B0D0A7D0D0A2E752D436F6C6F722D31362D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1332) := '233231386562643B0D0A7D0D0A2E752D436F6C6F722D31362D42472D2D66696C6C207B0D0A202066696C6C3A20233231386562643B0D0A7D0D0A2E752D436F6C6F722D31362D42472D2D6272207B0D0A20207374726F6B653A20233231386562643B0D0A';
wwv_flow_api.g_varchar2_table(1333) := '2020626F726465722D636F6C6F723A20233231386562643B0D0A7D0D0A2E752D436F6C6F722D31362D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31362D46472D2D6267207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1334) := '636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31362D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31362D46472D2D6272207B0D0A20207374';
wwv_flow_api.g_varchar2_table(1335) := '726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31372D42472D2D747874207B0D0A2020636F6C6F723A20236363613330303B0D0A7D0D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1336) := '372D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0D0A7D0D0A2E752D436F6C6F722D31372D42472D2D66696C6C207B0D0A202066696C6C3A20236363613330303B0D0A7D0D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1337) := '372D42472D2D6272207B0D0A20207374726F6B653A20236363613330303B0D0A2020626F726465722D636F6C6F723A20236363613330303B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D747874207B0D0A2020636F6C6F723A2023316131613161';
wwv_flow_api.g_varchar2_table(1338) := '3B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233161316131613B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D66696C6C207B0D0A202066696C6C3A2023316131613161';
wwv_flow_api.g_varchar2_table(1339) := '3B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D6272207B0D0A20207374726F6B653A20233161316131613B0D0A2020626F726465722D636F6C6F723A20233161316131613B0D0A7D0D0A2E752D436F6C6F722D31382D42472D2D747874207B0D0A';
wwv_flow_api.g_varchar2_table(1340) := '2020636F6C6F723A20233238623766393B0D0A7D0D0A2E752D436F6C6F722D31382D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233238623766393B0D0A7D0D0A2E752D436F6C6F722D31382D42472D2D66696C6C207B0D';
wwv_flow_api.g_varchar2_table(1341) := '0A202066696C6C3A20233238623766393B0D0A7D0D0A2E752D436F6C6F722D31382D42472D2D6272207B0D0A20207374726F6B653A20233238623766393B0D0A2020626F726465722D636F6C6F723A20233238623766393B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1342) := '722D31382D46472D2D747874207B0D0A2020636F6C6F723A20233034356338343B0D0A7D0D0A2E752D436F6C6F722D31382D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233034356338343B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1343) := '722D31382D46472D2D66696C6C207B0D0A202066696C6C3A20233034356338343B0D0A7D0D0A2E752D436F6C6F722D31382D46472D2D6272207B0D0A20207374726F6B653A20233034356338343B0D0A2020626F726465722D636F6C6F723A2023303435';
wwv_flow_api.g_varchar2_table(1344) := '6338343B0D0A7D0D0A2E752D436F6C6F722D31392D42472D2D747874207B0D0A2020636F6C6F723A20236663306430303B0D0A7D0D0A2E752D436F6C6F722D31392D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A2023666330';
wwv_flow_api.g_varchar2_table(1345) := '6430303B0D0A7D0D0A2E752D436F6C6F722D31392D42472D2D66696C6C207B0D0A202066696C6C3A20236663306430303B0D0A7D0D0A2E752D436F6C6F722D31392D42472D2D6272207B0D0A20207374726F6B653A20236663306430303B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1346) := '726465722D636F6C6F723A20236663306430303B0D0A7D0D0A2E752D436F6C6F722D31392D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31392D46472D2D6267207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1347) := '6F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31392D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31392D46472D2D6272207B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1348) := '3A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32302D42472D2D747874207B0D0A2020636F6C6F723A20233333333163383B0D0A7D0D0A2E752D436F6C6F722D32302D4247';
wwv_flow_api.g_varchar2_table(1349) := '2D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233333333163383B0D0A7D0D0A2E752D436F6C6F722D32302D42472D2D66696C6C207B0D0A202066696C6C3A20233333333163383B0D0A7D0D0A2E752D436F6C6F722D32302D4247';
wwv_flow_api.g_varchar2_table(1350) := '2D2D6272207B0D0A20207374726F6B653A20233333333163383B0D0A2020626F726465722D636F6C6F723A20233333333163383B0D0A7D0D0A2E752D436F6C6F722D32302D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(1351) := '0D0A2E752D436F6C6F722D32302D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32302D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(1352) := '0D0A2E752D436F6C6F722D32302D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32312D42472D2D747874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1353) := '6C6F723A20236666393361383B0D0A7D0D0A2E752D436F6C6F722D32312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666393361383B0D0A7D0D0A2E752D436F6C6F722D32312D42472D2D66696C6C207B0D0A202066';
wwv_flow_api.g_varchar2_table(1354) := '696C6C3A20236666393361383B0D0A7D0D0A2E752D436F6C6F722D32312D42472D2D6272207B0D0A20207374726F6B653A20236666393361383B0D0A2020626F726465722D636F6C6F723A20236666393361383B0D0A7D0D0A2E752D436F6C6F722D3231';
wwv_flow_api.g_varchar2_table(1355) := '2D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32312D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D3231';
wwv_flow_api.g_varchar2_table(1356) := '2D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32312D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1357) := '0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D747874207B0D0A2020636F6C6F723A20233636616666663B0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233636616666663B';
wwv_flow_api.g_varchar2_table(1358) := '0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D66696C6C207B0D0A202066696C6C3A20233636616666663B0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D6272207B0D0A20207374726F6B653A20233636616666663B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1359) := '2D636F6C6F723A20233636616666663B0D0A7D0D0A2E752D436F6C6F722D32322D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32322D46472D2D6267207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1360) := '2D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32322D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32322D46472D2D6272207B0D0A20207374726F6B653A202366';
wwv_flow_api.g_varchar2_table(1361) := '66666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32332D42472D2D747874207B0D0A2020636F6C6F723A20236666626636363B0D0A7D0D0A2E752D436F6C6F722D32332D42472D2D6267';
wwv_flow_api.g_varchar2_table(1362) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236666626636363B0D0A7D0D0A2E752D436F6C6F722D32332D42472D2D66696C6C207B0D0A202066696C6C3A20236666626636363B0D0A7D0D0A2E752D436F6C6F722D32332D42472D2D6272';
wwv_flow_api.g_varchar2_table(1363) := '207B0D0A20207374726F6B653A20236666626636363B0D0A2020626F726465722D636F6C6F723A20236666626636363B0D0A7D0D0A2E752D436F6C6F722D32332D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1364) := '2D436F6C6F722D32332D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32332D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1365) := '2D436F6C6F722D32332D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32342D42472D2D747874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1366) := '20236130656261643B0D0A7D0D0A2E752D436F6C6F722D32342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236130656261643B0D0A7D0D0A2E752D436F6C6F722D32342D42472D2D66696C6C207B0D0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1367) := '20236130656261643B0D0A7D0D0A2E752D436F6C6F722D32342D42472D2D6272207B0D0A20207374726F6B653A20236130656261643B0D0A2020626F726465722D636F6C6F723A20236130656261643B0D0A7D0D0A2E752D436F6C6F722D32342D46472D';
wwv_flow_api.g_varchar2_table(1368) := '2D747874207B0D0A2020636F6C6F723A20233139373332383B0D0A7D0D0A2E752D436F6C6F722D32342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233139373332383B0D0A7D0D0A2E752D436F6C6F722D32342D46472D';
wwv_flow_api.g_varchar2_table(1369) := '2D66696C6C207B0D0A202066696C6C3A20233139373332383B0D0A7D0D0A2E752D436F6C6F722D32342D46472D2D6272207B0D0A20207374726F6B653A20233139373332383B0D0A2020626F726465722D636F6C6F723A20233139373332383B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1370) := '0A2E752D436F6C6F722D32352D42472D2D747874207B0D0A2020636F6C6F723A20236332633263353B0D0A7D0D0A2E752D436F6C6F722D32352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236332633263353B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1371) := '0A2E752D436F6C6F722D32352D42472D2D66696C6C207B0D0A202066696C6C3A20236332633263353B0D0A7D0D0A2E752D436F6C6F722D32352D42472D2D6272207B0D0A20207374726F6B653A20236332633263353B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1372) := '6F723A20236332633263353B0D0A7D0D0A2E752D436F6C6F722D32352D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32352D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1373) := '6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32352D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32352D46472D2D6272207B0D0A20207374726F6B653A20236666666666';
wwv_flow_api.g_varchar2_table(1374) := '663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32362D42472D2D747874207B0D0A2020636F6C6F723A20233862636565623B0D0A7D0D0A2E752D436F6C6F722D32362D42472D2D6267207B0D0A';
wwv_flow_api.g_varchar2_table(1375) := '20206261636B67726F756E642D636F6C6F723A20233862636565623B0D0A7D0D0A2E752D436F6C6F722D32362D42472D2D66696C6C207B0D0A202066696C6C3A20233862636565623B0D0A7D0D0A2E752D436F6C6F722D32362D42472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1376) := '20207374726F6B653A20233862636565623B0D0A2020626F726465722D636F6C6F723A20233862636565623B0D0A7D0D0A2E752D436F6C6F722D32362D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1377) := '6F722D32362D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32362D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1378) := '6F722D32362D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32372D42472D2D747874207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1379) := '653036363B0D0A7D0D0A2E752D436F6C6F722D32372D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666653036363B0D0A7D0D0A2E752D436F6C6F722D32372D42472D2D66696C6C207B0D0A202066696C6C3A20236666';
wwv_flow_api.g_varchar2_table(1380) := '653036363B0D0A7D0D0A2E752D436F6C6F722D32372D42472D2D6272207B0D0A20207374726F6B653A20236666653036363B0D0A2020626F726465722D636F6C6F723A20236666653036363B0D0A7D0D0A2E752D436F6C6F722D32372D46472D2D747874';
wwv_flow_api.g_varchar2_table(1381) := '207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E752D436F6C6F722D32372D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233333333333333B0D0A7D0D0A2E752D436F6C6F722D32372D46472D2D66696C';
wwv_flow_api.g_varchar2_table(1382) := '6C207B0D0A202066696C6C3A20233333333333333B0D0A7D0D0A2E752D436F6C6F722D32372D46472D2D6272207B0D0A20207374726F6B653A20233333333333333B0D0A2020626F726465722D636F6C6F723A20233333333333333B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1383) := '436F6C6F722D32382D42472D2D747874207B0D0A2020636F6C6F723A20236264653966643B0D0A7D0D0A2E752D436F6C6F722D32382D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236264653966643B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1384) := '436F6C6F722D32382D42472D2D66696C6C207B0D0A202066696C6C3A20236264653966643B0D0A7D0D0A2E752D436F6C6F722D32382D42472D2D6272207B0D0A20207374726F6B653A20236264653966643B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1385) := '236264653966643B0D0A7D0D0A2E752D436F6C6F722D32382D46472D2D747874207B0D0A2020636F6C6F723A20233035376562363B0D0A7D0D0A2E752D436F6C6F722D32382D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1386) := '233035376562363B0D0A7D0D0A2E752D436F6C6F722D32382D46472D2D66696C6C207B0D0A202066696C6C3A20233035376562363B0D0A7D0D0A2E752D436F6C6F722D32382D46472D2D6272207B0D0A20207374726F6B653A20233035376562363B0D0A';
wwv_flow_api.g_varchar2_table(1387) := '2020626F726465722D636F6C6F723A20233035376562363B0D0A7D0D0A2E752D436F6C6F722D32392D42472D2D747874207B0D0A2020636F6C6F723A20236666396339363B0D0A7D0D0A2E752D436F6C6F722D32392D42472D2D6267207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1388) := '636B67726F756E642D636F6C6F723A20236666396339363B0D0A7D0D0A2E752D436F6C6F722D32392D42472D2D66696C6C207B0D0A202066696C6C3A20236666396339363B0D0A7D0D0A2E752D436F6C6F722D32392D42472D2D6272207B0D0A20207374';
wwv_flow_api.g_varchar2_table(1389) := '726F6B653A20236666396339363B0D0A2020626F726465722D636F6C6F723A20236666396339363B0D0A7D0D0A2E752D436F6C6F722D32392D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32';
wwv_flow_api.g_varchar2_table(1390) := '392D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32392D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32';
wwv_flow_api.g_varchar2_table(1391) := '392D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D747874207B0D0A2020636F6C6F723A2023613961386561';
wwv_flow_api.g_varchar2_table(1392) := '3B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236139613865613B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D66696C6C207B0D0A202066696C6C3A2023613961386561';
wwv_flow_api.g_varchar2_table(1393) := '3B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D6272207B0D0A20207374726F6B653A20236139613865613B0D0A2020626F726465722D636F6C6F723A20236139613865613B0D0A7D0D0A2E752D436F6C6F722D33302D46472D2D747874207B0D0A';
wwv_flow_api.g_varchar2_table(1394) := '2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33302D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33302D46472D2D66696C6C207B0D';
wwv_flow_api.g_varchar2_table(1395) := '0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33302D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D666F6375';
wwv_flow_api.g_varchar2_table(1396) := '736564207B0D0A2020626F782D736861646F773A2030203020302031707820236666326435352C2030203020317078203070782072676261283235352C2034352C2038352C20302E35292021696D706F7274616E743B0D0A20206F75746C696E653A206E';
wwv_flow_api.g_varchar2_table(1397) := '6F6E653B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(1432484737596943143)
,p_theme_id=>42
,p_file_name=>'1432484313411943134.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535962409417330770)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535962681777330770)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535962820116330770)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535964046397330772)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535964247689330772)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535964939316330773)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535965395300330773)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535965987075330774)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535966521395330774)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535966745160330774)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535967692776330774)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535969221874330776)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535970679042330777)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535974114616330781)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535974309016330781)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535974790511330781)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535975182330330782)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535975709858330782)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535976374381330784)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535976536151330784)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535978139138330786)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535978833067330786)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535979126712330787)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535979859814330787)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535980135507330788)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535980614574330788)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535980920746330788)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535981187584330788)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535982190815330789)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535984008428330792)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535984834624330792)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535985856967330794)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535986590226330795)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535986826346330795)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535987558996330795)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535988239643330796)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535990665763330798)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535991751888330800)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535992948948330803)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535993913877330812)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535994187348330812)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535994323298330812)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535994519164330813)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535994778037330813)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535995135108330813)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535995892275330813)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535996237055330813)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535996450051330814)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535996652156330814)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535996904794330814)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535997154955330815)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(33535997486407330815)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535962400922330769)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(33535962143626330768)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535962596797330770)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535962143626330768)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(33535962409417330770)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535962711101330770)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535962143626330768)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(33535962681777330770)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535963005138330771)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535962143626330768)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(33535962820116330770)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535963078496330771)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535962143626330768)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(33535962409417330770)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535963142862330771)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535962143626330768)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(33535962681777330770)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535963304320330771)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(33535962143626330768)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(33535962409417330770)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535963328139330771)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535962143626330768)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(33535962681777330770)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535963481868330771)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535962143626330768)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(33535962409417330770)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535963549030330771)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535962143626330768)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(33535962820116330770)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535964134206330772)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(33535963767182330771)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(33535964046397330772)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535964392581330772)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(33535963767182330771)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(33535964247689330772)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535964461465330772)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(33535963767182330771)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(33535964046397330772)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535964536551330772)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(33535963767182330771)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(33535964247689330772)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535965079221330773)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(33535964939316330773)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535965132200330773)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(33535964939316330773)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535965238922330773)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(33535964939316330773)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535965414179330773)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535965508149330773)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535965643297330773)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535965772326330773)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(33535964939316330773)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535965891576330774)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535966030292330774)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535966194990330774)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535966212821330774)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535966364844330774)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535966489152330774)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535966696919330774)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(33535966521395330774)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535966860616330774)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(33535966745160330774)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535966937919330774)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(33535966521395330774)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535967101964330774)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535967177336330774)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(33535964046397330772)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535967266394330774)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535967318383330774)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(33535966745160330774)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535967450920330774)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535967584736330774)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535967749673330775)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(33535967692776330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535967885620330775)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(33535967692776330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535967914516330775)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535964636182330772)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(33535964046397330772)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535968330007330775)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535968408762330775)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535968579351330775)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535968632804330775)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535968785859330775)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535968831507330775)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535968983198330775)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535969082922330775)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535969182468330775)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535969347039330776)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(33535969221874330776)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535969411867330776)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(33535969221874330776)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535969569644330776)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(33535966745160330774)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535969664516330776)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535969739408330776)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(33535964046397330772)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535969847363330776)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(33535964046397330772)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535969997829330776)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(33535966745160330774)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535970093095330776)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535968014931330775)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(33535964046397330772)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535970592769330777)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535970359111330777)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535970717766330777)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535970359111330777)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(33535970679042330777)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535970885880330777)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535970359111330777)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(33535970679042330777)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535971000506330777)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535970359111330777)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535971087465330777)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535970359111330777)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535971174062330777)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535970359111330777)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(33535970679042330777)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535971330195330778)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535971285547330777)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535971478249330778)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535971285547330777)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535972044660330778)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535972163954330778)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535972294865330779)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535972403028330779)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(33535965395300330773)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535972429227330779)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535972551732330779)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535972666390330779)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535972792407330779)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535972891835330779)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(33535965987075330774)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535972963259330779)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(33535966521395330774)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535973016730330779)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(33535966745160330774)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535973129610330779)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(33535966521395330774)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535973265850330780)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535973407210330780)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(33535964046397330772)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535973501692330780)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(33535964046397330772)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535973563143330780)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(33535966745160330774)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535973627130330780)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535973750032330780)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535971723907330778)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(33535964046397330772)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535974251470330781)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535973855593330781)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(33535974114616330781)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535974488332330781)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535973855593330781)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(33535974309016330781)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535974573590330781)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535973855593330781)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535974654299330781)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535973855593330781)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(33535974309016330781)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535974896463330781)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535973855593330781)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(33535974790511330781)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535974972423330781)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535973855593330781)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(33535974790511330781)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535975280831330782)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(33535975085181330781)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(33535975182330330782)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535975342527330782)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(33535975085181330781)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535975489465330782)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(33535975085181330781)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(33535975182330330782)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535975906182330782)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(33535975579975330782)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(33535975709858330782)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535975991983330782)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535975579975330782)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(33535975709858330782)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535976092503330782)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(33535975579975330782)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535976437785330784)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(33535976374381330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535976652421330784)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535976799221330784)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(33535976374381330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535976876716330784)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535976963870330784)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(33535976374381330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535977016920330784)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535977121777330784)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535977245276330784)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(33535976374381330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535977336798330784)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(33535976374381330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535977412138330784)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535977529856330784)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535977693118330784)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535977777675330784)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535977890412330785)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535976295727330783)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535978078378330785)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535978302640330786)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(33535978139138330786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535978324631330786)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535978506110330786)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(33535978139138330786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535978515439330786)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535978628689330786)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(33535978139138330786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535978783599330786)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535978966841330787)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(33535978833067330786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535979095591330787)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(33535978833067330786)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535979247401330787)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(33535979126712330787)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535979353589330787)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(33535979126712330787)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535979492333330787)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(33535978833067330786)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535979591270330787)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535979644695330787)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(33535978139138330786)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535979719568330787)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535979954087330787)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535977914354330785)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(33535979859814330787)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535980247602330788)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535980053910330787)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(33535980135507330788)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535980318556330788)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535980053910330787)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(33535980135507330788)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535980727703330788)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535980544409330788)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(33535980614574330788)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535980812013330788)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535980544409330788)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(33535980614574330788)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535981071954330788)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535980544409330788)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(33535980920746330788)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535981269326330788)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535980544409330788)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(33535981187584330788)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535981365718330789)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(33535980544409330788)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(33535981187584330788)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535981413306330789)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(33535980544409330788)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(33535981187584330788)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535981586657330789)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535980544409330788)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(33535980920746330788)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535981608318330789)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535980544409330788)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535981801073330789)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535980544409330788)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(33535981187584330788)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535981916277330789)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(33535981884614330789)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(33535978833067330786)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535982250860330789)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(33535982023642330789)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535982372386330790)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535982023642330789)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535982429674330790)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535982023642330789)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535982574602330790)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535982023642330789)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535982643730330790)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535982023642330789)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535982797158330790)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(33535982023642330789)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535982814836330790)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(33535982023642330789)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535982988076330790)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(33535982023642330789)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535983185564330790)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(33535983044692330790)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535983267267330790)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535983044692330790)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535983327974330790)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535983044692330790)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535983504574330790)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(33535983044692330790)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535983583008330790)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(33535983044692330790)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(33535976536151330784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535983631004330790)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(33535983044692330790)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535983782578330790)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(33535983044692330790)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535983821822330790)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(33535983044692330790)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(33535982190815330789)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535984111388330792)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535984219153330792)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535984377915330792)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535984435757330792)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535984547367330792)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535984675184330792)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535984763373330792)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535984918001330792)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(33535984834624330792)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535985094932330793)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(33535984834624330792)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535985193572330793)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535985219769330793)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(33535984834624330792)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535985394822330794)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535985482922330794)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(33535984834624330792)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535985515592330794)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(33535983980477330791)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(33535984834624330792)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535985753270330794)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535985981584330794)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(33535985856967330794)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535986085584330794)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535986189317330794)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(33535985856967330794)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535986225874330794)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535986332931330794)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(33535985856967330794)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535986465986330794)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535986638842330795)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(33535986590226330795)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535986767107330795)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(33535986590226330795)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535986990414330795)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(33535986826346330795)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535987027141330795)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(33535986826346330795)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535987207674330795)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(33535986590226330795)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535987281395330795)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535987350725330795)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(33535985856967330794)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535987488543330795)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535987695789330795)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(33535987558996330795)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535987830367330796)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535987758052330795)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(33535986590226330795)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535987986749330796)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(33535987758052330795)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535988067891330796)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535987758052330795)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535988184432330796)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535987758052330795)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535988377385330796)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535987758052330795)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(33535988239643330796)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535988492608330796)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535987758052330795)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(33535988239643330796)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535988698314330796)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535988590987330796)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535988766236330796)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535988590987330796)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535988823575330796)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(33535988590987330796)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535988925915330796)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(33535988590987330796)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535989078759330796)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(33535988590987330796)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535989143156330796)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535988590987330796)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535989262808330796)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535988590987330796)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535989332212330797)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(33535988590987330796)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535989571134330797)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(33535989431986330797)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535989642329330797)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535989431986330797)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535989755920330797)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535989431986330797)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535989889824330797)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(33535989431986330797)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535990354235330798)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535990300909330798)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(33535986826346330795)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535990422100330798)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(33535990300909330798)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(33535984008428330792)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535990568362330798)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535990300909330798)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(33535986826346330795)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535990731504330799)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535990300909330798)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(33535990665763330798)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535990872969330799)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535990300909330798)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(33535986590226330795)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535990974223330800)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535990300909330798)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(33535986590226330795)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535991044224330800)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(33535990300909330798)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(33535990665763330798)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535991283994330800)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(33535991162169330800)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535991331485330800)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(33535991162169330800)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535991489488330800)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(33535991162169330800)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535991603798330800)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(33535991162169330800)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535991906403330800)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(33535991639153330800)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(33535991751888330800)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535991945084330801)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(33535991639153330800)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(33535991751888330800)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535992037877330801)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(33535991639153330800)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(33535991751888330800)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535993007835330803)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(33535992865926330803)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(33535992948948330803)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535993116827330803)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(33535992865926330803)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(33535992948948330803)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535994084205330812)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(33535993913877330812)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535994255067330812)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(33535994187348330812)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535994492956330812)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(33535994323298330812)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535994638203330813)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(33535994519164330813)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535994850653330813)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(33535994778037330813)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535994944270330813)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(33535994187348330812)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535995057027330813)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(33535994323298330812)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535995244551330813)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(33535995135108330813)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535995403716330813)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(33535995135108330813)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535995425091330813)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(33535995135108330813)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535995587071330813)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(33535993913877330812)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535995659504330813)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(33535994778037330813)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535995732485330813)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(33535994519164330813)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535995985075330813)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(33535995892275330813)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535996079774330813)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(33535993913877330812)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535996178205330813)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(33535993913877330812)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535996321329330813)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(33535996237055330813)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535996521287330814)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(33535996450051330814)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535996750143330814)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(33535996652156330814)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535996929528330814)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(33535996904794330814)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535997065853330815)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(33535996904794330814)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535997271562330815)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(33535997154955330815)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535997371147330815)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(33535996450051330814)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535997595566330815)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(33535997486407330815)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535997704339330815)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(33535997765582330815)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(33535997486407330815)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(33536596735762448267)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(33543711328086189676)
,p_shortcut_name=>'OK_TO_GET_NEXT_PREV_PK_VALUE'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Are you sure you want to leave this page without saving?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(33535998199108330817)
,p_name=>'APEX'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(33535997994146330815)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(33535935576824330758)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(33535990185964330798)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(33535997830894330815)
,p_nav_bar_list_template_id=>wwv_flow_api.id(33535990023195330797)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20160503093231'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29722989607267282762)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--displayIcons:t-Cards--3cols:t-Cards--colorize'
,p_plug_template=>wwv_flow_api.id(33535963701792330771)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(33621861816516623775)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29722989859939282765)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535963701792330771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p> This is the home page.'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33535999716248330823)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Maintenance'
,p_page_mode=>'NORMAL'
,p_step_title=>'Maintenance'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20160804050059'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33536364775291751102)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39507337766568368336)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535963701792330771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p> Maintenance Page'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39507337897827368337)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--displayIcons:t-Cards--3cols:t-Cards--colorize'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(39507301934886737821)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(33535985646353330794)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'List of Members'
,p_page_mode=>'NORMAL'
,p_step_title=>'List of Members'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170211170201'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33536686642208448373)
,p_plug_name=>'List of Members'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535971285547330777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MEMBER_ID, ',
'ACCOUNT_NO,',
'LAST_NAME,',
'FIRST_NAME,',
'PHASE_NO,',
'BLK_NO,',
'LOT_NO,',
'HOME_LOT_AREA,',
'OPEN_SPACE,',
'CMP_LOT,',
'MONTHLY_INCOME,',
'BIRTHDATE,',
'stat.status_desc as STATUS,',
'street_name',
'from HO_MEMBERS mem,',
'ho_mem_status stat',
'WHERE stat.status_id = mem.status_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(33536686962418448373)
,p_name=>'List of Members'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:4:&APP_SESSION.::::P4_MEMBER_ID:#MEMBER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'EMCY'
,p_internal_uid=>32104728154677184238
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33536687090038448376)
,p_db_column_name=>'MEMBER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Member Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33536687878906448381)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33536688283444448381)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33536688657132448382)
,p_db_column_name=>'PHASE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Phase No'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33536689472646448383)
,p_db_column_name=>'LOT_NO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Lot No'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33536689832585448383)
,p_db_column_name=>'HOME_LOT_AREA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Home Lot Area'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33536690294066448384)
,p_db_column_name=>'OPEN_SPACE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Open Space'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33536690615576448384)
,p_db_column_name=>'CMP_LOT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Cmp Lot'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33536691065585448385)
,p_db_column_name=>'MONTHLY_INCOME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Monthly Income'
,p_column_type=>'NUMBER'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33536691491300448385)
,p_db_column_name=>'BIRTHDATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Birthdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34548982265304835041)
,p_db_column_name=>'ACCOUNT_NO'
,p_display_order=>22
,p_column_identifier=>'N'
,p_column_label=>'Account no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34548982329204835042)
,p_db_column_name=>'BLK_NO'
,p_display_order=>32
,p_column_identifier=>'O'
,p_column_label=>'Blk no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34548982504682835043)
,p_db_column_name=>'STATUS'
,p_display_order=>42
,p_column_identifier=>'P'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53004817190731)
,p_db_column_name=>'STREET_NAME'
,p_display_order=>52
,p_column_identifier=>'Q'
,p_column_label=>'Street name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33548756455460216692)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'321167977'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'MEMBER_ID:LAST_NAME:FIRST_NAME:PHASE_NO:LOT_NO:HOME_LOT_AREA:OPEN_SPACE:CMP_LOT:MONTHLY_INCOME:BIRTHDATE_ID:STATUS:STREET_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33536692809608448389)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33536692223102448386)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33536686642208448373)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Member''s Info'
,p_page_mode=>'NORMAL'
,p_step_title=>'Member''s Info'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170227231845'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33536595466142448262)
,p_plug_name=>'Member''s Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33536693410463448392)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34548982599241835044)
,p_plug_name=>'Outstanding Balance'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p> Will Add Loan Information here...'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33536595995176448265)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P4_MEMBER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33536596151731448265)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33536595823527448265)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P4_MEMBER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33536596071584448265)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P4_MEMBER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33536678090386448271)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536678499221448290)
,p_name=>'P4_MEMBER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Member Id'
,p_source=>'MEMBER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536678905964448325)
,p_name=>'P4_ACCOUNT_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account No'
,p_source=>'ACCOUNT_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992440220330802)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536679229944448326)
,p_name=>'P4_LAST_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992440220330802)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536679691260448327)
,p_name=>'P4_FIRST_NAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(33535992440220330802)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536680078795448327)
,p_name=>'P4_PHASE_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phase No'
,p_source=>'PHASE_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536680490442448328)
,p_name=>'P4_BLK_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Blk No'
,p_source=>'BLK_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536680823734448328)
,p_name=>'P4_LOT_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lot No'
,p_source=>'LOT_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536681289625448328)
,p_name=>'P4_HOME_LOT_AREA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_source=>'HOME_LOT_AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536681644473448329)
,p_name=>'P4_OPEN_SPACE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_source=>'OPEN_SPACE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536682009560448329)
,p_name=>'P4_CMP_LOT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_source=>'CMP_LOT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536682506656448330)
,p_name=>'P4_MONTHLY_INCOME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_source=>'MONTHLY_INCOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536682846917448330)
,p_name=>'P4_BIRTHDATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_source=>'BIRTHDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33536683287691448331)
,p_name=>'P4_STATUS_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(33536595466142448262)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select status_desc, status_id',
'from ho_mem_status'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33536684082129448334)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HO_MEMBERS'
,p_attribute_02=>'HO_MEMBERS'
,p_attribute_03=>'P4_MEMBER_ID'
,p_attribute_04=>'MEMBER_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33536684423436448335)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(MEMBER_ID),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   HO_MEMBERS;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P4_MEMBER_ID := get_pk;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33536595823527448265)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33536684894138448335)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HO_MEMBERS'
,p_attribute_02=>'HO_MEMBERS'
,p_attribute_03=>'P4_MEMBER_ID'
,p_attribute_04=>'MEMBER_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33536685253215448336)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33536596071584448265)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Billing'
,p_page_mode=>'NORMAL'
,p_step_title=>'Billing'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Billing List'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170210235414'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27030350680315279870)
,p_plug_name=>'Info: Generate bill'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Click "Generate Bill" button to automatically Compute / Generate bill of members for the Month indicated.',
' '))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P5_V_VALUE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29722990613732282773)
,p_plug_name=>'Generate Bill'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33543686678136189364)
,p_plug_name=>'Billing List'
,p_region_name=>'p5_billing_list'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535971285547330777)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH prev_bill AS(',
'SELECT member_id, ( sum(tot_amt_due) - sum(nvl(amount_paid,0)) ) outstanding_balance',
'FROM ho.ho_billing_header',
'WHERE period_id != :P5_PERIOD_ID',
'GROUP BY member_ID)',
'select BILL_HDR_ID,bill_hdr_id bill_hdr_id_display,',
'       mem.MEMBER_ID,',
'mem.account_no, ',
'mem.last_name||'', ''||mem.first_name member_name,',
'       tot_amt_due + nvl(prev_bill.outstanding_Balance,0) AS TOT_AMT_DUE,',
'amount_paid,',
'       BILLING_DATE,',
'       DUE_DATE,',
'closed_flag,',
'( (tot_amt_due + nvl(prev_bill.outstanding_Balance,0) ) - nvl(amount_paid,0)) outstanding_balance',
'  FROM ho.HO_BILLING_HEADER bill,',
' ho.ho_members mem,',
'prev_bill',
'where bill.member_id=mem.member_id',
'and bill.member_id = prev_bill.member_id(+)',
'and period_id = :P5_PERIOD_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27030352182748279885)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'EMCY'
,p_internal_uid=>25598393375007015750
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34524088731851770736)
,p_db_column_name=>'BILL_HDR_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'-'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_BILL_HDR_ID:#BILL_HDR_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34548981787300835036)
,p_db_column_name=>'BILL_HDR_ID_DISPLAY'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Ctrl No.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34524088906216770737)
,p_db_column_name=>'MEMBER_ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Member id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34524089103317770739)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Due date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34548982042606835039)
,p_db_column_name=>'MEMBER_NAME'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Member''s Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34548982167145835040)
,p_db_column_name=>'BILLING_DATE'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Billing Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29722991634249282783)
,p_db_column_name=>'ACCOUNT_NO'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Account Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29722991797932282784)
,p_db_column_name=>'TOT_AMT_DUE'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Tot amt due'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29722991888912282785)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Amount paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321452982986308475)
,p_db_column_name=>'CLOSED_FLAG'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Closed Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321453026271308476)
,p_db_column_name=>'OUTSTANDING_BALANCE'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Outstanding Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(34524244763412146834)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'330922860'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'BILL_HDR_ID:BILL_HDR_ID_DISPLAY:MEMBER_NAME:DUE_DATE:BILLING_DATE:TOT_AMT_DUE:AMOUNT_PAID:OUTSTANDING_BALANCE:CLOSED_FLAG:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33543731208081189716)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36321453565954308481)
,p_plug_name=>'Info: Close Month'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p> This will close the current month and open a New month for Generation of Bills'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P5_V_VALUE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36321453472682308480)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(29722990613732282773)
,p_button_name=>'CLOSE_MONTH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close Month'
,p_button_position=>'BODY'
,p_button_condition=>'P5_BILL_GEN_FLAG'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29722990978120282776)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(29722990613732282773)
,p_button_name=>'GENERATE_BILL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate bill'
,p_button_position=>'BODY'
,p_button_condition=>'P5_BILL_GEN_FLAG'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33543692994021189619)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33543686678136189364)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29722991193770282778)
,p_name=>'P5_D_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(29722990613732282773)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select D_VALUE',
'FROM ho_parameters',
'where param_name = ''OPEN_MO'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36321453240943308478)
,p_name=>'P5_V_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(29722990613732282773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39758266870731483636)
,p_name=>'P5_PERIOD_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(29722990613732282773)
,p_prompt=>'Period name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39758267001802483637)
,p_name=>'P5_COVERED_DATES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(29722990613732282773)
,p_prompt=>'Covered dates'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39758267105168483638)
,p_name=>'P5_BILL_GEN_FLAG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(29722990613732282773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39758267185514483639)
,p_name=>'P5_PERIOD_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(29722990613732282773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39758267286184483640)
,p_name=>'P5_BILL_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(29722990613732282773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39758267367682483641)
,p_name=>'P5_DUE_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(29722990613732282773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(33543693467543189620)
,p_computation_sequence=>1
,p_computation_item=>'P6_BILL_HDR_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34524089223117770741)
,p_name=>'generate_bill'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(29722990978120282776)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34524089349170770742)
,p_event_id=>wwv_flow_api.id(34524089223117770741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'HO_generateBill(:P5_PERIOD_ID,:P5_BILL_DATE, :P5_DUE_DATE);'
,p_attribute_02=>'P5_PERIOD_ID'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34548982616176835045)
,p_event_id=>wwv_flow_api.id(34524089223117770741)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36321453674312308482)
,p_name=>'Close Month'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(36321453472682308480)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36321453791341308483)
,p_event_id=>wwv_flow_api.id(36321453674312308482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'x_next_mo DATE;',
'x_closed_mo DATE;',
'x_open_mo DATE;',
'x_next_period HO_PAY_PERIOD.period_id%TYPE;',
'BEGIN',
'',
'/*',
'FOR d IN (SELECT param_name, d_value ',
'            FROM HO_PARAMETERS ',
'          WHERE param_name like ''%MO'') LOOP',
'',
'IF  d.param_name=''NEXT_MO'' THEN',
'    x_next_mo := d.d_value;',
'ELSIF d.param_name=''OPEN_MO'' THEN',
'    x_open_mo := d.d_value;',
'END IF;    ',
'',
'END LOOP;',
'',
'UPDATE ho_parameters',
'set d_value = x_open_mo',
'WHERE param_name = ''CLOSED_MO'';',
'',
'UPDATE ho_parameters',
'set d_value = x_next_mo,',
'v_value = null',
'WHERE param_name = ''OPEN_MO'';',
'',
'UPDATE ho_parameters',
'set d_value =add_months(x_next_mo,1) ',
'WHERE param_name = ''NEXT_MO'';',
'',
'*/',
'',
'   UPDATE ho_pay_period',
'    set open_flag = ''N''',
'   WHERe period_id = :p5_period_id;',
'   ',
'   SELECT min(period_id)',
'     INTO x_next_period',
'     FROM ho_pay_period',
'    WHERE period_id > :p5_period_id',
'   ORDER BY period_id;',
'',
'',
'UPDATE ho_pay_period',
'SET open_flag = ''Y''',
'WHERE period_id = x_next_period;',
'',
'END;'))
,p_attribute_03=>'P5_D_VALUE,P5_V_VALUE'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36321453847238308484)
,p_event_id=>wwv_flow_api.id(36321453674312308482)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36321453334765308479)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Params'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT v_value, d_value',
'INTO :P5_V_VALUE, :P5_D_VALUE',
'FROM ho_parameters',
'WHERE param_name = ''OPEN_MO'';*/',
'',
'SELECT period_id',
', period_name',
', to_char(start_date,''Mon-DD'')|| '' to '' || to_char(end_date,''Mon-DD YYYY'') covered_dates',
', nvl(bill_gen_flag,''N'')',
', start_date',
', end_date',
'INTO :P5_PERIOD_ID',
', :P5_PERIOD_NAME',
', :P5_COVERED_DATES',
', :P5_BILL_GEN_FLAG',
', :P5_BILL_DATE',
', :P5_DUE_DATE',
'FROM ho.HO_PAY_PERIOD',
'WHERE open_flag = ''Y'';'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Billing info'
,p_page_mode=>'NORMAL'
,p_step_title=>'Billing info'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170305112534'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28504549348974171051)
,p_plug_name=>'Member''s Info'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33543694505476189622)
,p_plug_name=>'Statement Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33543718357065189686)
,p_name=>'Billing Detail for &P6_BILLING_DATE.'
,p_template=>wwv_flow_api.id(33535971723907330778)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'tran_id,',
'HO_GET_TRANTYPE(charge_type_id) charge_type,',
'TRANS_DESC,',
'amount',
'from HO_transactions',
'where ar_no = :P6_BILL_HDR_ID',
'and dr_cr = ''D'''))
,p_source_type=>'NATIVE_TABFORM'
,p_display_when_condition=>'P6_BILL_HDR_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'N'
,p_ajax_items_to_submit=>'P6_BILL_HDR_ID'
,p_query_row_template=>wwv_flow_api.id(33535980544409330788)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28504548974713171047)
,p_query_column_id=>1
,p_column_alias=>'TRAN_ID'
,p_column_display_sequence=>5
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36820743707993878937)
,p_query_column_id=>2
,p_column_alias=>'CHARGE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Charge type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36820743663347878936)
,p_query_column_id=>3
,p_column_alias=>'TRANS_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Trans desc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33543720274567189689)
,p_query_column_id=>4
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Amount (PHP)'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_BILLING_DEATAIL'
,p_ref_column_name=>'AMOUNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33543726930876189706)
,p_query_column_id=>5
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33543731863101189722)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33543694932525189623)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P6_BILL_HDR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33543722179794189697)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33543718357065189686)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP:P61_AR_NO,P61_MEMBER_ID,P61_PERIOD_ID:&P6_BILL_HDR_ID.,&P6_MEMBER_ID.,&P6_PERIOD_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33543711184646189675)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_button_name=>'GET_PREVIOUS_BILL_HDR_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992689124330802)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_BILL_HDR_ID'')'
,p_button_condition=>'P6_BILL_HDR_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33543711076748189675)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_button_name=>'GET_NEXT_BILL_HDR_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992689124330802)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_BILL_HDR_ID'')'
,p_button_condition=>'P6_BILL_HDR_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33543695165234189623)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33543694877175189623)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P6_BILL_HDR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33543695026712189623)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P6_BILL_HDR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33543722094256189697)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33543718357065189686)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from HO_BILLING_DETAIL',
'where BILL_HDR_ID = :P6_BILL_HDR_ID'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33543727380024189706)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(33543721940485189697)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33543715575362189681)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_BILL_HDR_ID:&P6_BILL_HDR_ID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(33543711076748189675)
,p_branch_sequence=>10
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33543715919138189682)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_BILL_HDR_ID:&P6_BILL_HDR_ID_PREV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(33543711184646189675)
,p_branch_sequence=>20
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33543710608738189675)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE,CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90151194190731)
,p_name=>'P6_MEMBERSHIP_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(28504549348974171051)
,p_prompt=>'Membership Type:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status_desc',
'from ho_mem_status s join ho_members m on s.status_id=m.status_id',
'where m.member_id=:P6_member_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90175188190732)
,p_name=>'P6_PERIOD_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(28504549348974171051)
,p_use_cache_before_default=>'NO'
,p_source=>'PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28504549614213171054)
,p_name=>'P6_AMT_DUE_PREV'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_prompt=>'Amount Due From Previous Bill'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(tot_amt_due)',
'FROM ho_billing_header',
'WHERE bill_hdr_id < :P6_BILL_HDR_ID',
'and member_id = :P6_MEMBER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>2
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_css_classes=>'align="right"'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28504549725443171055)
,p_name=>'P6_PREV_AMT_PAID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_prompt=>'Less: Payments (Thank You)'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(nvl(amount_paid,0))',
'FROM ho_billing_header',
'WHERE bill_hdr_id < :P6_BILL_HDR_ID',
'and member_id = :P6_MEMBER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>2
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28504549916330171057)
,p_name=>'P6_PREV_OUTSTANDING'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_prompt=>'Remaining Balance From Previous Bill'
,p_source=>':P6_AMT_DUE_PREV - :P6_PREV_AMT_PAID'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>2
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28504550162233171059)
,p_name=>'P6H_SUBHDR1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_prompt=>'Balance From Previous Bill'
,p_source=>'Balance From Previous Bill'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(33535992163012330801)
,p_item_css_classes=>'font:bold'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28504550254285171060)
,p_name=>'P6H_SUBHDR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_prompt=>'P6h subhdr2'
,p_source=>'Current Bill Charges'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(33535992163012330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28504550331211171061)
,p_name=>'P6H_SUBHDR2_3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_prompt=>'P6h subhdr2'
,p_source=>'Total Current Bill Charges'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(33535992163012330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28504550480075171062)
,p_name=>'P6_TOT_OUTSTANDING'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'nvl(to_number(:P6_PREV_OUTSTANDING),0)||'',''||',
'nvl(to_number(:P6_TOT_AMT_DUE),0)'))
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33543696725310189649)
,p_name=>'P6_BILL_HDR_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28504549348974171051)
,p_use_cache_before_default=>'NO'
,p_source=>'BILL_HDR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33543707183167189670)
,p_name=>'P6_MEMBER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28504549348974171051)
,p_use_cache_before_default=>'NO'
,p_source=>'MEMBER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33543707603605189670)
,p_name=>'P6_BILLING_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(28504549348974171051)
,p_use_cache_before_default=>'NO'
,p_source=>'BILLING_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33543707999283189671)
,p_name=>'P6_DUE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(28504549348974171051)
,p_use_cache_before_default=>'NO'
,p_source=>'DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33543713337886189678)
,p_name=>'P6_BILL_HDR_ID_NEXT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33543713721628189679)
,p_name=>'P6_BILL_HDR_ID_PREV'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33543714193695189679)
,p_name=>'P6_BILL_HDR_ID_COUNT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34524089913626770748)
,p_name=>'P6_MEMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(28504549348974171051)
,p_prompt=>'Member:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Last_name ||'', ''|| First_name',
'FROM HO_MEMBERS',
'WHERE member_id = :P6_MEMBER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34524090047553770749)
,p_name=>'P6_ACCOUNT_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28504549348974171051)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT account_no',
'from ho_members',
'where member_id = :p6_member_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34630093962003068341)
,p_name=>'P6_TOT_AMT_DUE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount Due This Month'
,p_source=>'TOT_AMT_DUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>2
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41620783908448782936)
,p_name=>'P6_TOT_OUTSTANDING_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(33543694505476189622)
,p_prompt=>'Total Outstanding Balance'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'nvl(to_number(:P6_PREV_OUTSTANDING),0)+',
'nvl(to_number(:P6_TOT_AMT_DUE),0)'))
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>2
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33543723441239189700)
,p_tabular_form_region_id=>wwv_flow_api.id(33543718357065189686)
,p_validation_name=>'CHARGE_TYPE_ID not null'
,p_validation_sequence=>30
,p_validation=>'CHARGE_TYPE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CHARGE_TYPE_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33543723842332189701)
,p_tabular_form_region_id=>wwv_flow_api.id(33543718357065189686)
,p_validation_name=>'CHARGE_TYPE_ID must be numeric'
,p_validation_sequence=>30
,p_validation=>'CHARGE_TYPE_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CHARGE_TYPE_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33543724255187189701)
,p_tabular_form_region_id=>wwv_flow_api.id(33543718357065189686)
,p_validation_name=>'AMOUNT not null'
,p_validation_sequence=>40
,p_validation=>'AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'AMOUNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33543724681513189702)
,p_tabular_form_region_id=>wwv_flow_api.id(33543718357065189686)
,p_validation_name=>'AMOUNT must be numeric'
,p_validation_sequence=>40
,p_validation=>'AMOUNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'AMOUNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33543709177453189672)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HO_BILLING_HEADER'
,p_attribute_02=>'HO_BILLING_HEADER'
,p_attribute_03=>'P6_BILL_HDR_ID'
,p_attribute_04=>'BILL_HDR_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33543715192303189681)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HO_BILLING_HEADER'
,p_attribute_03=>'P6_BILL_HDR_ID'
,p_attribute_04=>'BILL_HDR_ID'
,p_attribute_07=>'BILLING_DATE'
,p_attribute_08=>'BILL_HDR_ID'
,p_attribute_09=>'P6_BILL_HDR_ID_NEXT'
,p_attribute_10=>'P6_BILL_HDR_ID_PREV'
,p_attribute_13=>'P6_BILL_HDR_ID_COUNT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33543709512929189673)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(bill_hdr_id),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   ho_billing_header;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'begin',
'    :P6_BILL_HDR_ID := get_pk;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33543694877175189623)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33543709969989189674)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HO_BILLING_HEADER'
,p_attribute_02=>'HO_BILLING_HEADER'
,p_attribute_03=>'P6_BILL_HDR_ID'
,p_attribute_04=>'BILL_HDR_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33543724989238189702)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33543718357065189686)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'HO_TRANSACTIONS'
,p_attribute_03=>'TRAN_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33543694932525189623)
,p_process_when=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33543725363554189702)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33543718357065189686)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'HO_TRANSACTIONS'
,p_attribute_03=>'TRAN_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33543695026712189623)
,p_process_when=>'APPLY_CHANGES_MRD'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33543710379348189674)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33543695026712189623)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Member Status'
,p_page_mode=>'NORMAL'
,p_step_title=>'Update '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170210235808'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33550965633570467731)
,p_name=>'Member Status'
,p_template=>wwv_flow_api.id(33535971723907330778)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"STATUS_ID",',
'"STATUS_ID" STATUS_ID_DISPLAY,',
'"STATUS_DESC"',
'from ho."HO_MEM_STATUS"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(33535980544409330788)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33550966333317467733)
,p_query_column_id=>1
,p_column_alias=>'STATUS_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_MEM_STATUS'
,p_ref_column_name=>'STATUS_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33550966798843467735)
,p_query_column_id=>2
,p_column_alias=>'STATUS_ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Status Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_MEM_STATUS'
,p_ref_column_name=>'STATUS_ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33550967148545467735)
,p_query_column_id=>3
,p_column_alias=>'STATUS_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Status Desc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_MEM_STATUS'
,p_ref_column_name=>'STATUS_DESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33550972326275467743)
,p_query_column_id=>4
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33550973209045467745)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33550968782195467738)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33550965633570467731)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33550968539023467738)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33550965633570467731)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33550968417290467738)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33550965633570467731)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33550968639843467738)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33550965633570467731)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33550972773976467743)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(33550968539023467738)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33550970315225467740)
,p_tabular_form_region_id=>wwv_flow_api.id(33550965633570467731)
,p_validation_name=>'STATUS_DESC not null'
,p_validation_sequence=>30
,p_validation=>'STATUS_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(33550968539023467738)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'STATUS_DESC'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33550970685387467741)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33550965633570467731)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'HO_MEM_STATUS'
,p_attribute_03=>'STATUS_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33550968539023467738)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33550971030799467741)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33550965633570467731)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'HO_MEM_STATUS'
,p_attribute_03=>'STATUS_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Generate Bill'
,p_page_mode=>'NORMAL'
,p_step_title=>'Generate Bill'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20160504045836'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29722990328276282770)
,p_plug_name=>'Generate Billing Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535963701792330771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33754385670374871604)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29722990282078282769)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_api.id(33754385670374871604)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535963701792330771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Generate Monthly Billing Info. <br>',
'This could take a while'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29722990578736282772)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(29722990328276282770)
,p_button_name=>'Generate_Bill'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992689124330802)
,p_button_image_alt=>'Generate bill'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29722990444986282771)
,p_name=>'P8_PAY_PERIOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(29722990328276282770)
,p_prompt=>'Pay period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Jan-2016;Return1,Feb-2016;Return2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Parameter Settings'
,p_page_mode=>'NORMAL'
,p_step_title=>'Parameter Settings'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170211000400'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29722991567497282782)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33919391772138802623)
,p_name=>'Parameter Settings'
,p_template=>wwv_flow_api.id(33535971723907330778)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"PARAM_ID",',
'"PARAM_ID" PARAM_ID_DISPLAY,',
'"PARAM_NAME",',
'"REMARKS",',
'"N_VALUE",',
'"V_VALUE",',
'"D_VALUE",',
'"LAST_UPDATED_BY",',
'"LAST_UPDATED_DATE"',
'from ho."HO_PARAMETERS"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(33535980544409330788)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33919392507270802626)
,p_query_column_id=>1
,p_column_alias=>'PARAM_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'S'
,p_pk_col_source=>'HO_PARAM_SEQ'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PARAMETERS'
,p_ref_column_name=>'PARAM_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33919392874232802626)
,p_query_column_id=>2
,p_column_alias=>'PARAM_ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Param Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PARAMETERS'
,p_ref_column_name=>'PARAM_ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33919393251674802627)
,p_query_column_id=>3
,p_column_alias=>'PARAM_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Param Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PARAMETERS'
,p_ref_column_name=>'PARAM_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33919393686621802628)
,p_query_column_id=>4
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>5
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PARAMETERS'
,p_ref_column_name=>'REMARKS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33919394017994802629)
,p_query_column_id=>5
,p_column_alias=>'N_VALUE'
,p_column_display_sequence=>6
,p_column_heading=>'N Value'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PARAMETERS'
,p_ref_column_name=>'N_VALUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33919394489159802629)
,p_query_column_id=>6
,p_column_alias=>'V_VALUE'
,p_column_display_sequence=>7
,p_column_heading=>'V Value'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PARAMETERS'
,p_ref_column_name=>'V_VALUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33919394858111802629)
,p_query_column_id=>7
,p_column_alias=>'D_VALUE'
,p_column_display_sequence=>8
,p_column_heading=>'D Value'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PARAMETERS'
,p_ref_column_name=>'D_VALUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33919395277753802629)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Last Updated By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PARAMETERS'
,p_ref_column_name=>'LAST_UPDATED_BY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33919395681695802630)
,p_query_column_id=>9
,p_column_alias=>'LAST_UPDATED_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Last Updated Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PARAMETERS'
,p_ref_column_name=>'LAST_UPDATED_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33919405924750802648)
,p_query_column_id=>10
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33919399061651802639)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33919391772138802623)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33919398824345802639)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33919391772138802623)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33919398724426802639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33919391772138802623)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33919398918043802639)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33919391772138802623)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33919406393028802649)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(33919398824345802639)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33919400660461802641)
,p_tabular_form_region_id=>wwv_flow_api.id(33919391772138802623)
,p_validation_name=>'PARAM_NAME not null'
,p_validation_sequence=>30
,p_validation=>'PARAM_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(33919398824345802639)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'PARAM_NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33919401075276802642)
,p_tabular_form_region_id=>wwv_flow_api.id(33919391772138802623)
,p_validation_name=>'REMARKS not null'
,p_validation_sequence=>40
,p_validation=>'REMARKS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(33919398824345802639)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'REMARKS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33919401466979802643)
,p_tabular_form_region_id=>wwv_flow_api.id(33919391772138802623)
,p_validation_name=>'N_VALUE must be numeric'
,p_validation_sequence=>50
,p_validation=>'N_VALUE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(33919398824345802639)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'N_VALUE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33919401822861802643)
,p_tabular_form_region_id=>wwv_flow_api.id(33919391772138802623)
,p_validation_name=>'D_VALUE must be a valid date'
,p_validation_sequence=>70
,p_validation=>'D_VALUE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(33919398824345802639)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'D_VALUE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33919402242596802643)
,p_tabular_form_region_id=>wwv_flow_api.id(33919391772138802623)
,p_validation_name=>'LAST_UPDATED_DATE must be a valid date'
,p_validation_sequence=>90
,p_validation=>'LAST_UPDATED_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(33919398824345802639)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'LAST_UPDATED_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33919402566420802644)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33919391772138802623)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'HO_PARAMETERS'
,p_attribute_03=>'PARAM_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33919398824345802639)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33919402908376802645)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33919391772138802623)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'HO_PARAMETERS'
,p_attribute_03=>'PARAM_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Collections'
,p_page_mode=>'NORMAL'
,p_step_title=>'Collections'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Collections'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170210235555'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33623377301621561322)
,p_plug_name=>'Collections'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(33535971285547330777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ht.period_id, tran_id, ',
'ar_no,',
'mem.last_name||'', ''||mem.first_name payor, ',
'mem.account_no payor_acct_no,',
'mem.phase_no payor_phase_no,',
'amount,',
'trans_date,',
'unapplied_amt',
'From ho.ho_transactions ht,',
'ho.ho_members mem',
'where 1=1',
'and ht.member_id =  mem.member_id',
'and dr_cr = ''C''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(36321452069342308466)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'EMCY'
,p_internal_uid=>34889493261601044331
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321452134252308467)
,p_db_column_name=>'TRAN_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'-'
,p_column_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP:P31_TRAN_ID:#TRAN_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321452272717308468)
,p_db_column_name=>'AR_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'AR No.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321452398538308469)
,p_db_column_name=>'PAYOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Member''s Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321452450471308470)
,p_db_column_name=>'PAYOR_ACCT_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321452579933308471)
,p_db_column_name=>'PAYOR_PHASE_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Phase Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321452640254308472)
,p_db_column_name=>'AMOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321452734905308473)
,p_db_column_name=>'TRANS_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Date Paid'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321452893211308474)
,p_db_column_name=>'UNAPPLIED_AMT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Unapplied amt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41931248037001938436)
,p_db_column_name=>'PERIOD_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Period id'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(37260102591360783731)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'358281438'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TRAN_ID:AR_NO:PAYOR:PAYOR_ACCT_NO:PAYOR_PHASE_NO:AMOUNT:UNAPPLIED_AMT:TRANS_DATE::PERIOD_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33623430744201568302)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623394281610564779)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33623377301621561322)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(33623394806090564780)
,p_computation_sequence=>1
,p_computation_item=>'P11_PAYMENT_HDR_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Payment Info'
,p_page_mode=>'NORMAL'
,p_step_title=>'Payment Info'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20160618091635'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33623401459739567789)
,p_plug_name=>'Payment Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33623417875372568271)
,p_name=>'Payment Details'
,p_template=>wwv_flow_api.id(33535971723907330778)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"PAYMENT_DTL_ID",',
'"PAYMENT_HDR_ID",',
'"BILL_DTL_ID",',
'"AMOUNT"',
'from "#OWNER#"."HO_PAYMENT_DETAIL"',
'where "PAYMENT_HDR_ID" = :P11_PAYMENT_HDR_ID',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P11_PAYMENT_HDR_ID'
,p_query_row_template=>wwv_flow_api.id(33535980544409330788)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623426450452568290)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623418523690568273)
,p_query_column_id=>2
,p_column_alias=>'PAYMENT_DTL_ID'
,p_column_display_sequence=>3
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'F'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(payment_dtl_id),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   HO_PAYMENT_DETAIL;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PAYMENT_DETAIL'
,p_ref_column_name=>'PAYMENT_DTL_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623418952483568274)
,p_query_column_id=>3
,p_column_alias=>'PAYMENT_HDR_ID'
,p_column_display_sequence=>4
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_column_default=>'P11_PAYMENT_HDR_ID'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PAYMENT_DETAIL'
,p_ref_column_name=>'PAYMENT_HDR_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623419333021568274)
,p_query_column_id=>4
,p_column_alias=>'BILL_DTL_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Bill Dtl Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PAYMENT_DETAIL'
,p_ref_column_name=>'BILL_DTL_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623419714090568274)
,p_query_column_id=>5
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PAYMENT_DETAIL'
,p_ref_column_name=>'AMOUNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35007670249516032340)
,p_query_column_id=>6
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>2
,p_column_heading=>'Charge Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33623431362841568303)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34630093849786068340)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(33623431362841568303)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535963701792330771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<font color=red> **CURRENTLY TESTING THIS PAGE. ** </FONT> ',
'<!--',
'<p> Fields with <font color=red>*</font> are required. </p>',
'-->'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(35007670548667032343)
,p_name=>'Payment Allocation'
,p_template=>wwv_flow_api.id(33535971723907330778)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select hpd.*, hct.charge_type_short',
'from ho_payment_detail hpd,',
'ho_charge_type hct',
'WHERE hct.charge_type_id = hpd.charge_type_id',
'and hpd.PAYMENT_HDR_ID= :P11_PAYMENT_HDR_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'P11_PAYMENT_HDR_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(33535980544409330788)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35007670677517032344)
,p_query_column_id=>1
,p_column_alias=>'PAYMENT_DTL_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35007670739161032345)
,p_query_column_id=>2
,p_column_alias=>'PAYMENT_HDR_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35007670827735032346)
,p_query_column_id=>3
,p_column_alias=>'BILL_DTL_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35007670920031032347)
,p_query_column_id=>4
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>5
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35007671090066032348)
,p_query_column_id=>5
,p_column_alias=>'CHARGE_TYPE_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35007671197833032349)
,p_query_column_id=>6
,p_column_alias=>'CHARGE_TYPE_SHORT'
,p_column_display_sequence=>4
,p_column_heading=>'Charge Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623401879285567790)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P11_PAYMENT_HDR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623421683399568283)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33623417875372568271)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623411099559568256)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_button_name=>'GET_PREVIOUS_PAYMENT_HDR_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992689124330802)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_PAYMENT_HDR_ID'')'
,p_button_condition=>'P11_PAYMENT_HDR_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623410997956568256)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_button_name=>'GET_NEXT_PAYMENT_HDR_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992689124330802)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_PAYMENT_HDR_ID'')'
,p_button_condition=>'P11_PAYMENT_HDR_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623402057685567790)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623401762788567790)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P11_PAYMENT_HDR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623401985620567790)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P11_PAYMENT_HDR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623421604433568283)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33623417875372568271)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from "#OWNER#"."HO_PAYMENT_DETAIL"',
'where "PAYMENT_HDR_ID" = :P11_PAYMENT_HDR_ID'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33623426905047568290)
,p_branch_name=>'Go To Page 11'
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33623415154550568266)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_PAYMENT_HDR_ID:&P11_PAYMENT_HDR_ID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(33623410997956568256)
,p_branch_sequence=>10
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33623415576935568266)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_PAYMENT_HDR_ID:&P11_PAYMENT_HDR_ID_PREV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(33623411099559568256)
,p_branch_sequence=>20
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33623410569839568255)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33623406787830568230)
,p_name=>'P11_PAYMENT_HDR_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_use_cache_before_default=>'NO'
,p_source=>'PAYMENT_HDR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33623407091417568249)
,p_name=>'P11_BILL_HDR_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'AR NO.:'
,p_source=>'BILL_HDR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT bill_hdr_id d, bill_hdr_id r',
'FROM ho_billing_header',
'where member_id = :P11_Member_id'))
,p_lov_cascade_parent_items=>'P11_MEMBER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_display_when=>'P11_PAYMENT_HDR_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(33535992440220330802)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33623407462593568250)
,p_name=>'P11_AMOUNT'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount Paid:'
,p_source=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(33535992440220330802)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33623407852870568250)
,p_name=>'P11_DATE_PAID'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Date Paid:'
,p_source=>'DATE_PAID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(33535992440220330802)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33623408257784568251)
,p_name=>'P11_RECEIVED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Received By:'
,p_source=>'RECEIVED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33623412928807568260)
,p_name=>'P11_PAYMENT_HDR_ID_NEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33623413330037568260)
,p_name=>'P11_PAYMENT_HDR_ID_PREV'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33623413768837568261)
,p_name=>'P11_PAYMENT_HDR_ID_COUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34524090166512770750)
,p_name=>'P11_MEMBER_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_prompt=>'Payor:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT last_name ||'', ''||first_name, member_id',
'from HO_MEMBERS;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P11_PAYMENT_HDR_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(33535992440220330802)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34630093454215068336)
,p_name=>'P11_BILL_DUE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_prompt=>'Due Date:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34630093793695068339)
,p_name=>'P11_BILL_TOT_AMT_DUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_prompt=>'Total Amount Due:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35092992510882001536)
,p_name=>'P11_MEMBER_ID_DSP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_prompt=>'Payor:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select last_name ||'', ''||first_name',
'from ho_members',
'where member_id in (select member_id',
' from ho_billing_header',
'where bill_hdr_id =:P11_BILL_HDR_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT last_name ||'', ''||first_name, member_id',
'from HO_MEMBERS;'))
,p_display_when=>'P11_PAYMENT_HDR_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(33535992440220330802)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35092992697712001537)
,p_name=>'P11_BILL_HDR_ID_DSP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(33623401459739567789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'AR NO.:'
,p_source=>'BILL_HDR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT bill_hdr_id d, bill_hdr_id r',
'FROM ho_billing_header',
'where member_id = :P11_Member_id'))
,p_display_when=>'P11_PAYMENT_HDR_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(33535992440220330802)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33623422967998568285)
,p_tabular_form_region_id=>wwv_flow_api.id(33623417875372568271)
,p_validation_name=>'BILL_DTL_ID not null'
,p_validation_sequence=>30
,p_validation=>'BILL_DTL_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'BILL_DTL_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33623423318377568286)
,p_tabular_form_region_id=>wwv_flow_api.id(33623417875372568271)
,p_validation_name=>'BILL_DTL_ID must be numeric'
,p_validation_sequence=>30
,p_validation=>'BILL_DTL_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'BILL_DTL_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33623423740322568287)
,p_tabular_form_region_id=>wwv_flow_api.id(33623417875372568271)
,p_validation_name=>'AMOUNT not null'
,p_validation_sequence=>40
,p_validation=>'AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'AMOUNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33623424134556568287)
,p_tabular_form_region_id=>wwv_flow_api.id(33623417875372568271)
,p_validation_name=>'AMOUNT must be numeric'
,p_validation_sequence=>40
,p_validation=>'AMOUNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'AMOUNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34630093602484068337)
,p_name=>'Populate Billing Details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_BILL_HDR_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34630093647170068338)
,p_event_id=>wwv_flow_api.id(34630093602484068337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT tot_amt_due, due_date',
'INTO :P11_BILL_TOT_AMT_DUE, :P11_BILL_DUE_DATE',
'FROM ho_billing_header',
'WHERE bill_hdr_id = :P11_BILL_HDR_ID;'))
,p_attribute_02=>'P11_BILL_HDR_ID'
,p_attribute_03=>'P11_BILL_TOT_AMT_DUE,P11_BILL_DUE_DATE'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33623409090583568253)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HO_PAYMENT_HEADER'
,p_attribute_02=>'HO_PAYMENT_HEADER'
,p_attribute_03=>'P11_PAYMENT_HDR_ID'
,p_attribute_04=>'PAYMENT_HDR_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33623414749846568265)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HO_PAYMENT_HEADER'
,p_attribute_03=>'P11_PAYMENT_HDR_ID'
,p_attribute_04=>'PAYMENT_HDR_ID'
,p_attribute_07=>'PAYMENT_HDR_ID'
,p_attribute_08=>'PAYMENT_HDR_ID'
,p_attribute_09=>'P11_PAYMENT_HDR_ID_NEXT'
,p_attribute_10=>'P11_PAYMENT_HDR_ID_PREV'
,p_attribute_13=>'P11_PAYMENT_HDR_ID_COUNT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33623409440491568253)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE',
'   L_PRIMARY_KEY NUMBER;',
'BEGIN',
'   SELECT NVL(MAX(payment_hdr_id),0) + 1',
'   INTO   L_PRIMARY_KEY',
'   FROM   HO_PAYMENT_HEADER;',
'',
'   RETURN L_PRIMARY_KEY;',
'END;',
'    end; ',
'',
'begin',
'    :P11_PAYMENT_HDR_ID := get_pk;',
'    :P11_RECEIVED_BY := UPPER(v(''APP_USER''));',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33623401762788567790)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33623409816132568254)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HO_PAYMENT_HEADER'
,p_attribute_02=>'HO_PAYMENT_HEADER'
,p_attribute_03=>'P11_PAYMENT_HDR_ID'
,p_attribute_04=>'PAYMENT_HDR_ID'
,p_attribute_09=>'P11_PAYMENT_HDR_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35007670115699032339)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'apply_payment_detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'p_payment_hdr_id NUMBER;',
'v_bill_hdr_id ho_payment_header.bill_hdr_id%TYPE;',
'v_payt_dtl_pk ho_payment_detail.PAYMENT_DTL_ID%TYPE;',
'v_tot_amt_paid NUMBER;',
'',
'begin',
'',
'p_payment_hdr_id:= :P11_PAYMENT_HDR_ID;',
'',
'SELECT bill_hdr_id, amount',
'  INTO v_bill_hdr_id, v_tot_amt_paid',
'  FROM ho_payment_header',
'  WHERE payment_hdr_id = p_payment_hdr_id;',
' ',
' SELECT max(payment_dtl_id)    ',
'   INTO v_payt_dtl_pk',
'   FROM ho_payment_detail;',
' ',
' v_payt_dtl_pk := nvl(v_payt_dtl_pk,0);      ',
' ',
'',
'    FOR app IN (select b.* ,c.priority',
'                From ho_billing_detail b, ho_charge_type c',
'                where bill_hdr_id =v_bill_hdr_id',
'                and c.charge_type_id = b.charge_type_id',
'                and c.classification in (''F'',''C'')',
'                order by c.priority) LOOP',
'',
'     IF v_tot_amt_paid >= app.amount  THEN',
'        ',
'        v_payt_dtl_pk := v_payt_dtl_pk + 1;',
'        ',
'        INSERT INTO ho_payment_detail (payment_dtl_id, payment_hdr_id, bill_dtl_id, amount, charge_type_id)',
'        VALUES (v_payt_dtl_pk, p_payment_hdr_id , app.bill_dtl_id, app.amount, app.charge_type_id);',
'        ',
'        v_tot_amt_paid := v_tot_amt_paid - app.amount;',
'                 ',
'     END IF;',
' ',
'   END LOOP;',
'',
'',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33623401762788567790)
,p_process_success_message=>' Payment Applied'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33623424446110568287)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33623417875372568271)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'HO_PAYMENT_DETAIL'
,p_attribute_03=>'PAYMENT_DTL_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33623424906074568288)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33623417875372568271)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'HO_PAYMENT_DETAIL'
,p_attribute_03=>'PAYMENT_DTL_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_MRD'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33623410271312568254)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33623401985620567790)
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Pay Periods'
,p_page_mode=>'NORMAL'
,p_step_title=>'Pay Periods'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170211000328'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39558885434985576303)
,p_name=>'Pay Periods'
,p_template=>wwv_flow_api.id(33535971723907330778)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"PERIOD_ID",',
'"PERIOD_ID" PERIOD_ID_DISPLAY,',
'"PERIOD_NAME",',
'"START_DATE",',
'"END_DATE",',
'"OPEN_FLAG"',
'from ho."HO_PAY_PERIOD"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(33535980544409330788)
,p_query_num_rows=>12
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39558886189494576307)
,p_query_column_id=>1
,p_column_alias=>'PERIOD_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PAY_PERIOD'
,p_ref_column_name=>'PERIOD_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39558886570177576308)
,p_query_column_id=>2
,p_column_alias=>'PERIOD_ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Period Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PAY_PERIOD'
,p_ref_column_name=>'PERIOD_ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39558906911250576309)
,p_query_column_id=>3
,p_column_alias=>'PERIOD_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Period Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PAY_PERIOD'
,p_ref_column_name=>'PERIOD_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39558907338715576309)
,p_query_column_id=>4
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PAY_PERIOD'
,p_ref_column_name=>'START_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39558907778328576309)
,p_query_column_id=>5
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PAY_PERIOD'
,p_ref_column_name=>'END_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39558908148507576310)
,p_query_column_id=>6
,p_column_alias=>'OPEN_FLAG'
,p_column_display_sequence=>7
,p_column_heading=>'Open Flag'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'Y'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_PAY_PERIOD'
,p_ref_column_name=>'OPEN_FLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39558916747660576341)
,p_query_column_id=>7
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39558917665507576345)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39558910689548576329)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(39558885434985576303)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39558910492039576329)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(39558885434985576303)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39558910330569576329)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39558885434985576303)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39558910552506576329)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39558885434985576303)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(39558917116134576341)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(39558910492039576329)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39558912283556576336)
,p_tabular_form_region_id=>wwv_flow_api.id(39558885434985576303)
,p_validation_name=>'PERIOD_NAME not null'
,p_validation_sequence=>30
,p_validation=>'PERIOD_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(39558910492039576329)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'PERIOD_NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39558912695090576337)
,p_tabular_form_region_id=>wwv_flow_api.id(39558885434985576303)
,p_validation_name=>'START_DATE not null'
,p_validation_sequence=>40
,p_validation=>'START_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(39558910492039576329)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39558913063504576337)
,p_tabular_form_region_id=>wwv_flow_api.id(39558885434985576303)
,p_validation_name=>'START_DATE must be a valid date'
,p_validation_sequence=>40
,p_validation=>'START_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(39558910492039576329)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'START_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39558913473574576337)
,p_tabular_form_region_id=>wwv_flow_api.id(39558885434985576303)
,p_validation_name=>'END_DATE not null'
,p_validation_sequence=>50
,p_validation=>'END_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(39558910492039576329)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'END_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39558913886261576337)
,p_tabular_form_region_id=>wwv_flow_api.id(39558885434985576303)
,p_validation_name=>'END_DATE must be a valid date'
,p_validation_sequence=>50
,p_validation=>'END_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(39558910492039576329)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'END_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39558914156072576338)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(39558885434985576303)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'HO_PAY_PERIOD'
,p_attribute_03=>'PERIOD_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39558910492039576329)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39558914541587576338)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(39558885434985576303)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'HO_PAY_PERIOD'
,p_attribute_03=>'PERIOD_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Charge Types'
,p_page_mode=>'NORMAL'
,p_step_title=>'Charge Types'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170211131357'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29722990087611282767)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29722990168001282768)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(29722990087611282767)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535963701792330771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p> Short Information about this page ',
'</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33623603472950640743)
,p_name=>'List of Transaction Types'
,p_template=>wwv_flow_api.id(33535971723907330778)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent3:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from ho.HO_CHARGE_TYPE',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(33535980544409330788)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623604176324640746)
,p_query_column_id=>1
,p_column_alias=>'CHARGE_TYPE_ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_CHARGE_TYPE'
,p_ref_column_name=>'CHARGE_TYPE_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623604971404640747)
,p_query_column_id=>2
,p_column_alias=>'CHARGE_TYPE_SHORT'
,p_column_display_sequence=>3
,p_column_heading=>'Transaction Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_CHARGE_TYPE'
,p_ref_column_name=>'CHARGE_TYPE_SHORT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623605355812640748)
,p_query_column_id=>3
,p_column_alias=>'CHARGE_TYPE_LONG'
,p_column_display_sequence=>4
,p_column_heading=>'Charge Type Long'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_CHARGE_TYPE'
,p_ref_column_name=>'CHARGE_TYPE_LONG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623605759245640749)
,p_query_column_id=>4
,p_column_alias=>'CLASSIFICATION'
,p_column_display_sequence=>5
,p_column_heading=>'Classification'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(33740259853288727871)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623606138768640749)
,p_query_column_id=>5
,p_column_alias=>'PRIORITY'
,p_column_display_sequence=>6
,p_column_heading=>'Priority'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'EMCY'
,p_ref_table_name=>'HO_CHARGE_TYPE'
,p_ref_column_name=>'PRIORITY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29722989909992282766)
,p_query_column_id=>6
,p_column_alias=>'FIXED_AMT'
,p_column_display_sequence=>7
,p_column_heading=>'Fixed amt'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34524090398551770752)
,p_query_column_id=>7
,p_column_alias=>'MANUAL_ENTRY_FLAG'
,p_column_display_sequence=>8
,p_column_heading=>'Manual Entry'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Y;Y,N;N'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34524090457439770753)
,p_query_column_id=>8
,p_column_alias=>'COMPUTE_INTEREST_FLAG'
,p_column_display_sequence=>9
,p_column_heading=>'Compute Interest'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Y;Y,N;N'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34524090558442770754)
,p_query_column_id=>9
,p_column_alias=>'INTEREST_RATE'
,p_column_display_sequence=>10
,p_column_heading=>'Interest rate'
,p_use_as_row_header=>'N'
,p_column_format=>'990D0000'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36321449039626308436)
,p_query_column_id=>10
,p_column_alias=>'CR_DR'
,p_column_display_sequence=>11
,p_column_heading=>'CR / DR'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Credit;C,Debit;D'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36321451714058308463)
,p_query_column_id=>11
,p_column_alias=>'INTEREST_TRANS_TYPE'
,p_column_display_sequence=>12
,p_column_heading=>'Interest Trans Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select charge_type_short, charge_type_id',
'from ho_charge_type'))
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36321451877912308464)
,p_query_column_id=>12
,p_column_alias=>'INTEREST_START_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Interest Start Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36321452005710308465)
,p_query_column_id=>13
,p_column_alias=>'ACTIVE_FLAG'
,p_column_display_sequence=>14
,p_column_heading=>'Active flag'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Y;Y,N;N'
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36516573094931)
,p_query_column_id=>14
,p_column_alias=>'MEM_STATUS'
,p_column_display_sequence=>15
,p_column_heading=>'Mem status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33623633027703640769)
,p_query_column_id=>15
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623628675774640758)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33623603472950640743)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623628471978640758)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33623603472950640743)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623628387932640758)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33623603472950640743)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33623628539944640758)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33623603472950640743)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33623633410499640769)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(33623628471978640758)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(33623630107753640763)
,p_tabular_form_region_id=>wwv_flow_api.id(33623603472950640743)
,p_validation_name=>'PRIORITY must be numeric'
,p_validation_sequence=>60
,p_validation=>'PRIORITY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(33623628471978640758)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'PRIORITY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33623630445617640764)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33623603472950640743)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'HO_CHARGE_TYPE'
,p_attribute_03=>'CHARGE_TYPE_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(33623628471978640758)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33623630821556640765)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33623603472950640743)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'HO_CHARGE_TYPE'
,p_attribute_03=>'CHARGE_TYPE_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Reports'
,p_page_mode=>'NORMAL'
,p_step_title=>'Reports'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20160914091825'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41706298411269433927)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41706502947093481012)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535963701792330771)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(41706363418216467592)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(33535987758052330795)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Monthly Collection Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Monthly Collection Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Monthly Collection Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20160915100510'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41620784486710782941)
,p_plug_name=>'&P22_LABEL. Collection Report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41707043299604244588)
,p_name=>'Monthly Collection Report'
,p_template=>wwv_flow_api.id(33535963701792330771)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ar.period_id, to_char(ar.ar_no,''009'') ar_no, ar.trans_date, ar.member_id',
'    ,  sum(decode(tran.charge_type_id,1,app.amt_credited)) survey   -- "Survey Fee"',
'    , sum(decode(tran.charge_type_id,2,app.amt_credited))  monthly   --"Monthly Due"',
'    , sum(decode(tran.charge_type_id,3,app.amt_credited))  savings    --"Savings"',
'    , sum(decode(tran.charge_type_id,4,app.amt_credited))  docfee   --"Documentation Fee"',
'    , sum(decode(tran.charge_type_id,5,app.amt_credited))  mob   --"Mobilizer Fee"',
'    , sum(decode(tran.charge_type_id,6,app.amt_credited))  legal   --"Legal Fee"',
'    , sum(decode(tran.charge_type_id,7,app.amt_credited))  bank   --"Bank Processing"',
'    , sum(decode(tran.charge_type_id,8,app.amt_credited))  city   --"City Fund"',
'    , sum(decode(tran.charge_type_id,9,app.amt_credited))  mf   --"Mortuary Fund"',
'    , sum(decode(tran.charge_type_id,10,app.amt_credited)) upca   -- "UPCA Fund"',
'    , sum(decode(tran.charge_type_id,11,app.amt_credited)) memFee   -- "Membership Fee"',
'    , sum(decode(tran.charge_type_id,12,app.amt_credited)) Inter   -- "Interest"',
'    , sum(decode(tran.charge_type_id,13,app.amt_credited)) coll   -- "Collection"',
'    , sum(decode(tran.charge_type_id,14,app.amt_credited)) penalty   -- "Penalty (Mo. Contribution)"',
'    , sum(decode(tran.charge_type_id,15,app.amt_credited)) reversal   -- "Reversal"',
'    , sum(decode(tran.charge_type_id,16,app.amt_credited))  housing  -- "Housing Loan"',
'    , sum(decode(tran.charge_type_id,17,app.amt_credited))  cmp_penalty  -- "CMP Penalty"',
', sum(app.amt_credited) subtotal',
'from  ho_transactions ar, ',
'ho_trans_application app,',
'ho_transactions tran,',
'ho_pay_period period',
'where 1=1',
'and ar.dr_cr = ''C''',
'--and ar.ar_no =4',
'and ar.tran_id = app.tran_id',
'and tran.tran_id = app.apply_to',
'and ar.period_id = period.period_id',
'AND to_char(end_Date,''YYYY'') = nvl(:P22_YEAR,to_char(end_Date,''YYYY'') )',
'and ar.period_id = nvl(:P22_PERIOD, ar.period_id)',
'GROUP BY ar.period_id, ar.ar_no,ar.trans_date, ar.member_id',
'order by AR_NO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_header=>'<div style="width:120em;overflow-x:scroll;">'
,p_footer=>'</div>'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P22_PERIOD'
,p_query_row_template=>wwv_flow_api.id(33535980544409330788)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
,p_report_total_text_format=>'Subtotal'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707043860276244596)
,p_query_column_id=>1
,p_column_alias=>'PERIOD_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707044271771244597)
,p_query_column_id=>2
,p_column_alias=>'AR_NO'
,p_column_display_sequence=>2
,p_column_heading=>'AR No.'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707044655043244597)
,p_query_column_id=>3
,p_column_alias=>'TRANS_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Trans Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707045052861244597)
,p_query_column_id=>4
,p_column_alias=>'MEMBER_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Member Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707045478549244598)
,p_query_column_id=>5
,p_column_alias=>'SURVEY'
,p_column_display_sequence=>5
,p_column_heading=>'Survey Fee'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707045821729244599)
,p_query_column_id=>6
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>6
,p_column_heading=>'Monthly Due'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707046270113244600)
,p_query_column_id=>7
,p_column_alias=>'SAVINGS'
,p_column_display_sequence=>7
,p_column_heading=>'Savings'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707046638036244601)
,p_query_column_id=>8
,p_column_alias=>'DOCFEE'
,p_column_display_sequence=>8
,p_column_heading=>'Documentation Fee'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707077016994244601)
,p_query_column_id=>9
,p_column_alias=>'MOB'
,p_column_display_sequence=>9
,p_column_heading=>'Mobilizer Fee'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707077420713244602)
,p_query_column_id=>10
,p_column_alias=>'LEGAL'
,p_column_display_sequence=>10
,p_column_heading=>'Legal Fee'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707077905946244602)
,p_query_column_id=>11
,p_column_alias=>'BANK'
,p_column_display_sequence=>11
,p_column_heading=>'Bank Processing'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707078304970244603)
,p_query_column_id=>12
,p_column_alias=>'CITY'
,p_column_display_sequence=>12
,p_column_heading=>'City Fund'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707078700852244603)
,p_query_column_id=>13
,p_column_alias=>'MF'
,p_column_display_sequence=>13
,p_column_heading=>'Mortuary Fund'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707079075962244604)
,p_query_column_id=>14
,p_column_alias=>'UPCA'
,p_column_display_sequence=>14
,p_column_heading=>'UPCA Fund'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707079488660244605)
,p_query_column_id=>15
,p_column_alias=>'MEMFEE'
,p_column_display_sequence=>15
,p_column_heading=>'Membership Fee'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707079880871244605)
,p_query_column_id=>16
,p_column_alias=>'INTER'
,p_column_display_sequence=>16
,p_column_heading=>'Interest'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707080243681244606)
,p_query_column_id=>17
,p_column_alias=>'COLL'
,p_column_display_sequence=>17
,p_column_heading=>'Collection'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707080620962244606)
,p_query_column_id=>18
,p_column_alias=>'PENALTY'
,p_column_display_sequence=>18
,p_column_heading=>'Penalty (Mo. Contribution)'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707081092658244607)
,p_query_column_id=>19
,p_column_alias=>'REVERSAL'
,p_column_display_sequence=>19
,p_column_heading=>'Reversal'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707081469490244607)
,p_query_column_id=>20
,p_column_alias=>'HOUSING'
,p_column_display_sequence=>20
,p_column_heading=>'Housing Loan'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41707081858102244608)
,p_query_column_id=>21
,p_column_alias=>'CMP_PENALTY'
,p_column_display_sequence=>21
,p_column_heading=>'CMP Penalty'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39507338128994368339)
,p_query_column_id=>22
,p_column_alias=>'SUBTOTAL'
,p_column_display_sequence=>22
,p_column_heading=>'Subtotal'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41707088622432244634)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41620784574620782942)
,p_name=>'P22_PERIOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41620784486710782941)
,p_prompt=>'Period Covered'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(start_date,''Mon DD '')||''to''||to_char(end_Date,'' DD YYYY'') period_name, period_id',
' from ho_pay_period'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P22_REPORT_TYPE'
,p_display_when2=>'M'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41769624312031127336)
,p_name=>'P22_REPORT_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(41620784486710782941)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41769624584059127338)
,p_name=>'P22_LABEL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(41620784486710782941)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41769624671869127339)
,p_name=>'P22_YEAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(41620784486710782941)
,p_prompt=>'Period Covered'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct to_char(start_date,''YYYY''), to_char(start_date,''YYYY'')',
' from ho_pay_period'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P22_REPORT_TYPE'
,p_display_when2=>'A'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(41769624474680127337)
,p_computation_sequence=>10
,p_computation_item=>'P22_LABEL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(:P22_REPORT_TYPE,''A'',''Annual'',''M'',''Monthly'')',
'FROM DUAL'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41620784631759782943)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_PERIOD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41620784715517782944)
,p_event_id=>wwv_flow_api.id(41620784631759782943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41707043299604244588)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Monthly Collection Abstract'
,p_page_mode=>'NORMAL'
,p_step_title=>'Monthly Collection Abstract'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Monthly Collection Abstract'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20160916054206'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39507338228613368340)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41770959688476457113)
,p_name=>'Monthly Collection Abstract'
,p_template=>wwv_flow_api.id(33535963701792330771)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT account_no, last_name, first_name, ammortization, penalty, ( nvl(ammortization,0) + nvl(penalty ,0) ) total',
'FROM(',
'SELECT mem.account_no, mem.last_name, mem.first_name, ',
'          (SELECT sum(amt_credited)',
'             FROM ho_trans_application app, ho_transactions tra',
'            WHERE app.apply_to = tra.tran_id',
'              AND tra.charge_type_id =16',
'              AND tra.member_id = mem.member_id ',
'              and tra.period_id=:P23_PERIOD) ammortization,',
'                  (SELECT sum(amt_credited)',
'             FROM ho_trans_application app, ho_transactions tra',
'            WHERE app.apply_to = tra.tran_id',
'              AND tra.charge_type_id =17',
'              AND tra.member_id = mem.member_id',
'              and tra.period_id=:P23_PERIOD ) penalty',
'  FROM ho_members mem)'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P23_PERIOD'
,p_query_row_template=>wwv_flow_api.id(33535980544409330788)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41770960297613457119)
,p_query_column_id=>1
,p_column_alias=>'ACCOUNT_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Account No'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41770960688928457120)
,p_query_column_id=>2
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Last Name'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41770961094070457121)
,p_query_column_id=>3
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41769624796493127340)
,p_query_column_id=>4
,p_column_alias=>'AMMORTIZATION'
,p_column_display_sequence=>4
,p_column_heading=>'Ammortization'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41769624893077127341)
,p_query_column_id=>5
,p_column_alias=>'PENALTY'
,p_column_display_sequence=>5
,p_column_heading=>'Penalty'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41769625083999127343)
,p_query_column_id=>6
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>6
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41770968317997457149)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39507338490477368342)
,p_name=>'P23_PERIOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39507338228613368340)
,p_item_default=>'1'
,p_prompt=>'Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAY_PERIODS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
' select to_char(start_date,''Mon DD '')||''to''||to_char(end_Date,'' DD YYYY'') d, period_id r',
' from ho_pay_period',
' order by 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39507338603650368343)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_PERIOD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39507338659457368344)
,p_event_id=>wwv_flow_api.id(39507338603650368343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41770959688476457113)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'List of Billings'
,p_page_mode=>'NORMAL'
,p_step_title=>'List of Billings'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'List of Billings'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20160614051338'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36569306549212411154)
,p_plug_name=>'Billing List'
,p_region_name=>'p30_billing_list'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535971285547330777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ar_no, ',
'mem.member_id, ',
'mem.account_no, ',
'mem.last_name||'',''||mem.first_name member_name,',
'sum(amount) amount_due, ',
'receivable_date, ',
'trans_date ',
' from ho_transactions trans, ho_members mem',
'where mem.member_id = trans.member_id',
'group by ar_no, ',
'mem.member_id, ',
'mem.account_no, ',
'mem.last_name||'',''||mem.first_name,',
'receivable_date,',
'trans_date',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(36569326950969411156)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'EMCY'
,p_internal_uid=>35137368143228147021
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36569327469976411161)
,p_db_column_name=>'MEMBER_ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Member id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321449139128308437)
,p_db_column_name=>'AR_NO'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'AR No'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321449397570308439)
,p_db_column_name=>'RECEIVABLE_DATE'
,p_display_order=>60
,p_column_identifier=>'O'
,p_column_label=>'Receivable date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321449456548308440)
,p_db_column_name=>'TRANS_DATE'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Trans date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321449570745308441)
,p_db_column_name=>'ACCOUNT_NO'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'Account no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321449658660308442)
,p_db_column_name=>'MEMBER_NAME'
,p_display_order=>90
,p_column_identifier=>'R'
,p_column_label=>'Member name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36321449725884308443)
,p_db_column_name=>'AMOUNT_DUE'
,p_display_order=>100
,p_column_identifier=>'S'
,p_column_label=>'Amount due'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(36569330648757411166)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'351373719'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'AR_NO:MEMBER_ID:ACCOUNT_NO:MEMBER_NAME:RECEIVABLE_DATE:TRANS_DATE:AMOUNT_DUE:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36569331533890411171)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36569331969100411172)
,p_plug_name=>'Generate Bill'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36569333175431411175)
,p_plug_name=>'Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'Click "Generate Bill" button to automatically Compute / Generate bill of members for the Month indicated. '
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36569332310214411173)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(36569331969100411172)
,p_button_name=>'GENERATE_BILL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate bill'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36569331111635411169)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36569306549212411154)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36569332733762411173)
,p_name=>'P30_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36569331969100411172)
,p_prompt=>'New'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select D_VALUE',
'FROM ho_parameters',
'where param_name = ''OPEN_MO'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(36569333969500411180)
,p_computation_sequence=>1
,p_computation_item=>'P6_BILL_HDR_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36569334263983411181)
,p_name=>'generate_bill'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(36569332310214411173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36569334733566411182)
,p_event_id=>wwv_flow_api.id(36569334263983411181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'HO_generateBill();'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36569335249664411183)
,p_event_id=>wwv_flow_api.id(36569334263983411181)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(36569306549212411154)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Payment Details'
,p_page_mode=>'NORMAL'
,p_step_title=>'Payment Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when=>'P31_TRAN_ID'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170415231248'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(36321449830243308444)
,p_name=>'Payment Application'
,p_template=>wwv_flow_api.id(33535971723907330778)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ht.trans_desc, hta.AMT_DUE, hta.AMT_CREDITED, hta.amt_due-hta.amt_credited outstanding_bal,',
'ht.trans_date',
'from ho_trans_application hta,',
'ho_transactions ht',
'where 1=1',
'and hta.apply_to=ht.tran_id',
'and hta.tran_id=:P31_TRAN_ID',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(33535980544409330788)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36321450403016308449)
,p_query_column_id=>1
,p_column_alias=>'TRANS_DESC'
,p_column_display_sequence=>1
,p_column_heading=>'Trans desc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36321451388212308459)
,p_query_column_id=>2
,p_column_alias=>'AMT_DUE'
,p_column_display_sequence=>2
,p_column_heading=>'Amount Due'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36321451453314308460)
,p_query_column_id=>3
,p_column_alias=>'AMT_CREDITED'
,p_column_display_sequence=>3
,p_column_heading=>'Applied Amount'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(36321451532640308461)
,p_query_column_id=>4
,p_column_alias=>'OUTSTANDING_BAL'
,p_column_display_sequence=>4
,p_column_heading=>'Outstanding Balance'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28504550903388171066)
,p_query_column_id=>5
,p_column_alias=>'TRANS_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Trans date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36997920309729501543)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535975085181330781)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(33535999258066330821)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(33535993302923330803)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36997943334755533740)
,p_plug_name=>'Payment Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36997943725782533741)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36997943880216533741)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41620784050961782937)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_button_name=>'NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP,31::'
,p_button_condition=>'P31_TRAN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36997943652090533741)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P31_TRAN_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36997944956591533745)
,p_branch_name=>'Go To Page 31'
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36997943652090533741)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28504550540491171063)
,p_name=>'P31_REMAINING_BAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_prompt=>'Outs Balance'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28504550679785171064)
,p_name=>'P31_OVERPAYMENT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28504550749015171065)
,p_name=>'P31_CLOSED_FLAG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_item_default=>'C'
,p_source=>'CLOSED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36321451621348308462)
,p_name=>'P31_UNAPPLIED_AMT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_source=>'UNAPPLIED_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36321453116114308477)
,p_name=>'P31_AR_NO_DSP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_source=>'AR_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36997945390669533797)
,p_name=>'P31_TRAN_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_source=>'TRAN_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36997945786316533799)
,p_name=>'P31_AR_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Receipt No:'
,p_source=>'AR_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36997946122205533800)
,p_name=>'P31_MEMBER_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Member:'
,p_source=>'MEMBER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MEMBERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select last_name ||'', ''|| first_name  as d,',
'       MEMBER_ID as r',
'  from ho_members',
' order by last_name, first_name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36997946546410533800)
,p_name=>'P31_CHARGE_TYPE_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_item_default=>'10'
,p_source=>'CHARGE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36997946910808533801)
,p_name=>'P31_TRANS_DESC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_item_default=>'PAYMENT'
,p_source=>'TRANS_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36997947318396533801)
,p_name=>'P31_DR_CR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_item_default=>'C'
,p_source=>'DR_CR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36997947765680533802)
,p_name=>'P31_AMOUNT'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount Paid'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36997948133978533803)
,p_name=>'P31_TRANS_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Trans Date'
,p_source=>'TRANS_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36997948607225533803)
,p_name=>'P31_CREATED_BY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36997948940011533804)
,p_name=>'P31_CREATED_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39989966973246136836)
,p_name=>'P31_PERIOD_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_use_cache_before_default=>'NO'
,p_item_default=>':G_OPEN_PERIOD_ID'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39989967099512136837)
,p_name=>'P31_PERIOD_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(36997943334755533740)
,p_prompt=>'For Period'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28497713556035071240)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_TRAN_ID'
,p_condition_element=>'P31_TRAN_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28497713646206071241)
,p_event_id=>wwv_flow_api.id(28497713556035071240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TOT_AMT_DUE - nvl(AMOUNT_PAID,0) Outstanding_Bal',
'INTO :P31_TOT_AMT_DUE',
'FROM ho_billing_header',
'where bill_hdr_id = :P31_ar_no',
'and closed_flag = ''N'';',
'',
'select sum(unapplied_amt)',
'INTO :P31_UNAPPLIED_AMT',
'from ho_transactions',
'where ar_no=  :P31_ar_no',
'and charge_type_id=13;'))
,p_attribute_02=>'P31_AR_NO'
,p_attribute_03=>'P31_UNAPPLIED_AMT'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38615287360292787536)
,p_name=>'when-changed'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_MEMBER_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38615287423085787537)
,p_event_id=>wwv_flow_api.id(38615287360292787536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(tot_amt_due) - sum(nvl(amount_paid,0))',
'INTO :P31_REMAINING_BAL',
'FROM ho_billing_header',
'WHERE 1=1',
'and member_id = :P31_MEMBER_ID;'))
,p_attribute_02=>'P31_MEMBER_ID'
,p_attribute_03=>'P31_REMAINING_BAL'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36997951268383533806)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HO_TRANSACTIONS'
,p_attribute_02=>'HO_TRANSACTIONS'
,p_attribute_03=>'P31_TRAN_ID'
,p_attribute_04=>'TRAN_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40101190105041959336)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Period Id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT period_id, period_name',
'INTO :G_OPEN_PERIOD_ID, :P31_PERIOD_NAME',
'FROM ho_pay_period',
'where open_flag = ''Y'''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36997951705139533807)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        DECLARE   L_PRIMARY_KEY NUMBER;',
'        BEGIN',
'           RETURN HO_TRAN_SEQ.NEXTVAL;',
'        END;',
'    end;',
'   /* ',
'    function get_ar return varchar2',
'    is',
'    begin',
'        DECLARE   L_PRIMARY_KEY NUMBER;',
'        BEGIN',
'           RETURN HO_RECEIPT_SEQ.NEXTVAL;',
'        END;',
'    end;*/',
'begin',
'    :P31_TRAN_ID := get_pk;',
'    --:P31_AR_NO := get_ar;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36997943652090533741)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36997952106135533807)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HO_TRANSACTIONS'
,p_attribute_02=>'HO_TRANSACTIONS'
,p_attribute_03=>'P31_TRAN_ID'
,p_attribute_04=>'TRAN_ID'
,p_attribute_11=>'I:U'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36997952420466533807)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36997943880216533741)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28497714105274071245)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Payment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_app_pk ho_trans_application.tran_app_id%TYPE;',
'v_tot_amt_pd ho_transactions.amount%TYPE;',
'v_unapplied_amt ho_transactions.amount%TYPE;',
'v_amt_paid ho_billing_header.amount_paid%TYPE;',
'v_tran_amt ho_transactions.amount%TYPE;',
'v_bill_hdr_id ho_billing_header.bill_hdr_id%TYPE;',
'',
'BEGIN',
'',
'	v_tot_amt_pd := :P31_AMOUNT;',
'    v_unapplied_amt := v_tot_amt_pd;',
'    ',
' 	SELECT nvl(max(TRAN_APP_ID),0)',
'	INTO v_app_pk',
'	FROM ho_trans_application;',
' ',
' ',
' FOR hdr IN (SELECT * ',
'               FROM HO_BILLING_HEADER ',
'              WHERE member_id = :P31_MEMBER_ID',
'               AND closed_flag = ''N''',
'            ORDER BY billing_date ASC) LOOP',
'    ',
'    v_amt_paid := 0;',
' ',
'	FOR app IN (select t.*,c.priority ',
'				from ho_transactions t,',
' 					ho_charge_type c',
'				where 1=1',
'				AND dr_cr = ''D''',
'                and member_id = :P31_MEMBER_ID',
'				and closed_flag = ''N''',
'				and c.charge_type_id = t.charge_type_id',
'                and t.ar_no = hdr.bill_hdr_id',
'				order by receivable_date, priority) LOOP',
'',
'        ',
'        BEGIN',
'            SELECT amt_due - amt_credited',
'              INTO v_tran_amt',
'            FROM ho_trans_application ',
'            WHERE apply_to = app.tran_id;',
'            ',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'             v_tran_amt := app.amount;   ',
'         END;',
'            ',
'            v_app_pk := v_app_pk +1;',
'            v_bill_hdr_id := app.ar_no;',
'            ',
'        IF v_unapplied_amt >= v_tran_amt THEN',
'        ',
'            v_unapplied_amt := v_unapplied_amt - v_tran_amt;',
'            ',
'            v_amt_paid := v_amt_paid + v_tran_amt ;',
'            ',
'            INSERT INTO ho_trans_application(tran_app_id, tran_id, apply_to, amt_due, amt_credited, last_updated_by, last_updated_date)',
'            VALUES(v_app_pk, :P31_tran_id, app.tran_id, v_tran_amt, v_tran_amt, :APP_USER, trunc(SYSDATE));',
'',
'',
'            UPDATE ho_transactions',
'               SET CLOSED_FLAG =''Y''',
'              WHERE tran_id = app.tran_id;',
'              ',
'        ELSE',
'           v_amt_paid := v_amt_paid + v_Unapplied_amt;',
'            INSERT INTO ho_trans_application(tran_app_id, tran_id, apply_to, amt_due, amt_credited, last_updated_by, last_updated_date)',
'            VALUES(v_app_pk, :P31_tran_id, app.tran_id, v_tran_amt, v_unapplied_amt, :APP_USER, trunc(SYSDATE));',
'',
'            v_unapplied_amt := 0;',
'        END IF;',
'         ',
'            ',
'        EXIT WHEN v_unapplied_amt = 0;',
'',
'	   END LOOP;  --app',
'    ',
'      IF hdr.TOT_AMT_DUE >= v_amt_paid THEN',
'        UPDATE ho_billing_header',
'           SET amount_paid = v_amt_paid,',
'               closed_flag = ''Y''',
'         WHERE bill_hdr_id = hdr.bill_hdr_id;',
'         ',
'         v_bill_hdr_id := v_bill_hdr_id;',
'      ELSE',
'         UPDATE ho_billing_header',
'           SET amount_paid = v_amt_paid',
'         WHERE bill_hdr_id = hdr.bill_hdr_id;',
'     END IF;',
'    END LOOP; --hdr',
'	',
'    ',
'    IF v_unapplied_amt > 0 THEN',
'     UPDATE ho_transactions --update the credit/payment transaction',
'      SET unapplied_amt = v_unapplied_amt',
'     WHERE tran_id = :P31_TRAN_ID;',
'     ',
'     UPDATE ho_billing_header',
'       SET amount_paid = amount_paid + v_unapplied_amt',
'      WHERE bill_hdr_id = v_bill_hdr_id;',
'    END IF;',
'    ',
'     ',
'     /*',
'     IF v_tot_amt_pd >= :P31_TOT_AMT_DUE THEN',
'     ',
'         UPDATE ho_billing_header',
'          SET amount_paid = v_tot_amt_pd,',
'          closed_flag = ''Y''',
'         WHERE bill_hdr_id = v_bill_hdr_id;',
'     ',
'     ELSE ',
'         UPDATE ho_billing_header',
'            SET amount_paid = nvl(amount_paid,0) + :P31_AMOUNT',
'           WHERE bill_hdr_id = :P31_AR_NO;',
'     END IF;',
'     */',
'END;',
''))
,p_process_error_message=>' Error in  Apply Payment'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36997943652090533741)
,p_process_success_message=>' Payment Applied'
);
end;
/
prompt --application/pages/page_00061
begin
wwv_flow_api.create_page(
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Add New Charge'
,p_page_mode=>'MODAL'
,p_step_title=>'Add New Charge'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170305113741'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105410251310453)
,p_plug_name=>'Add New Charge/Adjustment'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535963701792330771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106005225310457)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535963767182330771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(106411600310457)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(106005225310457)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(105918616310457)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(106005225310457)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P61_TRAN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(105785607310457)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(106005225310457)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P61_TRAN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(105690914310457)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(106005225310457)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P61_TRAN_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90765076190737)
,p_name=>'P61_CLOSED_FLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'New'
,p_source=>'closed_flag'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(108807185310474)
,p_name=>'P61_TRAN_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tran Id'
,p_source=>'TRAN_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109202476310492)
,p_name=>'P61_AR_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_use_cache_before_default=>'NO'
,p_source=>'AR_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(109608907310497)
,p_name=>'P61_MEMBER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_use_cache_before_default=>'NO'
,p_source=>'MEMBER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(110042254310497)
,p_name=>'P61_CHARGE_TYPE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Charge Type'
,p_source=>'CHARGE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select charge_type_short, charge_type_id',
'from ho_charge_type',
'where classification in (''M'',''A'')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(110451830310497)
,p_name=>'P61_TRANS_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trans Desc'
,p_source=>'TRANS_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(110811770310498)
,p_name=>'P61_DR_CR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dr Cr'
,p_source=>'DR_CR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(111173096310499)
,p_name=>'P61_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(111657483310499)
,p_name=>'P61_TRANS_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_prompt=>'Trans Date'
,p_source=>'SYSDATE'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(112455955310501)
,p_name=>'P61_PERIOD_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Period Id'
,p_source=>'PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(112815007310502)
,p_name=>'P61_CREATED_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_prompt=>'Created Date'
,p_source=>'SYSDATE'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(113233539310503)
,p_name=>'P61_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(105410251310453)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(33535992295862330801)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106542845310457)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(106411600310457)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(107306290310467)
,p_event_id=>wwv_flow_api.id(106542845310457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(90327927190733)
,p_name=>'populate_charge_info'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_CHARGE_TYPE_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(90419385190734)
,p_event_id=>wwv_flow_api.id(90327927190733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT charge_type_long, fixed_amt,cr_dr',
'INTO :P61_TRANS_DESC, :P61_AMOUNT, :P61_DR_CR',
'FROM ho_charge_type',
'where charge_type_id = :P61_CHARGE_TYPE_ID'))
,p_attribute_02=>'P61_CHARGE_TYPE_ID'
,p_attribute_03=>'P61_TRANS_DESC,P61_AMOUNT,P61_DR_CR'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116164143310509)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HO_TRANSACTIONS'
,p_attribute_02=>'HO_TRANSACTIONS'
,p_attribute_03=>'P61_TRAN_ID'
,p_attribute_04=>'TRAN_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116483963310510)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P61_TRAN_ID is null then',
'        select "#OWNER#"."HO_TRAN_SEQ".nextval',
'          into :P61_TRAN_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(105690914310457)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116948742310510)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HO_TRANSACTIONS'
,p_attribute_02=>'HO_TRANSACTIONS'
,p_attribute_03=>'P61_TRAN_ID'
,p_attribute_04=>'TRAN_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117305239310511)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(105918616310457)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117726373310512)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'&APP_NAME. -login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.appIcon.sample_charts {',
'background-position: -192px -192px;',
'}',
'',
'.appIcon {',
'display: inline-block;',
'width: 64px;',
'height: 64px;',
'background-image: url(#IMAGE_PREFIX#eba/img/eba_launchpad.png);',
'background-repeat: no-repeat;',
'border: none;',
'-webkit-border-radius: 4px;',
'-moz-border-radius: 4px;',
'border-radius: 4px;',
'-webkit-box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'-moz-box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'margin-right: 8px;',
'vertical-align: middle;',
'}'))
,p_step_template=>wwv_flow_api.id(33535957552547330763)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20170109052753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33535998497699330818)
,p_plug_name=>'&APP_NAME.'
,p_icon_css_classes=>'fa-home'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33535971604218330778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33535998800943330820)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33535998497699330818)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33535992787987330803)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33535998553227330819)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33535998497699330818)
,p_prompt=>'Username'
,p_placeholder=>'username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(33535992163012330801)
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33535998669968330820)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33535998497699330818)
,p_prompt=>'Password'
,p_placeholder=>'password'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(33535992163012330801)
,p_item_css_classes=>'icon-login-password'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33535998923290330821)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33535998824938330820)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33535999174788330821)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33535999017359330821)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00120
begin
wwv_flow_api.create_page(
 p_id=>120
,p_user_interface_id=>wwv_flow_api.id(33535997994146330815)
,p_name=>'Underconstruction'
,p_page_mode=>'NORMAL'
,p_step_title=>'Underconstruction'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'EMCY'
,p_last_upd_yyyymmddhh24miss=>'20160503051425'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29722989610753282763)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(33535971723907330778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<h1> <font color=red> This Page is currently Under Construction </font> </h1> '
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(112900447879862560)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
