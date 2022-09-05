fn main() {
    // create the root task out of an async block and run it to completion
    block_on(|s| async {
        let mut listener = TcpListener::bind("0.0.0.0:80").await?;
        let mut semaphore = Semaphore::new(100);

        // accept a TCP connection
        // breaks out of the loop if the scope has been cancelled
        while let Ok((stream, _)) = listener.accept(s).await {
            // wait until a permit is available
            let permit = semaphore.acquire(1).await;

            // create a subtask that runs concurrently with the root task
            // the root task waits for all subtasks to complete
            s.spawn(|s| async move {
                handle_connection(s, stream).await;

                // give the permit back to the semaphore
                drop(permit);
            });
        }
    });
}