-- =============================================
-- ORACLE APEX APPLICATION IMPORT FILE
-- Application: Oracle Danışmanlık Yönetim Sistemi (ODYS)
-- Version: 24.2
-- Application ID: 100
-- =============================================

set define off verify off feedback off
whenever sqlerror then exit sql.sqlcode rollback

prompt --application/create_application
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.2.0'
,p_default_workspace_id=>null
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'PARSING_SCHEMA'
);
end;
/

prompt --application/shared_components/navigation/lists
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10000)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10001)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Ana Sayfa'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10002)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'İnsan Kaynakları'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10003)
,p_list_item_display_sequence=>21
,p_list_item_link_text=>'Çalışanlar'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user'
,p_parent_list_item_id=>wwv_flow_imp.id(10002)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10004)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>'Departmanlar'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-sitemap'
,p_parent_list_item_id=>wwv_flow_imp.id(10002)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10005)
,p_list_item_display_sequence=>23
,p_list_item_link_text=>'İzin Talepleri'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-times-o'
,p_parent_list_item_id=>wwv_flow_imp.id(10002)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10006)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Proje Yönetimi'
,p_list_item_icon=>'fa-briefcase'
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10007)
,p_list_item_display_sequence=>31
,p_list_item_link_text=>'Projeler'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-folder-open-o'
,p_parent_list_item_id=>wwv_flow_imp.id(10006)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10008)
,p_list_item_display_sequence=>32
,p_list_item_link_text=>'Efor Girişi'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-clock-o'
,p_parent_list_item_id=>wwv_flow_imp.id(10006)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10009)
,p_list_item_display_sequence=>33
,p_list_item_link_text=>'Efor Onayları'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-check-square-o'
,p_parent_list_item_id=>wwv_flow_imp.id(10006)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10010)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Müşteri İlişkileri'
,p_list_item_icon=>'fa-handshake-o'
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10011)
,p_list_item_display_sequence=>41
,p_list_item_link_text=>'Müşteriler'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-building-o'
,p_parent_list_item_id=>wwv_flow_imp.id(10010)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10012)
,p_list_item_display_sequence=>42
,p_list_item_link_text=>'Lisanslar'
,p_list_item_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_parent_list_item_id=>wwv_flow_imp.id(10010)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10013)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Raporlar'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10014)
,p_list_item_display_sequence=>51
,p_list_item_link_text=>'Proje Raporları'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-line-chart'
,p_parent_list_item_id=>wwv_flow_imp.id(10013)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10015)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Tanımlamalar'
,p_list_item_icon=>'fa-cog'
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10016)
,p_list_item_display_sequence=>61
,p_list_item_link_text=>'Ürün Kategorileri'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-tags'
,p_parent_list_item_id=>wwv_flow_imp.id(10015)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10017)
,p_list_item_display_sequence=>62
,p_list_item_link_text=>'Ürünler'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cube'
,p_parent_list_item_id=>wwv_flow_imp.id(10015)
,p_list_item_current_type=>'TARGET_PAGE'
);

wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10018)
,p_list_item_display_sequence=>63
,p_list_item_link_text=>'Kullanıcılar'
,p_list_item_link_target=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-secret'
,p_parent_list_item_id=>wwv_flow_imp.id(10015)
,p_list_item_current_type=>'TARGET_PAGE'
);

end;
/

prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Ana Sayfa'
,p_alias=>'HOME'
,p_step_title=>'Oracle Danışmanlık Yönetim Sistemi'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);

wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20001)
,p_plug_name=>'Hoşgeldiniz'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084276)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center; padding: 40px;">',
'<h1>Oracle Danışmanlık Yönetim Sistemi</h1>',
'<p style="font-size: 18px; color: #666;">Hoşgeldiniz, <strong>&APP_USER.</strong></p>',
'</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);

-- Dashboard Cards
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20002)
,p_plug_name=>'Özet Bilgiler'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4296660189084266)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);

-- Aktif Projeler Card
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(20003)
,p_name=>'Aktif Projelerim'
,p_parent_plug_id=>wwv_flow_imp.id(20002)
,p_template=>wwv_flow_imp.id(4319920360084276)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p.project_code,',
'    p.project_name,',
'    c.customer_name,',
'    pc.category_name,',
'    p.status',
'FROM xxod_employee_projects_v v',
'JOIN xxod_projects p ON v.project_id = p.id',
'JOIN xxod_customers c ON p.customer_id = c.id',
'LEFT JOIN xxod_product_categories pc ON p.category_id = pc.id',
'WHERE v.employee_id = (SELECT id FROM xxod_employees WHERE id = (SELECT employee_id FROM xxod_users WHERE username = :APP_USER))',
'AND p.status = ''ACTIVE''',
'ORDER BY p.project_code'))
,p_ajax_enabled=>'Y'
);

-- Bekleyen İzinlerim Card
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(20004)
,p_name=>'Bekleyen İzin Taleplerim'
,p_parent_plug_id=>wwv_flow_imp.id(20002)
,p_template=>wwv_flow_imp.id(4319920360084276)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    request_number,',
'    leave_type_name,',
'    start_date,',
'    end_date,',
'    total_days,',
'    status',
'FROM xxod_pending_leaves_v',
'WHERE employee_number = (SELECT employee_number FROM xxod_employees WHERE id = (SELECT employee_id FROM xxod_users WHERE username = :APP_USER))',
'ORDER BY request_date DESC'))
,p_ajax_enabled=>'Y'
);

end;
/

prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Çalışanlar'
,p_alias=>'EMPLOYEES'
,p_step_title=>'Çalışanlar'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);

wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30001)
,p_plug_name=>'Çalışanlar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4269822879084258)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'XXOD_EMPLOYEE_DETAILS_V'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Çalışanlar'
);

wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(30002)
,p_name=>'Çalışanlar'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'Kayıt bulunamadı.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_ID:#ID#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'PARSING_SCHEMA'
,p_internal_uid=>30002
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30003)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30004)
,p_db_column_name=>'EMPLOYEE_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sicil No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30005)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ad Soyad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30006)
,p_db_column_name=>'EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'E-posta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30007)
,p_db_column_name=>'MOBILE_PHONE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Telefon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30008)
,p_db_column_name=>'PRIMARY_DEPARTMENT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Departman'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30009)
,p_db_column_name=>'TITLE_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Ünvan'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30010)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Durum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);

wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30011)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'300111'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE_NUMBER:FULL_NAME:EMAIL:MOBILE_PHONE:PRIMARY_DEPARTMENT:TITLE_NAME:STATUS'
);

-- Create button
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30012)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30001)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Yeni Çalışan'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11::'
,p_icon_css_classes=>'fa-plus'
);

end;
/

prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Çalışan Detay'
,p_alias=>'EMPLOYEE-DETAIL'
,p_step_title=>'Çalışan Detay'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);

wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40001)
,p_plug_name=>'Çalışan Bilgileri'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084276)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'XXOD_EMPLOYEES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);

-- Form items
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40002)
,p_name=>'P11_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40001)
,p_item_source_plug_id=>wwv_flow_imp.id(40001)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40003)
,p_name=>'P11_EMPLOYEE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(40001)
,p_item_source_plug_id=>wwv_flow_imp.id(40001)
,p_prompt=>'Sicil No'
,p_source=>'EMPLOYEE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40004)
,p_name=>'P11_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(40001)
,p_item_source_plug_id=>wwv_flow_imp.id(40001)
,p_prompt=>'Ad'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40005)
,p_name=>'P11_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(40001)
,p_item_source_plug_id=>wwv_flow_imp.id(40001)
,p_prompt=>'Soyad'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40006)
,p_name=>'P11_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(40001)
,p_item_source_plug_id=>wwv_flow_imp.id(40001)
,p_prompt=>'E-posta'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40007)
,p_name=>'P11_MOBILE_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(40001)
,p_item_source_plug_id=>wwv_flow_imp.id(40001)
,p_prompt=>'Cep Telefonu'
,p_source=>'MOBILE_PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEL'
,p_attribute_05=>'BOTH'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40008)
,p_name=>'P11_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(40001)
,p_item_source_plug_id=>wwv_flow_imp.id(40001)
,p_prompt=>'Departman'
,p_source=>'PRIMARY_DEPARTMENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT department_name d, id r',
'FROM xxod_departments',
'WHERE active_flag = ''Y''',
'ORDER BY department_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seçiniz -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40009)
,p_name=>'P11_JOB_TITLE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(40001)
,p_item_source_plug_id=>wwv_flow_imp.id(40001)
,p_prompt=>'Ünvan'
,p_source=>'JOB_TITLE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT title_name d, id r',
'FROM xxod_job_titles',
'WHERE active_flag = ''Y''',
'ORDER BY title_level, title_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seçiniz -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40010)
,p_name=>'P11_HIRE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(40001)
,p_item_source_plug_id=>wwv_flow_imp.id(40001)
,p_prompt=>'İşe Giriş Tarihi'
,p_source=>'HIRE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40011)
,p_name=>'P11_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(40001)
,p_item_source_plug_id=>wwv_flow_imp.id(40001)
,p_prompt=>'Durum'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Aktif;ACTIVE,İşten Ayrılmış;TERMINATED,Askıya Alınmış;SUSPENDED,İzinde;ON_LEAVE'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);

-- Buttons
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40012)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40001)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'İptal'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
);

wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40013)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40001)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Sil'
,p_button_position=>'DELETE'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_database_action=>'DELETE'
);

wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40014)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(40001)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Kaydet'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);

wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40015)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(40001)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Oluştur'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);

-- Processes
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40016)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(40001)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Çalışan Bilgileri'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>40016
);

wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40017)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(40014)
,p_internal_uid=>40017
);

wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40018)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(40001)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Çalışan Bilgileri'
,p_internal_uid=>40018
);

end;
/

prompt --application/pages/page_00050
begin
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'Efor Girişi'
,p_alias=>'TIME-ENTRY'
,p_step_title=>'Efor Girişi'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);

wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50001)
,p_plug_name=>'Efor Girişlerim'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4269822879084258)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    te.id,',
'    te.entry_date,',
'    p.project_name,',
'    c.customer_name,',
'    te.task_description,',
'    te.duration_hours,',
'    te.task_type,',
'    te.is_billable,',
'    te.approval_status',
'FROM xxod_time_entries te',
'JOIN xxod_projects p ON te.project_id = p.id',
'JOIN xxod_customers c ON p.customer_id = c.id',
'WHERE te.employee_id = (',
'    SELECT id FROM xxod_employees ',
'    WHERE id = (SELECT employee_id FROM xxod_users WHERE username = :APP_USER)',
')',
'ORDER BY te.entry_date DESC, te.id DESC'))
,p_plug_source_type=>'NATIVE_IR'
);

wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(50002)
,p_name=>'Efor Girişlerim'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.'
,p_no_data_found_message=>'Kayıt bulunamadı.'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_detail_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP:P51_ID:#ID#'
,p_detail_link_text=>'<span class="fa fa-edit"></span>'
,p_owner=>'PARSING_SCHEMA'
,p_internal_uid=>50002
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50003)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50004)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tarih'
,p_column_type=>'DATE'
,p_format_mask=>'DD.MM.YYYY'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50005)
,p_db_column_name=>'PROJECT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Proje'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50006)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Müşteri'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50007)
,p_db_column_name=>'TASK_DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Görev Açıklaması'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50008)
,p_db_column_name=>'DURATION_HOURS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Süre (Saat)'
,p_column_type=>'NUMBER'
,p_format_mask=>'999G999G999G999G990D00'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50009)
,p_db_column_name=>'TASK_TYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Görev Tipi'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50010)
,p_db_column_name=>'IS_BILLABLE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Faturalandırılabilir'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50011)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Onay Durumu'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(50012)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'500121'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ENTRY_DATE:PROJECT_NAME:CUSTOMER_NAME:TASK_DESCRIPTION:DURATION_HOURS:TASK_TYPE:IS_BILLABLE:APPROVAL_STATUS'
);

-- Create Button
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50013)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50001)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Yeni Efor Girişi'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:51::'
,p_icon_css_classes=>'fa-plus'
);

end;
/

prompt --application/pages/page_00051
begin
wwv_flow_imp_page.create_page(
 p_id=>51
,p_name=>'Efor Detay'
,p_alias=>'TIME-ENTRY-DETAIL'
,p_step_title=>'Efor Detay'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);

wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51001)
,p_plug_name=>'Efor Girişi'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084276)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'XXOD_TIME_ENTRIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);

-- Form Items
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51002)
,p_name=>'P51_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51001)
,p_item_source_plug_id=>wwv_flow_imp.id(51001)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51003)
,p_name=>'P51_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51001)
,p_item_source_plug_id=>wwv_flow_imp.id(51001)
,p_prompt=>'Proje'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.project_code || '' - '' || p.project_name || '' ('' || c.customer_name || '')'' d,',
'       p.id r',
'FROM xxod_employee_projects_v v',
'JOIN xxod_projects p ON v.project_id = p.id',
'JOIN xxod_customers c ON p.customer_id = c.id',
'WHERE v.employee_id = (',
'    SELECT id FROM xxod_employees ',
'    WHERE id = (SELECT employee_id FROM xxod_users WHERE username = :APP_USER)',
')',
'AND p.status = ''ACTIVE''',
'ORDER BY p.project_code'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Proje Seçiniz -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51004)
,p_name=>'P51_ENTRY_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(51001)
,p_item_source_plug_id=>wwv_flow_imp.id(51001)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tarih'
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51005)
,p_name=>'P51_DURATION_HOURS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51001)
,p_item_source_plug_id=>wwv_flow_imp.id(51001)
,p_prompt=>'Süre (Saat)'
,p_source=>'DURATION_HOURS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'0.25'
,p_attribute_02=>'24'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51006)
,p_name=>'P51_TASK_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51001)
,p_item_source_plug_id=>wwv_flow_imp.id(51001)
,p_prompt=>'Görev Tipi'
,p_source=>'TASK_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Geliştirme;DEVELOPMENT,Analiz;ANALYSIS,Tasarım;DESIGN,Test;TESTING,Toplantı;MEETING,Dokümantasyon;DOCUMENTATION,Destek;SUPPORT,Eğitim;TRAINING,Diğer;OTHER'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seçiniz -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51007)
,p_name=>'P51_TASK_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51001)
,p_item_source_plug_id=>wwv_flow_imp.id(51001)
,p_prompt=>'Görev Açıklaması'
,p_source=>'TASK_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51008)
,p_name=>'P51_IS_BILLABLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51001)
,p_item_source_plug_id=>wwv_flow_imp.id(51001)
,p_item_default=>'Y'
,p_prompt=>'Faturalandırılabilir'
,p_source=>'IS_BILLABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(4382365997084282)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);

-- Buttons and Processes (similar to page 11)
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51009)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51001)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'İptal'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
);

wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51010)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(51001)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Kaydet'
,p_button_position=>'NEXT'
,p_database_action=>'UPDATE'
);

wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51011)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(51001)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Oluştur'
,p_button_position=>'NEXT'
,p_button_condition=>'P51_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);

-- Computation for employee_id
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(51012)
,p_computation_sequence=>10
,p_computation_item=>'P51_EMPLOYEE_ID'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id FROM xxod_employees ',
'WHERE id = (SELECT employee_id FROM xxod_users WHERE username = :APP_USER)'))
);

wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51013)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(51001)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);

wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51014)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(51001)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form'
);

end;
/

prompt --application/pages/page_00070
begin
wwv_flow_imp_page.create_page(
 p_id=>70
,p_name=>'Müşteriler'
,p_alias=>'CUSTOMERS'
,p_step_title=>'Müşteriler'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);

wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70001)
,p_plug_name=>'Müşteriler'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4269822879084258)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'XXOD_CUSTOMERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);

wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(70002)
,p_name=>'Müşteriler'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.'
,p_no_data_found_message=>'Kayıt bulunamadı.'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_detail_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:RP:P71_ID:#ID#'
,p_detail_link_text=>'<span class="fa fa-edit"></span>'
,p_owner=>'PARSING_SCHEMA'
,p_internal_uid=>70002
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70003)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70004)
,p_db_column_name=>'CUSTOMER_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Müşteri Kodu'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70005)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Müşteri Adı'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70006)
,p_db_column_name=>'INDUSTRY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sektör'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70007)
,p_db_column_name=>'CITY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Şehir'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70008)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'E-posta'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70009)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Durum'
,p_column_type=>'STRING'
);

wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(70010)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'700101'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_CODE:CUSTOMER_NAME:INDUSTRY:CITY:EMAIL:STATUS'
);

wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70011)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70001)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Yeni Müşteri'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:71::'
,p_icon_css_classes=>'fa-plus'
);

end;
/

prompt --application/end_environment
begin
wwv_flow_imp.component_end;
end;
/