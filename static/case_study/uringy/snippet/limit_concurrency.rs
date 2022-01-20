fn main() {
    // run async block to completion
    uringy::block_on(async {
        let mut semaphore = uringy::Semaphore::new(100);

        // process an asynchronous iterator of incoming requests
        while let Ok(request) = incoming.next().await {
            // wait until a permit is available
            let permit = semaphore.acquire(1).await?;

            // create another task, will run concurrently with the current async block
            uringy::spawn(async move {
                handle(request).await;

                // give back the permit to the semaphore
                drop(permit);
            });
        }
    });
}