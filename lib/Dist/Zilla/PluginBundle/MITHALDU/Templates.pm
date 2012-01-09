use strictures;

package Dist::Zilla::PluginBundle::MITHALDU::Templates;
# VERSION

# ABSTRACT: some templates for MITHALDU's dzil pluginbundle

# COPYRIGHT

use Data::Section::Simple;

=head1 METHODS

=head2 $self->data( $template )

Returns the contents of a template stored in the DATA section of this module.
The single scalar parameter specifies the name of the template to be retrieved.

=cut

sub data {
    my ( $class, $template ) = @_;
    my $data = Data::Section::Simple->new( $class )->get_data_section( $template );
    return $data;
}

1;

__DATA__
