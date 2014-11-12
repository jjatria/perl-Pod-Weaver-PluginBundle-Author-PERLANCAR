package Pod::Weaver::PluginBundle::Author::PERLANCAR;

# DATE
# VERSION

use 5.010001;

use Pod::Weaver::Config::Assembler;

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@Author::PERLANCAR/CorePrep', _exp('@CorePrep'), {} ],
        [ '@Author::PERLANCAR/Name', _exp('Name'), {} ],
        [ '@Author::PERLANCAR/Version', _exp('Version'), {format=>'This document describes version %v of %m (from Perl distribution %r), released on %{YYYY-MM-dd}d.'} ],
        [ '@Author::PERLANCAR/prelude', _exp('Region'), { region_name => 'prelude' } ],

        [ 'SYNOPSIS', _exp('Generic'), {} ],
        [ 'DESCRIPTION', _exp('Generic'), {} ],
        [ 'OVERVIEW', _exp('Generic'), {} ],

        [ 'ATTRIBUTES', _exp('Collect'), { command => 'attr' } ],
        [ 'METHODS', _exp('Collect'), { command => 'method' } ],
        [ 'FUNCTIONS', _exp('Collect'), { command => 'func' } ],
        #[ 'TYPES', _exp('Collect'), { command => ' } ],

        [ '@Author::PERLANCAR/Perinci', _exp('-Perinci'), {} ],

        [ '@Author::PERLANCAR/Leftovers', _exp('Leftovers'), {} ],
        [ '@Author::PERLANCAR/postlude',  _exp('Region'), { region_name => 'postlude' } ],

        [ '@Author::PERLANCAR/BashCompletion::GetoptLongComplete', _exp('BashCompletion::GetoptLongComplete'), {} ],
        [ '@Author::PERLANCAR/BashCompletion::PerinciCmdLine', _exp('BashCompletion::PerinciCmdLine'), {} ],

        [ '@Author::PERLANCAR/Homepage::DefaultCPAN', _exp('Homepage::DefaultCPAN'), {} ],
        [ '@Author::PERLANCAR/Source::DefaultGitHub', _exp('Source::DefaultGitHub'), {} ],
        [ '@Author::PERLANCAR/Bugs::DefaultRT', _exp('Bugs::DefaultRT'), {} ],
        [ '@Author::PERLANCAR/Authors', _exp('Authors'), {} ],
        [ '@Author::PERLANCAR/Legal', _exp('Legal'), {} ],

        [ '@Author::PERLANCAR/EnsureUniqueSections', _exp('-EnsureUniqueSections'), {} ],
        #[ '@Author::PERLANCAR/List', _exp('-Transformer'), { transformer => 'List' } ],
        [ '@Author::PERLANCAR/SingleEncoding', _exp('-SingleEncoding'), {} ],
    );
}

1;
# ABSTRACT: PERLANCAR's default Pod::Weaver config

=for Pod::Coverage .*

=head1 SYNOPSIS

In C<weaver.ini>:

 [@Author::PERLANCAR]

or in C<dist.ini>:

 [PodWeaver]
 config_plugin = @Author::PERLANCAR


=head1 DESCRIPTION

Equivalent to (see source code).


=head1 SEE ALSO

L<Pod::Weaver>

L<Dist::Zilla::PluginBundle::Author::PERLANCAR>
