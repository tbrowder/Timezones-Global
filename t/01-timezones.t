use Test;
use IO::Capture::Simple;

use Timezones::Global;

lives-ok {
    my $out = capture_stdout { show-us-data };
}

done-testing;

