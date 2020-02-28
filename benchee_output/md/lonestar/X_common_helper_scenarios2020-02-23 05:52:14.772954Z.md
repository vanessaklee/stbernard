# Benchmark

Benchmark run from 2020-02-23 05:53:24.660366Z UTC

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
    <td style="white-space: nowrap; text-align: right">71.24</td>
    <td style="white-space: nowrap; text-align: right">14.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.73%</td>
    <td style="white-space: nowrap; text-align: right">13.89 ms</td>
    <td style="white-space: nowrap; text-align: right">17.89 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">62.35</td>
    <td style="white-space: nowrap; text-align: right">16.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.21%</td>
    <td style="white-space: nowrap; text-align: right">16.11 ms</td>
    <td style="white-space: nowrap; text-align: right">17.78 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">55.32</td>
    <td style="white-space: nowrap; text-align: right">18.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.67%</td>
    <td style="white-space: nowrap; text-align: right">17.75 ms</td>
    <td style="white-space: nowrap; text-align: right">36.36 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.66</td>
    <td style="white-space: nowrap; text-align: right">28.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.75%</td>
    <td style="white-space: nowrap; text-align: right">27.98 ms</td>
    <td style="white-space: nowrap; text-align: right">52.97 ms</td>
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
    <td style="white-space: nowrap;text-align: right">71.24</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">62.35</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">55.32</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.66</td>
    <td style="white-space: nowrap; text-align: right">2.06x</td>
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
    <td style="white-space: nowrap; text-align: right">71.73</td>
    <td style="white-space: nowrap; text-align: right">13.94 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.37%</td>
    <td style="white-space: nowrap; text-align: right">13.81 ms</td>
    <td style="white-space: nowrap; text-align: right">16.35 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">62.71</td>
    <td style="white-space: nowrap; text-align: right">15.95 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.32%</td>
    <td style="white-space: nowrap; text-align: right">16.07 ms</td>
    <td style="white-space: nowrap; text-align: right">17.51 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.81</td>
    <td style="white-space: nowrap; text-align: right">18.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.95%</td>
    <td style="white-space: nowrap; text-align: right">17.81 ms</td>
    <td style="white-space: nowrap; text-align: right">36.67 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.86</td>
    <td style="white-space: nowrap; text-align: right">28.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.10%</td>
    <td style="white-space: nowrap; text-align: right">28.00 ms</td>
    <td style="white-space: nowrap; text-align: right">51.33 ms</td>
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
    <td style="white-space: nowrap;text-align: right">71.73</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">62.71</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.81</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.86</td>
    <td style="white-space: nowrap; text-align: right">2.06x</td>
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
    <td style="white-space: nowrap; text-align: right">71.53</td>
    <td style="white-space: nowrap; text-align: right">13.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.41%</td>
    <td style="white-space: nowrap; text-align: right">14.04 ms</td>
    <td style="white-space: nowrap; text-align: right">15.64 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">61.45</td>
    <td style="white-space: nowrap; text-align: right">16.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.46%</td>
    <td style="white-space: nowrap; text-align: right">16.23 ms</td>
    <td style="white-space: nowrap; text-align: right">18.10 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.12</td>
    <td style="white-space: nowrap; text-align: right">18.48 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.80%</td>
    <td style="white-space: nowrap; text-align: right">17.81 ms</td>
    <td style="white-space: nowrap; text-align: right">32.89 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">35.37</td>
    <td style="white-space: nowrap; text-align: right">28.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.57%</td>
    <td style="white-space: nowrap; text-align: right">27.65 ms</td>
    <td style="white-space: nowrap; text-align: right">50.08 ms</td>
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
    <td style="white-space: nowrap;text-align: right">71.53</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">61.45</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.12</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">35.37</td>
    <td style="white-space: nowrap; text-align: right">2.02x</td>
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
    <td style="white-space: nowrap; text-align: right">71.56</td>
    <td style="white-space: nowrap; text-align: right">13.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.74%</td>
    <td style="white-space: nowrap; text-align: right">13.84 ms</td>
    <td style="white-space: nowrap; text-align: right">16.11 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">62.10</td>
    <td style="white-space: nowrap; text-align: right">16.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.72%</td>
    <td style="white-space: nowrap; text-align: right">16.22 ms</td>
    <td style="white-space: nowrap; text-align: right">18.30 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.05</td>
    <td style="white-space: nowrap; text-align: right">18.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.72%</td>
    <td style="white-space: nowrap; text-align: right">17.74 ms</td>
    <td style="white-space: nowrap; text-align: right">35.30 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">35.15</td>
    <td style="white-space: nowrap; text-align: right">28.45 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.02%</td>
    <td style="white-space: nowrap; text-align: right">27.99 ms</td>
    <td style="white-space: nowrap; text-align: right">47.65 ms</td>
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
    <td style="white-space: nowrap;text-align: right">71.56</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">62.10</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.05</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">35.15</td>
    <td style="white-space: nowrap; text-align: right">2.04x</td>
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
    <td style="white-space: nowrap; text-align: right">71.72</td>
    <td style="white-space: nowrap; text-align: right">13.94 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.08%</td>
    <td style="white-space: nowrap; text-align: right">13.93 ms</td>
    <td style="white-space: nowrap; text-align: right">16.26 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">61.02</td>
    <td style="white-space: nowrap; text-align: right">16.39 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.48%</td>
    <td style="white-space: nowrap; text-align: right">16.45 ms</td>
    <td style="white-space: nowrap; text-align: right">19.17 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.39</td>
    <td style="white-space: nowrap; text-align: right">18.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±23.01%</td>
    <td style="white-space: nowrap; text-align: right">17.36 ms</td>
    <td style="white-space: nowrap; text-align: right">36.00 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">35.25</td>
    <td style="white-space: nowrap; text-align: right">28.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.52%</td>
    <td style="white-space: nowrap; text-align: right">27.82 ms</td>
    <td style="white-space: nowrap; text-align: right">39.13 ms</td>
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
    <td style="white-space: nowrap;text-align: right">71.72</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">61.02</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">54.39</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">35.25</td>
    <td style="white-space: nowrap; text-align: right">2.03x</td>
  </tr>
</table>


<hr/>

