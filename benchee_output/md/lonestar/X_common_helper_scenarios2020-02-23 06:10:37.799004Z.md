# Benchmark

Benchmark run from 2020-02-23 06:10:59.030530Z UTC

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
    <td style="white-space: nowrap; text-align: right">69.75</td>
    <td style="white-space: nowrap; text-align: right">14.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.52%</td>
    <td style="white-space: nowrap; text-align: right">14.25 ms</td>
    <td style="white-space: nowrap; text-align: right">16.55 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">61.01</td>
    <td style="white-space: nowrap; text-align: right">16.39 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.82%</td>
    <td style="white-space: nowrap; text-align: right">16.46 ms</td>
    <td style="white-space: nowrap; text-align: right">22.76 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">52.52</td>
    <td style="white-space: nowrap; text-align: right">19.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±20.62%</td>
    <td style="white-space: nowrap; text-align: right">18.36 ms</td>
    <td style="white-space: nowrap; text-align: right">41.39 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (hound)</td>
    <td style="white-space: nowrap; text-align: right">36.77</td>
    <td style="white-space: nowrap; text-align: right">27.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.90%</td>
    <td style="white-space: nowrap; text-align: right">26.43 ms</td>
    <td style="white-space: nowrap; text-align: right">53.81 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.85</td>
    <td style="white-space: nowrap; text-align: right">28.70 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.85%</td>
    <td style="white-space: nowrap; text-align: right">27.94 ms</td>
    <td style="white-space: nowrap; text-align: right">42.29 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">26.06</td>
    <td style="white-space: nowrap; text-align: right">38.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.20%</td>
    <td style="white-space: nowrap; text-align: right">37.07 ms</td>
    <td style="white-space: nowrap; text-align: right">66.69 ms</td>
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
    <td style="white-space: nowrap;text-align: right">69.75</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">61.01</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">52.52</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (hound)</td>
    <td style="white-space: nowrap; text-align: right">36.77</td>
    <td style="white-space: nowrap; text-align: right">1.9x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.85</td>
    <td style="white-space: nowrap; text-align: right">2.0x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">26.06</td>
    <td style="white-space: nowrap; text-align: right">2.68x</td>
  </tr>
</table>


<hr/>

