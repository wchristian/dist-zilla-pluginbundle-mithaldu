use strict;
use warnings;
package Pod::Weaver::PluginBundle::MITHALDU;
# VERSION

use Pod::Weaver::Config::Assembler;

# Dependencies
use Pod::Weaver::Plugin::WikiDoc ();
use Pod::Elemental::Transformer::List 0.101620 ();
use Pod::Weaver::Section::Support 1.001 ();
use Pod::Weaver::Section::Contributors ();

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

my $repo_intro = <<'END';
This is open source software.  The code repository is available for
public review and contribution under the terms of the license.
END

my $bugtracker_content = <<'END';
Please report any bugs or feature requests through the issue tracker
at {WEB}.
You will be notified automatically of any progress on your issue.
END

sub mvp_bundle_config {
  my @plugins;
  push @plugins, (
    [ '@MITHALDU/WikiDoc',     _exp('-WikiDoc'), {} ],
    [ '@MITHALDU/CorePrep',    _exp('@CorePrep'), {} ],
    [ '@MITHALDU/Name',        _exp('Name'),      {} ],
    [ '@MITHALDU/Version',     _exp('Version'),   {} ],

    [ '@MITHALDU/Prelude',     _exp('Region'),  { region_name => 'prelude'     } ],
    [ '@MITHALDU/Synopsis',    _exp('Generic'), { header      => 'SYNOPSIS'    } ],
    [ '@MITHALDU/Description', _exp('Generic'), { header      => 'DESCRIPTION' } ],
    [ '@MITHALDU/Overview',    _exp('Generic'), { header      => 'OVERVIEW'    } ],

    [ '@MITHALDU/Stability',   _exp('Generic'), { header      => 'STABILITY'   } ],
  );

  for my $plugin (
    [ 'Attributes', _exp('Collect'), { command => 'attr'   } ],
    [ 'Methods',    _exp('Collect'), { command => 'method' } ],
    [ 'Functions',  _exp('Collect'), { command => 'func'   } ],
  ) {
    $plugin->[2]{header} = uc $plugin->[0];
    push @plugins, $plugin;
  }

  push @plugins, (
    [ '@MITHALDU/Leftovers', _exp('Leftovers'), {} ],
    [ '@MITHALDU/postlude',  _exp('Region'),    { region_name => 'postlude' } ],
    [ '@MITHALDU/Support',   _exp('Support'),
      {
        perldoc => 0,
        websites => 'none',
        bugs => 'metadata',
        bugs_content => $bugtracker_content,
        repository_link => 'both',
        repository_content => $repo_intro
      }
    ],
    [ '@MITHALDU/Authors',   _exp('Authors'),   {} ],
    [ '@MITHALDU/Contributors', _exp('Contributors'), {} ],
    [ '@MITHALDU/Legal',     _exp('Legal'),     {} ],
    [ '@MITHALDU/List',      _exp('-Transformer'), { 'transformer' => 'List' } ],
  );

  return @plugins;
}

# ABSTRACT: MITHALDU's default Pod::Weaver config
# COPYRIGHT

1;

=for Pod::Coverage mvp_bundle_config

=begin wikidoc

= DESCRIPTION

This is a [Pod::Weaver] PluginBundle.  It is roughly equivalent to the
following weaver.ini:

  [-WikiDoc]

  [@Default]

  [Support]
  perldoc = 0
  websites = none
  bugs = metadata
  bugs_content = ... stuff (web only, email omitted) ...
  repository_link = both
  repository_content = ... stuff ...

  [-Transformer]
  transfomer = List

= USAGE

This PluginBundle is used automatically with the C<@MITHALDU> [Dist::Zilla]
plugin bundle.

= SEE ALSO

* [Pod::Weaver]
* [Pod::Weaver::Plugin::WikiDoc]
* [Pod::Elemental::Transformer::List]
* [Dist::Zilla::Plugin::PodWeaver]

=end wikidoc

=cut
