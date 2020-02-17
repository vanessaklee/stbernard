# Benchmark

Benchmark run from 2020-02-17 20:34:02.178691Z UTC

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




__Input: Click button__

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
    <td style="white-space: nowrap; text-align: right">3.74 M</td>
    <td style="white-space: nowrap; text-align: right">267.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±1233.26%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.21 M</td>
    <td style="white-space: nowrap; text-align: right">311.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±2765.24%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.74 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.21 M</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>
</table>


<hr/>


__Input: DOM element displayed__

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
    <td style="white-space: nowrap; text-align: right">3.72 M</td>
    <td style="white-space: nowrap; text-align: right">269.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±1112.68%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.16 M</td>
    <td style="white-space: nowrap; text-align: right">316.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±2977.64%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.72 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.16 M</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>
</table>


<hr/>


__Input: Fill-in input__

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
    <td style="white-space: nowrap; text-align: right">3.76 M</td>
    <td style="white-space: nowrap; text-align: right">266.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±1136.39%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.00 M</td>
    <td style="white-space: nowrap; text-align: right">332.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±3329.40%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.76 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>
</table>


<hr/>


__Input: Find DOM element__

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
    <td style="white-space: nowrap; text-align: right">3.69 M</td>
    <td style="white-space: nowrap; text-align: right">271.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±1117.18%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.97 M</td>
    <td style="white-space: nowrap; text-align: right">336.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±3450.92%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.69 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.97 M</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>
</table>


<hr/>


__Input: Navigate to a page__

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
    <td style="white-space: nowrap; text-align: right">3.75 M</td>
    <td style="white-space: nowrap; text-align: right">266.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±1240.70%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">319.66 ns</td>
    <td style="white-space: nowrap; text-align: right">±3517.60%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.75 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>
</table>


<hr/>


__Input: Visible text__

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
    <td style="white-space: nowrap; text-align: right">3.67 M</td>
    <td style="white-space: nowrap; text-align: right">272.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±1134.14%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.11 M</td>
    <td style="white-space: nowrap; text-align: right">321.57 ns</td>
    <td style="white-space: nowrap; text-align: right">±3237.83%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.67 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.11 M</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>
</table>


<hr/>

