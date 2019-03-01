#!/usr/bin/perl

use strict;
use warnings;

use LWP::UserAgent;
use CGI;

my $url = 'http://www.neflan.com/api/v1/index';

my $ua       = LWP::UserAgent->new();
my $response = $ua->get($url);
my $content  = $response->decoded_content();

my $cgi = CGI->new();
print $cgi->header();
print "Liste";
print  $content;
