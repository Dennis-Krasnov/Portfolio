#[uringy::start]
fn main() {
    let handle = uringy::fiber::spawn(|| tcp_echo_server(9000));

    uringy::signals().filter(Signal::is_terminal).next().unwrap();
    uringy::println!("gracefully shutting down");
    handle.cancel(); // Cancellation propagates throughout the entire fiber hierarchy

    // Automatically waits for all fibers to complete
}

fn tcp_echo_server(port: u16) {
    let listener = uringy::net::TcpListener::bind(("0.0.0.0", port)).unwrap();
    uringy::println!("listening for TCP connections on port {port}");
    let mut connections = listener.incoming();
    while let Ok((stream, _)) = connections.next() {
        uringy::fiber::spawn(move || handle_connection(stream));
    }
}

fn handle_connection(tcp: TcpStream) {
    let (mut r, mut w) = stream.split();
    let _ = std::io::copy(&mut r, &mut w);
}
