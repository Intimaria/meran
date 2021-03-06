use EconoV3 ;
GRANT SELECT on cat_nivel3 to dev@localhost identified by 'dev'; 
GRANT ALL on  cat_analitica                      to dev@localhost; 
GRANT ALL on  cat_autor                          to dev@localhost; 
GRANT ALL on  cat_autor_analitica                to dev@localhost; 
GRANT ALL on  cat_colaborador                    to dev@localhost; 
GRANT ALL on  cat_contenido_estante              to dev@localhost; 
GRANT ALL on  cat_control_seudonimo_autor        to dev@localhost; 
GRANT ALL on  cat_control_seudonimo_editorial    to dev@localhost; 
GRANT ALL on  cat_control_seudonimo_tema         to dev@localhost; 
GRANT ALL on  cat_control_sinonimo_autor         to dev@localhost; 
GRANT ALL on  cat_control_sinonimo_editorial     to dev@localhost; 
GRANT ALL on  cat_control_sinonimo_tema          to dev@localhost; 
GRANT ALL on  cat_editorial                      to dev@localhost; 
GRANT ALL on  cat_encabezado_campo_opac          to dev@localhost; 
GRANT ALL on  cat_encabezado_item_opac           to dev@localhost; 
GRANT ALL on  cat_estante                        to dev@localhost; 
GRANT ALL on  cat_estructura_catalogacion        to dev@localhost; 
GRANT ALL on  cat_estructura_catalogacion_opac   to dev@localhost; 
GRANT ALL on  cat_historico_disponibilidad       to dev@localhost; 
GRANT ALL on  cat_nivel1                         to dev@localhost; 
GRANT ALL on  cat_nivel1_repetible               to dev@localhost; 
GRANT ALL on  cat_nivel2                         to dev@localhost; 
GRANT ALL on  cat_nivel2_repetible               to dev@localhost; 
GRANT ALL on  cat_nivel3                         to dev@localhost; 
GRANT ALL on  cat_nivel3_repetible               to dev@localhost; 
GRANT ALL on  cat_pref_mapeo_koha_marc           to dev@localhost; 
GRANT ALL on  cat_ref_colaborador                to dev@localhost; 
GRANT ALL on  cat_ref_tipo_nivel3                to dev@localhost; 
GRANT ALL on  cat_tema                           to dev@localhost; 
GRANT ALL on  cat_tema_analitica                 to dev@localhost; 
GRANT ALL on  circ_prestamo                      to dev@localhost; 
GRANT ALL on  circ_ref_tipo_prestamo             to dev@localhost; 
GRANT ALL on  circ_regla_sancion                 to dev@localhost; 
GRANT ALL on  circ_regla_tipo_sancion            to dev@localhost; 
GRANT ALL on  circ_reserva                       to dev@localhost; 
GRANT ALL on  circ_sancion                       to dev@localhost; 
GRANT ALL on  circ_tipo_prestamo_sancion         to dev@localhost; 
GRANT ALL on  circ_tipo_sancion                  to dev@localhost; 
GRANT ALL on  pref_categoria_unidad_informacion  to dev@localhost; 
GRANT ALL on  pref_estructura_campo_marc         to dev@localhost; 
GRANT ALL on  pref_estructura_subcampo_marc      to dev@localhost; 
GRANT ALL on  pref_feriado                       to dev@localhost; 
GRANT ALL on  pref_informacion_referencia        to dev@localhost; 
GRANT ALL on  pref_iso2709                       to dev@localhost; 
GRANT ALL on  pref_palabra_frecuente             to dev@localhost; 
GRANT ALL on  pref_preferencia_sistema           to dev@localhost; 
GRANT ALL on  pref_relacion_unidad_informacion   to dev@localhost; 
GRANT ALL on  pref_servidor_z3950                to dev@localhost; 
GRANT ALL on  pref_tabla_referencia              to dev@localhost; 
GRANT ALL on  pref_tabla_referencia_info         to dev@localhost; 
GRANT ALL on  pref_unidad_informacion            to dev@localhost; 
GRANT ALL on  pref_valor_autorizado              to dev@localhost; 
GRANT ALL on  ref_disponibilidad                 to dev@localhost; 
GRANT ALL on  ref_dpto_partido                   to dev@localhost; 
GRANT ALL on  ref_estado                         to dev@localhost; 
GRANT ALL on  ref_idioma                         to dev@localhost; 
GRANT ALL on  ref_localidad                      to dev@localhost; 
GRANT ALL on  ref_nivel_bibliografico            to dev@localhost; 
GRANT ALL on  ref_pais                           to dev@localhost; 
GRANT ALL on  ref_provincia                      to dev@localhost; 
GRANT ALL on  ref_soporte                        to dev@localhost; 
GRANT ALL on  ref_tipo_operacion                 to dev@localhost; 
GRANT ALL on  rep_busqueda                       to dev@localhost; 
GRANT ALL on  rep_historial_busqueda             to dev@localhost; 
GRANT ALL on  rep_historial_circulacion          to dev@localhost; 
GRANT ALL on  rep_historial_prestamo             to dev@localhost; 
GRANT ALL on  rep_historial_sancion              to dev@localhost; 
GRANT ALL on  rep_registro_modificacion          to dev@localhost; 
GRANT ALL on  sist_sesion                        to dev@localhost; 
GRANT ALL on  usr_estado                         to dev@localhost; 
GRANT ALL on  usr_permiso                        to dev@localhost; 
GRANT ALL on  usr_persona                        to dev@localhost; 
GRANT ALL on  usr_ref_categoria_socio            to dev@localhost; 
GRANT ALL on  usr_ref_estado                     to dev@localhost; 
GRANT ALL on  usr_ref_tipo_documento             to dev@localhost; 
GRANT ALL on  usr_socio                          to dev@localhost; 
GRANT ALL on  usr_socio_relacionado              to dev@localhost; 
GRANT ALL on  z3950queue                         to dev@localhost; 
GRANT ALL on  z3950results                       to dev@localhost; 
GRANT ALL on  perm_general to dev@localhost; 
GRANT ALL on  perm_circulacion to dev@localhost; 
GRANT ALL on  perm_reporte to dev@localhost; 
GRANT ALL on  perm_catalogo to dev@localhost; 
GRANT ALL on  cat_portada_registro to dev@localhost; 
