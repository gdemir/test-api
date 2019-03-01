#!/usr/bin/perl

use strict;
use warnings;

use LWP::UserAgent;
use CGI;

my $isim = 'Armagan';
my $soyisim = 'Plus';
my $url = 'http://www.*.com/api/v1/create';

my $ua       = LWP::UserAgent->new();
my $response = $ua->post($url, { 'username' => $isim , 'email' => $soyisim });
my $content  = $response->decoded_content();

my $cgi = CGI->new();
print $cgi->header();
print "içerik";
print  $content;
