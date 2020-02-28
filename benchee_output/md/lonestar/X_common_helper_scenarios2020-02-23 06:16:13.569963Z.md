# Benchmark

Benchmark run from 2020-02-23 06:16:41.813210Z UTC

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
    <td style="white-space: nowrap; text-align: right">69.87</td>
    <td style="white-space: nowrap; text-align: right">14.31 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.20%</td>
    <td style="white-space: nowrap; text-align: right">14.08 ms</td>
    <td style="white-space: nowrap; text-align: right">24.53 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">61.39</td>
    <td style="white-space: nowrap; text-align: right">16.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±20.19%</td>
    <td style="white-space: nowrap; text-align: right">16.05 ms</td>
    <td style="white-space: nowrap; text-align: right">40.99 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.08</td>
    <td style="white-space: nowrap; text-align: right">18.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.77%</td>
    <td style="white-space: nowrap; text-align: right">18.16 ms</td>
    <td style="white-space: nowrap; text-align: right">34.47 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (hound)</td>
    <td style="white-space: nowrap; text-align: right">38.78</td>
    <td style="white-space: nowrap; text-align: right">25.79 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.01%</td>
    <td style="white-space: nowrap; text-align: right">24.98 ms</td>
    <td style="white-space: nowrap; text-align: right">47.30 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (hound)</td>
    <td style="white-space: nowrap; text-align: right">36.86</td>
    <td style="white-space: nowrap; text-align: right">27.13 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.95%</td>
    <td style="white-space: nowrap; text-align: right">26.25 ms</td>
    <td style="white-space: nowrap; text-align: right">42.33 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">35.10</td>
    <td style="white-space: nowrap; text-align: right">28.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.96%</td>
    <td style="white-space: nowrap; text-align: right">27.83 ms</td>
    <td style="white-space: nowrap; text-align: right">45.88 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.63</td>
    <td style="white-space: nowrap; text-align: right">28.88 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.93%</td>
    <td style="white-space: nowrap; text-align: right">28.00 ms</td>
    <td style="white-space: nowrap; text-align: right">54.84 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">26.46</td>
    <td style="white-space: nowrap; text-align: right">37.79 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.98%</td>
    <td style="white-space: nowrap; text-align: right">36.60 ms</td>
    <td style="white-space: nowrap; text-align: right">63.60 ms</td>
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
    <td style="white-space: nowrap;text-align: right">69.87</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">61.39</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.08</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (hound)</td>
    <td style="white-space: nowrap; text-align: right">38.78</td>
    <td style="white-space: nowrap; text-align: right">1.8x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (hound)</td>
    <td style="white-space: nowrap; text-align: right">36.86</td>
    <td style="white-space: nowrap; text-align: right">1.9x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">35.10</td>
    <td style="white-space: nowrap; text-align: right">1.99x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.63</td>
    <td style="white-space: nowrap; text-align: right">2.02x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">26.46</td>
    <td style="white-space: nowrap; text-align: right">2.64x</td>
  </tr>
</table>


<hr/>

