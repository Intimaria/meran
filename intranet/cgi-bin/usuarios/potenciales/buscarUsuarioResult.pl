#!/usr/bin/perl
#
# Meran - MERAN UNLP is a ILS (Integrated Library System) wich provides Catalog,
# Circulation and User's Management. It's written in Perl, and uses Apache2
# Web-Server, MySQL database and Sphinx 2 indexing.
# Copyright (C) 2009-2013 Grupo de desarrollo de Meran CeSPI-UNLP
#
# This file is part of Meran.
#
# Meran is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Meran is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Meran.  If not, see <http://www.gnu.org/licenses/>.
#

use strict;
use C4::AR::Auth;
use CGI;
use C4::Date;
use Date::Manip;
use C4::AR::Usuarios;
use C4::AR::Utilidades;


my $input = new CGI;

my ($template, $session, $t_params)= get_template_and_user({
                                template_name => "usuarios/potenciales/buscarUsuarioResult.tmpl",
                                query => $input,
                                type => "intranet",
                                authnotrequired => 0,
                                flagsrequired => {  ui => 'ANY', 
                                                    tipo_documento => 'ANY', 
                                                    accion => 'CONSULTA', 
                                                    entorno => 'usuarios'},
                                debug => 1,
                 });


my $obj=C4::AR::Utilidades::from_json_ISO($input->param('obj'));
my $orden=$obj->{'orden'}||'apellido';
my $socioBuscado=$obj->{'persona'};
my $ini=$obj->{'ini'};
my $funcion=$obj->{'funcion'};
my $inicial=$obj->{'inicial'};
my $activo;
my ($cantidad,$socios);
my ($ini,$pageNumber,$cantR)=C4::AR::Utilidades::InitPaginador($ini);
my $habilitados = $obj->{'habilitados_filter'} || 0; #se setea por defecto para mostrar los deshabilitados

if ($inicial){
    ($cantidad,$socios)= C4::AR::Usuarios::getSocioLike($socioBuscado,$orden,$ini,$cantR,$habilitados,$inicial);
}else{												
    ($cantidad,$socios)= C4::AR::Usuarios::getSocioLike($socioBuscado,$orden,$ini,$cantR,$habilitados,0);
}

$t_params->{'paginador'}= C4::AR::Utilidades::crearPaginador($cantidad,$cantR, $pageNumber,$funcion,$t_params);

if($socios){

	my $comboDeCategorias= C4::AR::Utilidades::generarComboCategoriasDeSocio();
	
	my @resultsdata; 
	my $i=0;
	
	foreach my $socio (@$socios){
		my $clase="";

    	$activo = C4::AR::Utilidades::translateYesNo_fromNumber($socio->esRegular);
		
		my %row = (
				clase=> $clase,
				socio => $socio,
				comboCategorias => $comboDeCategorias,
				activo => $activo,
		);
	
		push(@resultsdata, \%row);
	}
	
	$t_params->{'resultsloop'}= \@resultsdata;
	

}#END if($socios)

$t_params->{'cantidad'}= $cantidad;
$t_params->{'socio_busqueda'}= $socioBuscado;
C4::AR::Auth::output_html_with_http_headers($template, $t_params, $session);