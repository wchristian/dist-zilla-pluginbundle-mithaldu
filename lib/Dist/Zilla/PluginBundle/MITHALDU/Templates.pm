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

@@ .gitignore
# THIS IS AN AUTOMATICALLY GENERATED FILE.
# CHANGES TO IT WILL BE DESTROYED BY Dist::Zilla.
# TO EFFECT PERMANENT CHANGES, EDIT dist.ini AND
# RUN `dzil build`.

*.bak
*.old
*.tmp
*.tar.gz
*~
/Build
/Build.bat
/Makefile
/_build
/.build
/blib
/cover_db
/pm_to_blib
/PM_to_blib
/MYMETA.yml
/{{ $dist->name }}-*
