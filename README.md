# Elixir Enum.each Race Condition

This repository demonstrates a potential race condition when using `Enum.each` in Elixir with functions that have side effects.  While `Enum.each` appears to iterate sequentially, it doesn't guarantee the order of execution when dealing with operations that modify external state.

## The Problem

The `bug.ex` file shows a simple example where a delay is introduced during iteration.  Replacing `IO.puts` with a function that interacts with external resources (databases, files, etc.) could lead to unpredictable results due to the asynchronous nature of the operations.

## The Solution

The `bugSolution.ex` file provides a solution using `Enum.map` which guarantees a return value which is then enumerated, avoiding race conditions. It processes each element independently and then collects the results in the correct order. This method is more robust when dealing with operations that have side effects, ensuring predictable and sequential processing.

## How to reproduce

1. Clone this repository
2. Navigate to the repository's directory
3. Run `iex bug.ex` to see the race condition demonstrated.
4. Run `iex bugSolution.ex` to observe that the issue is resolved.