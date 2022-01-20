fn main() {
    // run async block to completion
    uringy::block_on(async {
        // no Arc/Mutex required!
        let db = Rc::new(RefCell::new(...));

        // process an asynchronous iterator of incoming requests
        while let Ok(request) = incoming.next().await {
            // interior mutability
            let db = db.clone();

            // create another task, will run concurrently with the current async block
            uringy::spawn(async move {
                handle(request, db).await;
            });
        }
    });
}