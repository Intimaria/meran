use EconoV3 ;
GRANT SELECT on cat_nivel3 to intra@localhost identified by 'intra'; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_analitica                      to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_autor                          to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_autor_analitica                to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_colaborador                    to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_contenido_estante              to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_control_seudonimo_autor        to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_control_seudonimo_editorial    to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_control_seudonimo_tema         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_control_sinonimo_autor         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_control_sinonimo_editorial     to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_control_sinonimo_tema          to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_editorial                      to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_encabezado_campo_opac          to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_encabezado_item_opac           to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_estante                        to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_estructura_catalogacion        to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_estructura_catalogacion_opac   to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_historico_disponibilidad       to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_nivel1                         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_nivel1_repetible               to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_nivel2                         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_nivel2_repetible               to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_nivel3                         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_nivel3_repetible               to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_pref_mapeo_koha_marc           to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_ref_colaborador                to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_ref_tipo_nivel3                to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_tema                           to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_tema_analitica                 to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  circ_prestamo                      to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  circ_ref_tipo_prestamo             to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  circ_regla_sancion                 to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  circ_regla_tipo_sancion            to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  circ_reserva                       to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  circ_sancion                       to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  circ_tipo_prestamo_sancion         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  circ_tipo_sancion                  to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_categoria_unidad_informacion  to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_estructura_campo_marc         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_estructura_subcampo_marc      to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_feriado                       to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_informacion_referencia        to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_iso2709                       to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_palabra_frecuente             to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_preferencia_sistema           to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_relacion_unidad_informacion   to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_servidor_z3950                to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_tabla_referencia              to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_tabla_referencia_info         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_unidad_informacion            to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  pref_valor_autorizado              to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  ref_disponibilidad                 to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  ref_dpto_partido                   to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  ref_estado                         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  ref_idioma                         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  ref_localidad                      to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  ref_nivel_bibliografico            to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  ref_pais                           to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  ref_provincia                      to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  ref_soporte                        to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  ref_tipo_operacion                 to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  rep_busqueda                       to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  rep_historial_busqueda             to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  rep_historial_circulacion          to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  rep_historial_prestamo             to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  rep_historial_sancion              to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  rep_registro_modificacion          to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  sist_sesion                        to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  usr_estado                         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  usr_permiso                        to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  usr_persona                        to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  usr_ref_categoria_socio            to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  usr_ref_estado                     to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  usr_ref_tipo_documento             to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  usr_socio                          to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  usr_socio_relacionado              to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  z3950queue                         to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  z3950results                       to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  perm_general to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  perm_circulacion to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  perm_reporte to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  perm_catalogo to intra@localhost; 
GRANT SELECT, INSERT, UPDATE, DELETE on  cat_portada_registro to intra@localhost; 
