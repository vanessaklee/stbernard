# Benchmark

Benchmark run from 2020-02-23 06:10:12.266403Z UTC

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
    <td style="white-space: nowrap">1 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">2 s</td>
  </tr>
</table>

## Statistics




__Input: Select option__

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
    <td style="white-space: nowrap">Navigate (hound)</td>
    <td style="white-space: nowrap; text-align: right">69.84</td>
    <td style="white-space: nowrap; text-align: right">14.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.23%</td>
    <td style="white-space: nowrap; text-align: right">14.16 ms</td>
    <td style="white-space: nowrap; text-align: right">17.16 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">59.83</td>
    <td style="white-space: nowrap; text-align: right">16.71 ms</td>
    <td style="white-space: nowrap; text-align: right">±18.97%</td>
    <td style="white-space: nowrap; text-align: right">16.44 ms</td>
    <td style="white-space: nowrap; text-align: right">40.30 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.15</td>
    <td style="white-space: nowrap; text-align: right">18.47 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.18%</td>
    <td style="white-space: nowrap; text-align: right">18.15 ms</td>
    <td style="white-space: nowrap; text-align: right">30.84 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.52</td>
    <td style="white-space: nowrap; text-align: right">28.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.83%</td>
    <td style="white-space: nowrap; text-align: right">28.30 ms</td>
    <td style="white-space: nowrap; text-align: right">49.81 ms</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Navigate (hound)</td>
    <td style="white-space: nowrap;text-align: right">69.84</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">59.83</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.15</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.52</td>
    <td style="white-space: nowrap; text-align: right">2.02x</td>
  </tr>
</table>


<hr/>

