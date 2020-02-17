# Benchmark

Benchmark run from 2020-02-17 20:04:23.099469Z UTC

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
    <td style="white-space: nowrap; text-align: right">3.33 M</td>
    <td style="white-space: nowrap; text-align: right">300.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±11139.76%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.94 M</td>
    <td style="white-space: nowrap; text-align: right">340.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±8783.60%</td>
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
    <td style="white-space: nowrap;text-align: right">3.33 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.94 M</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
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
    <td style="white-space: nowrap; text-align: right">4.23 M</td>
    <td style="white-space: nowrap; text-align: right">236.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±2152.12%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.97 M</td>
    <td style="white-space: nowrap; text-align: right">336.91 ns</td>
    <td style="white-space: nowrap; text-align: right">±8762.12%</td>
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
    <td style="white-space: nowrap;text-align: right">4.23 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.97 M</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
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
    <td style="white-space: nowrap; text-align: right">3.33 M</td>
    <td style="white-space: nowrap; text-align: right">300.32 ns</td>
    <td style="white-space: nowrap; text-align: right">±12170.23%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.96 M</td>
    <td style="white-space: nowrap; text-align: right">337.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±8564.30%</td>
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
    <td style="white-space: nowrap;text-align: right">3.33 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.96 M</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
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
    <td style="white-space: nowrap; text-align: right">3.28 M</td>
    <td style="white-space: nowrap; text-align: right">304.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±12168.94%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.90 M</td>
    <td style="white-space: nowrap; text-align: right">345.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±8285.02%</td>
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
    <td style="white-space: nowrap;text-align: right">3.28 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.90 M</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
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
    <td style="white-space: nowrap; text-align: right">3.34 M</td>
    <td style="white-space: nowrap; text-align: right">299.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±13069.02%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.92 M</td>
    <td style="white-space: nowrap; text-align: right">343.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±9101.50%</td>
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
    <td style="white-space: nowrap;text-align: right">3.34 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.92 M</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
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
    <td style="white-space: nowrap; text-align: right">3.30 M</td>
    <td style="white-space: nowrap; text-align: right">302.93 ns</td>
    <td style="white-space: nowrap; text-align: right">±12625.31%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.90 M</td>
    <td style="white-space: nowrap; text-align: right">344.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±8894.03%</td>
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
    <td style="white-space: nowrap;text-align: right">3.30 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.90 M</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>
</table>


<hr/>

