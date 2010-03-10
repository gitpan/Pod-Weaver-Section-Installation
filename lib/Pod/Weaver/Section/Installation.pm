use strict;  # keep [TestingAndDebugging::RequireUseStrict] happy
package Pod::Weaver::Section::Installation;
our $VERSION = '1.100690';

# ABSTRACT: add an INSTALLATION pod section
use Moose;
with 'Pod::Weaver::Role::Section';
use namespace::autoclean;
use Moose::Autobox;

sub weave_section {
    my ($self, $document, $input) = @_;
    $document->children->push(
        Pod::Elemental::Element::Nested->new(
            {   command  => 'head1',
                content  => 'INSTALLATION',
                children => [
                    Pod::Elemental::Element::Pod5::Ordinary->new(
                        {   content =>
'See perlmodinstall for information and options on installing Perl modules.'
                        }
                    ),
                ],
            }
        ),
    );
}
1;


__END__
=pod

=head1 NAME

Pod::Weaver::Section::Installation - add an INSTALLATION pod section

=head1 VERSION

version 1.100690

=head1 SYNOPSIS

In C<weaver.ini>:

    [Installation]

=head1 OVERVIEW

This section plugin will produce a hunk of Pod that describes how to install
the distribution.

=head1 FUNCTIONS

=head2 weave_section

adds the C<INSTALLATION> section.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AUTHOR

  Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

