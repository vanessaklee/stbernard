# Benchmark

Benchmark run from 2020-02-23 06:34:22.455368Z UTC

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
    <td style="white-space: nowrap; text-align: right">70.92</td>
    <td style="white-space: nowrap; text-align: right">14.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.52%</td>
    <td style="white-space: nowrap; text-align: right">13.89 ms</td>
    <td style="white-space: nowrap; text-align: right">19.17 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">62.49</td>
    <td style="white-space: nowrap; text-align: right">16.00 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.22%</td>
    <td style="white-space: nowrap; text-align: right">16.07 ms</td>
    <td style="white-space: nowrap; text-align: right">18.94 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (hound)</td>
    <td style="white-space: nowrap; text-align: right">55.25</td>
    <td style="white-space: nowrap; text-align: right">18.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.95%</td>
    <td style="white-space: nowrap; text-align: right">17.63 ms</td>
    <td style="white-space: nowrap; text-align: right">33.98 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">53.77</td>
    <td style="white-space: nowrap; text-align: right">18.60 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.86%</td>
    <td style="white-space: nowrap; text-align: right">18.03 ms</td>
    <td style="white-space: nowrap; text-align: right">33.80 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (hound)</td>
    <td style="white-space: nowrap; text-align: right">38.93</td>
    <td style="white-space: nowrap; text-align: right">25.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.46%</td>
    <td style="white-space: nowrap; text-align: right">25.14 ms</td>
    <td style="white-space: nowrap; text-align: right">46.25 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (hound)</td>
    <td style="white-space: nowrap; text-align: right">36.91</td>
    <td style="white-space: nowrap; text-align: right">27.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±18.98%</td>
    <td style="white-space: nowrap; text-align: right">26.14 ms</td>
    <td style="white-space: nowrap; text-align: right">57.21 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">35.30</td>
    <td style="white-space: nowrap; text-align: right">28.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.97%</td>
    <td style="white-space: nowrap; text-align: right">27.68 ms</td>
    <td style="white-space: nowrap; text-align: right">49.33 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.85</td>
    <td style="white-space: nowrap; text-align: right">28.70 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.41%</td>
    <td style="white-space: nowrap; text-align: right">28.05 ms</td>
    <td style="white-space: nowrap; text-align: right">48.81 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">27.14</td>
    <td style="white-space: nowrap; text-align: right">36.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.47%</td>
    <td style="white-space: nowrap; text-align: right">36.49 ms</td>
    <td style="white-space: nowrap; text-align: right">39.90 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (hound)</td>
    <td style="white-space: nowrap; text-align: right">17.54</td>
    <td style="white-space: nowrap; text-align: right">57.00 ms</td>
    <td style="white-space: nowrap; text-align: right">±23.46%</td>
    <td style="white-space: nowrap; text-align: right">51.63 ms</td>
    <td style="white-space: nowrap; text-align: right">95.28 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">13.94</td>
    <td style="white-space: nowrap; text-align: right">71.75 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.13%</td>
    <td style="white-space: nowrap; text-align: right">70.05 ms</td>
    <td style="white-space: nowrap; text-align: right">88.55 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (hound)</td>
    <td style="white-space: nowrap; text-align: right">13.24</td>
    <td style="white-space: nowrap; text-align: right">75.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.26%</td>
    <td style="white-space: nowrap; text-align: right">71.61 ms</td>
    <td style="white-space: nowrap; text-align: right">96.55 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">12.25</td>
    <td style="white-space: nowrap; text-align: right">81.62 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.06%</td>
    <td style="white-space: nowrap; text-align: right">83.98 ms</td>
    <td style="white-space: nowrap; text-align: right">93.25 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">8.55</td>
    <td style="white-space: nowrap; text-align: right">116.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.60%</td>
    <td style="white-space: nowrap; text-align: right">115.32 ms</td>
    <td style="white-space: nowrap; text-align: right">133.60 ms</td>
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
    <td style="white-space: nowrap;text-align: right">70.92</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">62.49</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (hound)</td>
    <td style="white-space: nowrap; text-align: right">55.25</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">53.77</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (hound)</td>
    <td style="white-space: nowrap; text-align: right">38.93</td>
    <td style="white-space: nowrap; text-align: right">1.82x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (hound)</td>
    <td style="white-space: nowrap; text-align: right">36.91</td>
    <td style="white-space: nowrap; text-align: right">1.92x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">35.30</td>
    <td style="white-space: nowrap; text-align: right">2.01x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.85</td>
    <td style="white-space: nowrap; text-align: right">2.04x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">27.14</td>
    <td style="white-space: nowrap; text-align: right">2.61x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (hound)</td>
    <td style="white-space: nowrap; text-align: right">17.54</td>
    <td style="white-space: nowrap; text-align: right">4.04x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">13.94</td>
    <td style="white-space: nowrap; text-align: right">5.09x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (hound)</td>
    <td style="white-space: nowrap; text-align: right">13.24</td>
    <td style="white-space: nowrap; text-align: right">5.36x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">12.25</td>
    <td style="white-space: nowrap; text-align: right">5.79x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">8.55</td>
    <td style="white-space: nowrap; text-align: right">8.29x</td>
  </tr>
</table>


<hr/>

