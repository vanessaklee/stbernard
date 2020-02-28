# Benchmark

Benchmark run from 2020-02-23 06:25:02.187339Z UTC

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
    <td style="white-space: nowrap; text-align: right">68.11</td>
    <td style="white-space: nowrap; text-align: right">14.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.07%</td>
    <td style="white-space: nowrap; text-align: right">14.63 ms</td>
    <td style="white-space: nowrap; text-align: right">16.27 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">60.02</td>
    <td style="white-space: nowrap; text-align: right">16.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.50%</td>
    <td style="white-space: nowrap; text-align: right">16.69 ms</td>
    <td style="white-space: nowrap; text-align: right">19.56 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (hound)</td>
    <td style="white-space: nowrap; text-align: right">53.71</td>
    <td style="white-space: nowrap; text-align: right">18.62 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.15%</td>
    <td style="white-space: nowrap; text-align: right">18.30 ms</td>
    <td style="white-space: nowrap; text-align: right">37.40 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">51.39</td>
    <td style="white-space: nowrap; text-align: right">19.46 ms</td>
    <td style="white-space: nowrap; text-align: right">±28.01%</td>
    <td style="white-space: nowrap; text-align: right">18.47 ms</td>
    <td style="white-space: nowrap; text-align: right">57.24 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (hound)</td>
    <td style="white-space: nowrap; text-align: right">39.03</td>
    <td style="white-space: nowrap; text-align: right">25.62 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.95%</td>
    <td style="white-space: nowrap; text-align: right">24.86 ms</td>
    <td style="white-space: nowrap; text-align: right">47.22 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (hound)</td>
    <td style="white-space: nowrap; text-align: right">36.34</td>
    <td style="white-space: nowrap; text-align: right">27.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.35%</td>
    <td style="white-space: nowrap; text-align: right">26.67 ms</td>
    <td style="white-space: nowrap; text-align: right">53.31 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.42</td>
    <td style="white-space: nowrap; text-align: right">29.06 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.26%</td>
    <td style="white-space: nowrap; text-align: right">28.35 ms</td>
    <td style="white-space: nowrap; text-align: right">48.83 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.26</td>
    <td style="white-space: nowrap; text-align: right">29.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.23%</td>
    <td style="white-space: nowrap; text-align: right">28.48 ms</td>
    <td style="white-space: nowrap; text-align: right">50.95 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">25.42</td>
    <td style="white-space: nowrap; text-align: right">39.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.49%</td>
    <td style="white-space: nowrap; text-align: right">39.17 ms</td>
    <td style="white-space: nowrap; text-align: right">42.27 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (hound)</td>
    <td style="white-space: nowrap; text-align: right">18.89</td>
    <td style="white-space: nowrap; text-align: right">52.94 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.13%</td>
    <td style="white-space: nowrap; text-align: right">51.93 ms</td>
    <td style="white-space: nowrap; text-align: right">62.12 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">14.04</td>
    <td style="white-space: nowrap; text-align: right">71.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.25%</td>
    <td style="white-space: nowrap; text-align: right">71.07 ms</td>
    <td style="white-space: nowrap; text-align: right">77.35 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (hound)</td>
    <td style="white-space: nowrap; text-align: right">13.75</td>
    <td style="white-space: nowrap; text-align: right">72.70 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.16%</td>
    <td style="white-space: nowrap; text-align: right">70.41 ms</td>
    <td style="white-space: nowrap; text-align: right">87.96 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">12.40</td>
    <td style="white-space: nowrap; text-align: right">80.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.41%</td>
    <td style="white-space: nowrap; text-align: right">81.95 ms</td>
    <td style="white-space: nowrap; text-align: right">86.76 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">8.43</td>
    <td style="white-space: nowrap; text-align: right">118.55 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.76%</td>
    <td style="white-space: nowrap; text-align: right">116.61 ms</td>
    <td style="white-space: nowrap; text-align: right">141.54 ms</td>
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
    <td style="white-space: nowrap;text-align: right">68.11</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Navigate (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">60.02</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (hound)</td>
    <td style="white-space: nowrap; text-align: right">53.71</td>
    <td style="white-space: nowrap; text-align: right">1.27x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (hound)</td>
    <td style="white-space: nowrap; text-align: right">51.39</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (hound)</td>
    <td style="white-space: nowrap; text-align: right">39.03</td>
    <td style="white-space: nowrap; text-align: right">1.75x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (hound)</td>
    <td style="white-space: nowrap; text-align: right">36.34</td>
    <td style="white-space: nowrap; text-align: right">1.87x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Element displayed (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.42</td>
    <td style="white-space: nowrap; text-align: right">1.98x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Find element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">34.26</td>
    <td style="white-space: nowrap; text-align: right">1.99x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Visible text (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">25.42</td>
    <td style="white-space: nowrap; text-align: right">2.68x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (hound)</td>
    <td style="white-space: nowrap; text-align: right">18.89</td>
    <td style="white-space: nowrap; text-align: right">3.61x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">14.04</td>
    <td style="white-space: nowrap; text-align: right">4.85x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Fill-in element (hound)</td>
    <td style="white-space: nowrap; text-align: right">13.75</td>
    <td style="white-space: nowrap; text-align: right">4.95x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Button click (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">12.40</td>
    <td style="white-space: nowrap; text-align: right">5.49x</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Select option (wallaby)</td>
    <td style="white-space: nowrap; text-align: right">8.43</td>
    <td style="white-space: nowrap; text-align: right">8.07x</td>
  </tr>
</table>


<hr/>

