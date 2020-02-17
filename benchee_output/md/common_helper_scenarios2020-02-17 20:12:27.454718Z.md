# Benchmark

Benchmark run from 2020-02-17 20:13:23.734728Z UTC

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
    <td style="white-space: nowrap; text-align: right">3.83 M</td>
    <td style="white-space: nowrap; text-align: right">261.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±1305.47%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.14 M</td>
    <td style="white-space: nowrap; text-align: right">318.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±3546.92%</td>
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
    <td style="white-space: nowrap;text-align: right">3.83 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.14 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
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
    <td style="white-space: nowrap; text-align: right">3.70 M</td>
    <td style="white-space: nowrap; text-align: right">270.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±1319.94%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.14 M</td>
    <td style="white-space: nowrap; text-align: right">318.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±3537.00%</td>
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
    <td style="white-space: nowrap;text-align: right">3.70 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.14 M</td>
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
    <td style="white-space: nowrap; text-align: right">3.65 M</td>
    <td style="white-space: nowrap; text-align: right">273.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±1439.64%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.98 M</td>
    <td style="white-space: nowrap; text-align: right">335.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±3870.44%</td>
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
    <td style="white-space: nowrap;text-align: right">3.65 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">2.98 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
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
    <td style="white-space: nowrap; text-align: right">3.63 M</td>
    <td style="white-space: nowrap; text-align: right">275.58 ns</td>
    <td style="white-space: nowrap; text-align: right">±1235.96%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.09 M</td>
    <td style="white-space: nowrap; text-align: right">323.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±3627.87%</td>
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
    <td style="white-space: nowrap;text-align: right">3.63 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.09 M</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
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
    <td style="white-space: nowrap; text-align: right">3.64 M</td>
    <td style="white-space: nowrap; text-align: right">274.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±1299.40%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.16 M</td>
    <td style="white-space: nowrap; text-align: right">315.99 ns</td>
    <td style="white-space: nowrap; text-align: right">±2324.44%</td>
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
    <td style="white-space: nowrap;text-align: right">3.64 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.16 M</td>
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
    <td style="white-space: nowrap; text-align: right">3.39 M</td>
    <td style="white-space: nowrap; text-align: right">294.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±1044.68%</td>
    <td style="white-space: nowrap; text-align: right">0 ns</td>
    <td style="white-space: nowrap; text-align: right">1000 ns</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.18 M</td>
    <td style="white-space: nowrap; text-align: right">314.68 ns</td>
    <td style="white-space: nowrap; text-align: right">±3535.05%</td>
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
    <td style="white-space: nowrap;text-align: right">3.39 M</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">3.18 M</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>
</table>


<hr/>

