This project is a multi-level cache simulator using an LRU replacement policy designed to model and analyze the behavior of memory hierarchies under various configurations. The simulator allows users to experiment with different cache architectures, including support for multi-level caching (L1, L2, etc.) and stream buffers to evaluate performance enhancements from prefetching strategies.

Key Features

Configurable Architecture: Easily modify parameters such as cache size, associativity, block size, number of streams, and stream size.

Multi-Level Support: Simulate multiple cache levels with realistic interactions and data flow between them.

Stream Buffer Implementation: Explore how stream buffers can improve memory performance through prefetching mechanisms.

Detailed Output: Provides performance metrics such as hit/miss rates, memory accesses, and final cache/buffer values.

Flexible Input: Run simulations using custom command-line parameters (./sim BlockSize L1_Size L1_Associativity L2_Size L2_Associativity num_streams stream_size trace_file)
