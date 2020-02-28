# Benchmark

Benchmark run from 2020-02-23 05:45:48.883678Z UTC

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
    <td style="white-space: nowrap">Navigate (hound)</td>
    <td style="white-space: nowrap; text-align: right">71.84</td>
    <td style="white-space: nowrap; text-align: right">13.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.71%</td>
    <td style="white-space: nowrap; text-align: right">13.75 ms</td>
    <td style="white-space: nowrap; text-align: right">16.22 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">62.89</td>
    <td style="white-space: nowrap; text-align: right">15.90 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.81%</td>
    <td style="white-space: nowrap; text-align: right">15.94 ms</td>
    <td style="white-space: nowrap; text-align: right">18.23 ms</td>
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
    <td style="white-space: nowrap;text-align: right">71.84</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">62.89</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>
</table>


<hr/>


__Input: Element displayed__

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
    <td style="white-space: nowrap; text-align: right">71.18</td>
    <td style="white-space: nowrap; text-align: right">14.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.47%</td>
    <td style="white-space: nowrap; text-align: right">13.92 ms</td>
    <td style="white-space: nowrap; text-align: right">16.34 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">64.19</td>
    <td style="white-space: nowrap; text-align: right">15.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.47%</td>
    <td style="white-space: nowrap; text-align: right">15.76 ms</td>
    <td style="white-space: nowrap; text-align: right">17.66 ms</td>
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
    <td style="white-space: nowrap;text-align: right">71.18</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">64.19</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
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
    <td style="white-space: nowrap">Navigate (hound)</td>
    <td style="white-space: nowrap; text-align: right">71.12</td>
    <td style="white-space: nowrap; text-align: right">14.06 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.41%</td>
    <td style="white-space: nowrap; text-align: right">13.98 ms</td>
    <td style="white-space: nowrap; text-align: right">16.44 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">63.15</td>
    <td style="white-space: nowrap; text-align: right">15.84 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.51%</td>
    <td style="white-space: nowrap; text-align: right">15.93 ms</td>
    <td style="white-space: nowrap; text-align: right">17.67 ms</td>
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
    <td style="white-space: nowrap;text-align: right">71.12</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">63.15</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>
</table>


<hr/>


__Input: Find element__

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
    <td style="white-space: nowrap; text-align: right">71.48</td>
    <td style="white-space: nowrap; text-align: right">13.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.48%</td>
    <td style="white-space: nowrap; text-align: right">13.92 ms</td>
    <td style="white-space: nowrap; text-align: right">16.05 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">61.92</td>
    <td style="white-space: nowrap; text-align: right">16.15 ms</td>
    <td style="white-space: nowrap; text-align: right">±18.07%</td>
    <td style="white-space: nowrap; text-align: right">15.93 ms</td>
    <td style="white-space: nowrap; text-align: right">38.20 ms</td>
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
    <td style="white-space: nowrap;text-align: right">71.48</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">61.92</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>
</table>


<hr/>


__Input: Navigate to page__

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
    <td style="white-space: nowrap; text-align: right">69.86</td>
    <td style="white-space: nowrap; text-align: right">14.31 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.85%</td>
    <td style="white-space: nowrap; text-align: right">14.13 ms</td>
    <td style="white-space: nowrap; text-align: right">16.69 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">63.03</td>
    <td style="white-space: nowrap; text-align: right">15.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.66%</td>
    <td style="white-space: nowrap; text-align: right">16.02 ms</td>
    <td style="white-space: nowrap; text-align: right">17.29 ms</td>
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
    <td style="white-space: nowrap;text-align: right">69.86</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">63.03</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>
</table>


<hr/>


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
    <td style="white-space: nowrap; text-align: right">71.50</td>
    <td style="white-space: nowrap; text-align: right">13.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.31%</td>
    <td style="white-space: nowrap; text-align: right">13.90 ms</td>
    <td style="white-space: nowrap; text-align: right">16.77 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">63.69</td>
    <td style="white-space: nowrap; text-align: right">15.70 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.03%</td>
    <td style="white-space: nowrap; text-align: right">15.70 ms</td>
    <td style="white-space: nowrap; text-align: right">17.04 ms</td>
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
    <td style="white-space: nowrap;text-align: right">71.50</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">63.69</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
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
    <td style="white-space: nowrap">Navigate (hound)</td>
    <td style="white-space: nowrap; text-align: right">72.99</td>
    <td style="white-space: nowrap; text-align: right">13.70 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.10%</td>
    <td style="white-space: nowrap; text-align: right">13.61 ms</td>
    <td style="white-space: nowrap; text-align: right">16.10 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">63.21</td>
    <td style="white-space: nowrap; text-align: right">15.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.42%</td>
    <td style="white-space: nowrap; text-align: right">16.01 ms</td>
    <td style="white-space: nowrap; text-align: right">17.67 ms</td>
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
    <td style="white-space: nowrap;text-align: right">72.99</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">63.21</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>
</table>


<hr/>

