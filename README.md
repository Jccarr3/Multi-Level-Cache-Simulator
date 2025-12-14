# Cache Simulator with Stream Buffer Prefetching

This project implements a cycle-accurate cache simulator with support for multi-level cache hierarchies and stream buffer prefetching. The simulator is configurable across multiple parameters including cache size, associativity, block size, and stream buffer configuration, making it suitable for studying cache performance and prefetching strategies across different memory access patterns.

The project includes an automated experimentation script to sweep architectural parameters and collect performance metrics such as miss rates, writebacks, and memory traffic.

## Features

- Configurable cache hierarchy

  - Single-level (L1 only) or two-level (L1 + L2) cache configurations
  - Parameterized cache size, associativity, and block size
  - Write-back, write-allocate policy


- LRU replacement policy using efficient list-based tracking
- Stream buffer prefetching

  - Configurable number of stream buffers (N)
  - Configurable stream buffer depth (M)
  - Sequential prefetching with circular buffer management
  - Automatic stream allocation and replacement


- Comprehensive statistics tracking

  - Read/write counts and miss rates
  - Writeback counts
  - Prefetch counts
  - Total memory traffic calculation
  
- Automated experimentation via shell script for parameter sweeps

## Cache Design
- Cache Organization

  - Block structure: Each block contains a tag, valid bit, and dirty bit
  - Set-associative organization: Implemented using vector<list<block>>
  - LRU tracking: Most recently used blocks maintained at the front of each set's list
  - Inclusion policy: Non-inclusive between L1 and L2

- Stream Buffer Architecture

  - Structure: N stream buffers, each containing M consecutive block addresses
  - Allocation: On cache miss, allocate/update the LRU stream buffer
  - Prefetching: Sequential blocks prefetched starting from the missed address
  - Hit handling: Stream buffer hits allocate blocks into the cache and trigger additional prefetches
  - Management: Stream buffers tracked with LRU policy using circular head pointer
 
## Automated Experiments

The cache.sh script automates parameter sweeps for performance analysis.
- Experiment Examples in Script
  - Associativity vs. Cache Size:
  - Stream Buffer Sensitivity:
  - Block Size Effects:

## Intended Use
This simulator is designed for:

- Studying cache hierarchy performance across different configurations
- Analyzing the effectiveness of stream buffer prefetching
- Understanding the interplay between cache parameters and memory access patterns
- Educational purposes in computer architecture courses
- Performance sensitivity analysis of memory subsystems
