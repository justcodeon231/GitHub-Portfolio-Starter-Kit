document.querySelector('form').addEventListener('submit', function (event) {
    event.preventDefault();

    const name = document.querySelector('input[name="name"]').value;
    const email = document.querySelector('input[name="email"]').value;
    const message = document.querySelector('textarea[name="message"]').value;

    if (!name || !email || !message) {
        alert('Please fill in all fields!');
        return;
    }

    alert('Your message has been sent!');
});
