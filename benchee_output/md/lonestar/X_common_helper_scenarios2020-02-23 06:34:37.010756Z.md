# Benchmark

Benchmark run from 2020-02-23 06:36:22.612136Z UTC

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
    <td style="white-space: nowrap; text-align: right">69.44</td>
    <td style="white-space: nowrap; text-align: right">14.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±36.84%</td>
    <td style="white-space: nowrap; text-align: right">13.82 ms</td>
    <td style="white-space: nowrap; text-align: right">32.60 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">60.49</td>
    <td style="white-space: nowrap; text-align: right">16.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±30.41%</td>
    <td style="white-space: nowrap; text-align: right">15.94 ms</td>
    <td style="white-space: nowrap; text-align: right">30.11 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">53.85</td>
    <td style="white-space: nowrap; text-align: right">18.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.24%</td>
    <td style="white-space: nowrap; text-align: right">18.00 ms</td>
    <td style="white-space: nowrap; text-align: right">33.75 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (hound)</td>
    <td style="white-space: nowrap; text-align: right">53.52</td>
    <td style="white-space: nowrap; text-align: right">18.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±19.05%</td>
    <td style="white-space: nowrap; text-align: right">17.93 ms</td>
    <td style="white-space: nowrap; text-align: right">37.89 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (hound)</td>
    <td style="white-space: nowrap; text-align: right">38.74</td>
    <td style="white-space: nowrap; text-align: right">25.81 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.10%</td>
    <td style="white-space: nowrap; text-align: right">25.10 ms</td>
    <td style="white-space: nowrap; text-align: right">55.87 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (hound)</td>
    <td style="white-space: nowrap; text-align: right">37.35</td>
    <td style="white-space: nowrap; text-align: right">26.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.87%</td>
    <td style="white-space: nowrap; text-align: right">26.04 ms</td>
    <td style="white-space: nowrap; text-align: right">55.08 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.54</td>
    <td style="white-space: nowrap; text-align: right">28.96 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.13%</td>
    <td style="white-space: nowrap; text-align: right">28.25 ms</td>
    <td style="white-space: nowrap; text-align: right">50.52 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">33.62</td>
    <td style="white-space: nowrap; text-align: right">29.75 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.12%</td>
    <td style="white-space: nowrap; text-align: right">28.99 ms</td>
    <td style="white-space: nowrap; text-align: right">61.73 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">26.94</td>
    <td style="white-space: nowrap; text-align: right">37.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.41%</td>
    <td style="white-space: nowrap; text-align: right">36.39 ms</td>
    <td style="white-space: nowrap; text-align: right">72.44 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (hound)</td>
    <td style="white-space: nowrap; text-align: right">17.83</td>
    <td style="white-space: nowrap; text-align: right">56.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±22.96%</td>
    <td style="white-space: nowrap; text-align: right">52.77 ms</td>
    <td style="white-space: nowrap; text-align: right">125.68 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (hound)</td>
    <td style="white-space: nowrap; text-align: right">14.01</td>
    <td style="white-space: nowrap; text-align: right">71.36 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.83%</td>
    <td style="white-space: nowrap; text-align: right">69.71 ms</td>
    <td style="white-space: nowrap; text-align: right">98.75 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">13.98</td>
    <td style="white-space: nowrap; text-align: right">71.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.09%</td>
    <td style="white-space: nowrap; text-align: right">70.11 ms</td>
    <td style="white-space: nowrap; text-align: right">101.46 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">12.49</td>
    <td style="white-space: nowrap; text-align: right">80.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.23%</td>
    <td style="white-space: nowrap; text-align: right">82.73 ms</td>
    <td style="white-space: nowrap; text-align: right">131.69 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">8.28</td>
    <td style="white-space: nowrap; text-align: right">120.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.37%</td>
    <td style="white-space: nowrap; text-align: right">118.33 ms</td>
    <td style="white-space: nowrap; text-align: right">170.67 ms</td>
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
    <td style="white-space: nowrap;text-align: right">69.44</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">60.49</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">53.85</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (hound)</td>
    <td style="white-space: nowrap; text-align: right">53.52</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (hound)</td>
    <td style="white-space: nowrap; text-align: right">38.74</td>
    <td style="white-space: nowrap; text-align: right">1.79x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (hound)</td>
    <td style="white-space: nowrap; text-align: right">37.35</td>
    <td style="white-space: nowrap; text-align: right">1.86x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.54</td>
    <td style="white-space: nowrap; text-align: right">2.01x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">33.62</td>
    <td style="white-space: nowrap; text-align: right">2.07x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">26.94</td>
    <td style="white-space: nowrap; text-align: right">2.58x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (hound)</td>
    <td style="white-space: nowrap; text-align: right">17.83</td>
    <td style="white-space: nowrap; text-align: right">3.89x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (hound)</td>
    <td style="white-space: nowrap; text-align: right">14.01</td>
    <td style="white-space: nowrap; text-align: right">4.95x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">13.98</td>
    <td style="white-space: nowrap; text-align: right">4.97x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">12.49</td>
    <td style="white-space: nowrap; text-align: right">5.56x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">8.28</td>
    <td style="white-space: nowrap; text-align: right">8.39x</td>
  </tr>
</table>


<hr/>

