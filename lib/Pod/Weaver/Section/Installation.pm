use strict;  # keep [TestingAndDebugging::RequireUseStrict] happy
package Pod::Weaver::Section::Installation;
BEGIN {
  $Pod::Weaver::Section::Installation::VERSION = '1.101420';
}

# ABSTRACT: Add an INSTALLATION pod section
use Moose;
with 'Pod::Weaver::Role::Section';
use namespace::autoclean;
use Moose::Autobox;

sub weave_section {
    my ($self, $document) = @_;
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

Pod::Weaver::Section::Installation - Add an INSTALLATION pod section

=head1 VERSION

version 1.101420

=head1 SYNOPSIS

In C<weaver.ini>:

    [Installation]

=head1 OVERVIEW

This section plugin will produce a hunk of Pod that describes how to install
the distribution.

=head1 FUNCTIONS

=head2 weave_section

adds the C<INSTALLATION> section.

=for test_synopsis 1;
__END__

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org/Public/Dist/Display.html?Name=Pod-Weaver-Section-Installation>.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see
L<http://search.cpan.org/dist/Pod-Weaver-Section-Installation/>.

The development version lives at
L<http://github.com/hanekomu/Pod-Weaver-Section-Installation/>.
Instead of sending patches, please fork this project using the standard git
and github infrastructure.

=head1 AUTHOR

  Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

