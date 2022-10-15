[![Actions Status](https://github.com/tbrowder/Timezones-Global/actions/workflows/test.yml/badge.svg)](https://github.com/tbrowder/Timezones-Global/actions)

NAME
====

**Timezones::Global** - Provides time zone data and subroutines for use with modules 'DateTime::*' and 'LocalTime'

SYNOPSIS
========

```raku
use Timezones::Global;
```

DESCRIPTION
===========

Raku module **Timezones::Global** provides constant Global time zone data (currently valid through the year 2030) to be used by related date and time dynamic modules.

(Note this module is intended to supersede module **Timezones::US** and it includes all the code and data from that module which is now deprecated. Non-US users are encouraged to add regional data via a pull request. See [CONTRIBUTING](./CONTRIBUTING) for details.)

The following table shows the time zones included:

<table class="pod-table">
<caption>Global Time Zones</caption>
<thead><tr>
<th>Country Code</th> <th>Name</th> <th>Symbol</th> <th>UTC offset (hrs)</th>
</tr></thead>
<tbody>
<tr> <td>US</td> <td>Atlantic</td> <td>AST</td> <td>-4,</td> </tr> <tr> <td>US</td> <td>Eastern</td> <td>EST</td> <td>-5</td> </tr> <tr> <td>US</td> <td>Central</td> <td>CST</td> <td>-6</td> </tr> <tr> <td>US</td> <td>Mountain</td> <td>MST</td> <td>-7</td> </tr> <tr> <td>US</td> <td>Pacific</td> <td>PST</td> <td>-8</td> </tr> <tr> <td>US</td> <td>Alaska</td> <td>AKST</td> <td>-9</td> </tr> <tr> <td>US</td> <td>Hawaii-Aleutian</td> <td>HAST</td> <td>-10</td> </tr> <tr> <td>US</td> <td>Samoa</td> <td>WST</td> <td>-11</td> </tr> <tr> <td>US</td> <td>Chamorro</td> <td>CHST</td> <td>+10</td> </tr>
</tbody>
</table>

### Exported constants

The following constants are automatically exported into the using environment:

  * `SEC-PER-HOUR`

    Seconds per hour: 3600

  * `@tz`

    A list of time zones (lower-case symbols)

  * `%tzones` 

    A hash of all Global time zone abbreviations keyed by their symbols (lower-case) with values of names and UTC offsets

  * `%dst-exceptions`

    A hash of Global time zone abbreviations keyed by their symbols (lower-case) with values of states or regions and details of Daylight Saving exceptions (**CAUTION**: this an incomplete list at the moment)

  * `%utc-offsets`

    A hash of Global time zone abbreviations keyed by their symbols (lower-case) with value of their UTC offset in hours

  * `%offsets-utc`

    A hash of Global time zone offsets keyed by their hours with value of their symbols (lower-case) 

### Exported subroutines

The following subroutines are automatically exported into the using environment:

  * **begin-dst**($year --> DateTime) {...}

    Return the time when DST (Daylight Saving Time) begins.

  * **end-dst**($year --> DateTime) {...}

    Return the time when DST ends.

  * **is-dst**(DateTime :$localtime! --> Bool) {...}

    Return True if the local time is DST, otherwise return False.

  * **is-dst**(:$year!, :$month, :$day, :$hour, :$minute, :$second --> Bool) {...}

    Return True if the local time is DST, otherwise return False.

  * **show-us-data**(--> Str) {...}

    List the time zone and DST data being used.

AUTHOR
======

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

© 2022 Tom Browder

This library is free software; you may redistribute it or modify it under the Artistic License 2.0.

