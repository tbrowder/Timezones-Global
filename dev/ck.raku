#!/usr/bin/env raku

use lib "../lib";
use Timezones::Global;

for %Timezones::Global::utc-offsets.kv -> $k, $v {
    say "key '$k' => value '$v'";
}

for %Timezones::Global::offsets-utc.kv -> $k, $v {
    say "key '$k' => value '$v'";
}
