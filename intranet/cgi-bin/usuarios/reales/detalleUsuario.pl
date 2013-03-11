#!/usr/bin/perl

use strict;
use CGI;
use C4::AR::Auth;

use C4::Date;
use C4::AR::Usuarios;
use Date::Manip;
use Cwd;
my $input=new CGI;



my ($template, $session, $t_params) =  C4::AR::Auth::get_template_and_user ({
                            template_name	=> 'usuarios/reales/detalleUsuario.tmpl',
                            query		=> $input,
                            type		=> "intranet",
                            authnotrequired	=> 0,
                            flagsrequired	=> {    ui => 'ANY', 
                                                    tipo_documento => 'ANY', 
                                                    accion => 'CONSULTA', 
                                                    entorno => 'usuarios'},
                    });

my $obj         = $input->param('obj');
$obj            = C4::AR::Utilidades::from_json_ISO($obj);
my $msg_object  = C4::AR::Mensajes::create();
my $nro_socio   = $obj->{'nro_socio'};


C4::AR::Validator::validateParams('U389',$obj,['nro_socio'] );

my $socio       = C4::AR::Usuarios::getSocioInfoPorNroSocio($nro_socio);

C4::AR::Validator::validateObjectInstance($socio);

if ($socio->getNro_socio eq C4::AR::Auth::getSessionNroSocio() ){
    C4::AR::Auth::updateLoggedUserTemplateParams($session,$t_params,$socio);
}

#### Verifica si la foto ya esta cargada



#### Verifica si hay problemas para subir la foto
my $msgFoto = $input->param('msg');
($msgFoto) || ($msgFoto = 0);
####

#### Verifica si hay problemas para borrar un usuario
my $msgError                        = $input->param('error');
($msgError) || ($msgError=0);

$t_params->{'id_socio'}                 = $socio->getId_socio;
$t_params->{'foto_name'}                = $socio->tieneFoto(C4::AR::Auth::getSessionType());
$t_params->{'mensaje_error_foto'}       = $msgFoto;
$t_params->{'mensaje_error_borrar'}     = $msgError;
$t_params->{'error'}                    = 0;
$t_params->{'nro_socio'}                = $socio->getNro_socio;	
$t_params->{'notas'}                    = $socio->getNote; 
$t_params->{'socio'}                    = $socio;
$t_params->{'relativePicturesDir'}      = C4::Context->config("relativePicturesDir");
$t_params->{'needsDataValidation'}      = C4::AR::Usuarios::needsDataValidation($nro_socio);
$t_params->{'requisitoNecesario_pref'}  = C4::AR::Preferencias::getValorPreferencia('requisito_necesario');

C4::AR::Auth::output_html_with_http_headers($template, $t_params, $session);
