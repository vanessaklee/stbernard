# Benchmark

Benchmark run from 2020-02-17 22:43:07.198719Z UTC

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
    <td style="white-space: nowrap">20 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">2 s</td>
  </tr>
</table>

## Statistics




```diff
- INPUT: FLOAT
```

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
    <td style="white-space: nowrap; text-align: right">0.0726</td>
    <td style="white-space: nowrap; text-align: right">13.77 s</td>
    <td style="white-space: nowrap; text-align: right">±0.19%</td>
    <td style="white-space: nowrap; text-align: right">13.77 s</td>
    <td style="white-space: nowrap; text-align: right">13.79 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">0.0707</td>
    <td style="white-space: nowrap; text-align: right">14.15 s</td>
    <td style="white-space: nowrap; text-align: right">±5.91%</td>
    <td style="white-space: nowrap; text-align: right">14.15 s</td>
    <td style="white-space: nowrap; text-align: right">14.74 s</td>
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
    <td style="white-space: nowrap;text-align: right">0.0726</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">0.0707</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>
</table>


<hr/>


```diff
- INPUT: INTEGER
```

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
    <td style="white-space: nowrap; text-align: right">0.0965</td>
    <td style="white-space: nowrap; text-align: right">10.36 s</td>
    <td style="white-space: nowrap; text-align: right">±10.32%</td>
    <td style="white-space: nowrap; text-align: right">10.36 s</td>
    <td style="white-space: nowrap; text-align: right">11.12 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">0.0752</td>
    <td style="white-space: nowrap; text-align: right">13.29 s</td>
    <td style="white-space: nowrap; text-align: right">±0.36%</td>
    <td style="white-space: nowrap; text-align: right">13.29 s</td>
    <td style="white-space: nowrap; text-align: right">13.32 s</td>
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
    <td style="white-space: nowrap;text-align: right">0.0965</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">0.0752</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>
</table>


<hr/>


```diff
- INPUT: LARGE INTEGER
```

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
    <td style="white-space: nowrap; text-align: right">0.0805</td>
    <td style="white-space: nowrap; text-align: right">12.43 s</td>
    <td style="white-space: nowrap; text-align: right">±0.12%</td>
    <td style="white-space: nowrap; text-align: right">12.43 s</td>
    <td style="white-space: nowrap; text-align: right">12.44 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">0.0646</td>
    <td style="white-space: nowrap; text-align: right">15.47 s</td>
    <td style="white-space: nowrap; text-align: right">±3.25%</td>
    <td style="white-space: nowrap; text-align: right">15.47 s</td>
    <td style="white-space: nowrap; text-align: right">15.83 s</td>
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
    <td style="white-space: nowrap;text-align: right">0.0805</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">0.0646</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>
</table>


<hr/>


```diff
- INPUT: NEGATIVE INTEGER
```

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
    <td style="white-space: nowrap; text-align: right">0.0856</td>
    <td style="white-space: nowrap; text-align: right">11.68 s</td>
    <td style="white-space: nowrap; text-align: right">±1.03%</td>
    <td style="white-space: nowrap; text-align: right">11.68 s</td>
    <td style="white-space: nowrap; text-align: right">11.77 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">0.0708</td>
    <td style="white-space: nowrap; text-align: right">14.13 s</td>
    <td style="white-space: nowrap; text-align: right">±0.15%</td>
    <td style="white-space: nowrap; text-align: right">14.13 s</td>
    <td style="white-space: nowrap; text-align: right">14.14 s</td>
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
    <td style="white-space: nowrap;text-align: right">0.0856</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">0.0708</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>
</table>


<hr/>


```diff
- INPUT: STRING
```

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
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap; text-align: right">0.0635</td>
    <td style="white-space: nowrap; text-align: right">15.75 s</td>
    <td style="white-space: nowrap; text-align: right">±0.76%</td>
    <td style="white-space: nowrap; text-align: right">15.75 s</td>
    <td style="white-space: nowrap; text-align: right">15.83 s</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Hound</td>
    <td style="white-space: nowrap; text-align: right">0.0549</td>
    <td style="white-space: nowrap; text-align: right">18.21 s</td>
    <td style="white-space: nowrap; text-align: right">±0.84%</td>
    <td style="white-space: nowrap; text-align: right">18.21 s</td>
    <td style="white-space: nowrap; text-align: right">18.32 s</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Wallaby</td>
    <td style="white-space: nowrap;text-align: right">0.0635</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Hound</td>
    <td style="white-space: nowrap; text-align: right">0.0549</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>
</table>


<hr/>

