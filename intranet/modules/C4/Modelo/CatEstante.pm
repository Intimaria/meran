package C4::Modelo::CatEstante;

use strict;

use base qw(C4::Modelo::DB::Object::AutoBase2);

__PACKAGE__->meta->setup(
    table   => 'cat_estante',

    columns => [
        id        => { type => 'integer', overflow => 'truncate', not_null => 1 },
        estante   => { type => 'varchar', overflow => 'truncate', length => 255 },
        tipo      => { type => 'varchar', overflow => 'truncate', length => 255 },
        padre     => { type => 'integer', overflow => 'truncate', default => '0', not_null => 1 },
    ],

    primary_key_columns => [ 'id' ],

    relationships => [
        estante_padre => {
            class       => 'C4::Modelo::CatEstante',
            key_columns => { padre => 'id' },
            type        => 'one to one',
        },

        contenido => {
            class       => 'C4::Modelo::CatContenidoEstante',
            key_columns => { id => 'id_estante' },
            type        => 'one to many',
#            manager_args => 
#                                {
#                                    sort_by => 'indice_busqueda.titulo ASC'
#                                },
        },
    ],
);


sub getId{
    my ($self) = shift;
    return ($self->id);
}

sub setId{
    my ($self) = shift;
    my ($id) = @_;
    $self->id($id);
}

sub getEstante{
    my ($self) = shift;
    return ($self->estante);
}

sub setEstante{
    my ($self) = shift;
    my ($estante) = @_;
    $self->estante($estante);
}

sub getPadre{
    my ($self) = shift;
    return ($self->padre);
}

sub setPadre {
    my ($self) = shift;
    my ($padre) = @_;
    $self->padre($padre);
}

sub getTipo{
    my ($self) = shift;
    return ($self->tipo);
}

sub setTipo {
    my ($self) = shift;
    my ($tipo) = @_;
    $self->tipo($tipo);
}
sub getContenido{
    my ($self) = shift;
    return ($self->contenido);
}
1;
