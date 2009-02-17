#!/usr/bin/perl -w

use strict;
use warnings;
use diagnostics;

use Test::More tests => 90;
use lib '/usr/local/pf/lib';

BEGIN { use_ok('pf::SNMP') }
BEGIN { use_ok('pf::SNMP::Accton') }
BEGIN { use_ok('pf::SNMP::Accton::ES3526XA') }
BEGIN { use_ok('pf::SNMP::Accton::ES3528M') }
BEGIN { use_ok('pf::SNMP::Cisco') }
BEGIN { use_ok('pf::SNMP::Cisco::Aironet') }
BEGIN { use_ok('pf::SNMP::Cisco::Aironet_1130') }
BEGIN { use_ok('pf::SNMP::Cisco::Aironet_1242') }
BEGIN { use_ok('pf::SNMP::Cisco::Aironet_1250') }
BEGIN { use_ok('pf::SNMP::Cisco::Catalyst_2900XL') }
BEGIN { use_ok('pf::SNMP::Cisco::Catalyst_2950') }
BEGIN { use_ok('pf::SNMP::Cisco::Catalyst_2960') }
BEGIN { use_ok('pf::SNMP::Cisco::Catalyst_2970') }
BEGIN { use_ok('pf::SNMP::Cisco::Catalyst_3500XL') }
BEGIN { use_ok('pf::SNMP::Cisco::Catalyst_3550') }
BEGIN { use_ok('pf::SNMP::Cisco::Catalyst_3560') }
BEGIN { use_ok('pf::SNMP::Cisco::Controller_4400_4_2_130') }
BEGIN { use_ok('pf::SNMP::Dell') }
BEGIN { use_ok('pf::SNMP::Dell::PowerConnect3424') }
BEGIN { use_ok('pf::SNMP::Dlink') }
BEGIN { use_ok('pf::SNMP::Dlink::DES_3526') }
BEGIN { use_ok('pf::SNMP::Enterasys') }
BEGIN { use_ok('pf::SNMP::Enterasys::SecureStack_C2') }
BEGIN { use_ok('pf::SNMP::HP') }
BEGIN { use_ok('pf::SNMP::HP::Procurve_2500') }
BEGIN { use_ok('pf::SNMP::HP::Procurve_2600') }
BEGIN { use_ok('pf::SNMP::HP::Procurve_4100') }
BEGIN { use_ok('pf::SNMP::Intel') }
BEGIN { use_ok('pf::SNMP::Intel::Express_460') }
BEGIN { use_ok('pf::SNMP::Intel::Express_530') }
BEGIN { use_ok('pf::SNMP::Linksys') }
BEGIN { use_ok('pf::SNMP::Linksys::SRW224G4') }
BEGIN { use_ok('pf::SNMP::Nortel') }
BEGIN { use_ok('pf::SNMP::Nortel::BayStack4550') }
BEGIN { use_ok('pf::SNMP::Nortel::BayStack470') }
BEGIN { use_ok('pf::SNMP::Nortel::BayStack5520') }
BEGIN { use_ok('pf::SNMP::Nortel::BayStack5520Stacked') }
BEGIN { use_ok('pf::SNMP::Nortel::BPS2000') }
BEGIN { use_ok('pf::SNMP::Nortel::ES325') }
BEGIN { use_ok('pf::SNMP::SMC') }
BEGIN { use_ok('pf::SNMP::SMC::TS6224M') }
BEGIN { use_ok('pf::SNMP::ThreeCom') }
BEGIN { use_ok('pf::SNMP::ThreeCom::NJ220') }
BEGIN { use_ok('pf::SNMP::ThreeCom::SS4200') }
BEGIN { use_ok('pf::SNMP::ThreeCom::SS4500') }

my @SNMPobjects = qw(
    pf::SNMP
    pf::SNMP::Accton
    pf::SNMP::Accton::ES3526XA
    pf::SNMP::Accton::ES3528M
    pf::SNMP::Cisco
    pf::SNMP::Cisco::Aironet
    pf::SNMP::Cisco::Aironet_1130
    pf::SNMP::Cisco::Aironet_1242
    pf::SNMP::Cisco::Aironet_1250
    pf::SNMP::Cisco::Catalyst_2900XL
    pf::SNMP::Cisco::Catalyst_2950
    pf::SNMP::Cisco::Catalyst_2960
    pf::SNMP::Cisco::Catalyst_2970
    pf::SNMP::Cisco::Catalyst_3500XL
    pf::SNMP::Cisco::Catalyst_3550
    pf::SNMP::Cisco::Catalyst_3560
    pf::SNMP::Cisco::Controller_4400_4_2_130
    pf::SNMP::Dell
    pf::SNMP::Dell::PowerConnect3424
    pf::SNMP::Dlink
    pf::SNMP::Dlink::DES_3526
    pf::SNMP::Enterasys
    pf::SNMP::Enterasys::SecureStack_C2
    pf::SNMP::HP
    pf::SNMP::HP::Procurve_2500
    pf::SNMP::HP::Procurve_2600
    pf::SNMP::HP::Procurve_4100
    pf::SNMP::Intel
    pf::SNMP::Intel::Express_460
    pf::SNMP::Intel::Express_530
    pf::SNMP::Linksys
    pf::SNMP::Linksys::SRW224G4
    pf::SNMP::Nortel
    pf::SNMP::Nortel::BayStack4550
    pf::SNMP::Nortel::BayStack470
    pf::SNMP::Nortel::BayStack5520
    pf::SNMP::Nortel::BayStack5520Stacked
    pf::SNMP::Nortel::BPS2000
    pf::SNMP::Nortel::ES325
    pf::SNMP::SMC
    pf::SNMP::SMC::TS6224M
    pf::SNMP::ThreeCom
    pf::SNMP::ThreeCom::NJ220
    pf::SNMP::ThreeCom::SS4200
    pf::SNMP::ThreeCom::SS4500
);

foreach my $obj_name (@SNMPobjects) {
    my $obj = $obj_name->new();
    isa_ok( $obj, $obj_name, $obj_name );
}
