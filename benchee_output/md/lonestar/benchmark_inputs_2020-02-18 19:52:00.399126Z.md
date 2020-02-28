# Benchmark

Benchmark run from 2020-02-18 19:52:22.710810Z UTC

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>macOS</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">16</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">32 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.7.4</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">22.0</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">5 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">2 s</td>
  </tr>
</table>

## Statistics




__Input: data__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Hound</td>
    <td style="white-space: nowrap; text-align: right">3.54</td>
    <td style="white-space: nowrap; text-align: right">282.22 ms</td>
    <td style="white-space: nowrap; text-align: right">±33.48%</td>
    <td style="white-space: nowrap; text-align: right">320.09 ms</td>
    <td style="white-space: nowrap; text-align: right">384.09 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.76</td>
    <td style="white-space: nowrap; text-align: right">362.79 ms</td>
    <td style="white-space: nowrap; text-align: right">±31.77%</td>
    <td style="white-space: nowrap; text-align: right">362.04 ms</td>
    <td style="white-space: nowrap; text-align: right">509.74 ms</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Hound</td>
    <td style="white-space: nowrap;text-align: right">3.54</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.76</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>
</table>


<hr/>

