# basecamp-email-grab
Ruby script for getting the email of all of your Basecamp participants

## INSTALL
You need to have a recent version of Ruby and git installed.

Once you do, call the following:
```
git clone https://github.com/ericschultz/basecamp-email-grab.git
cd basecamp-email-grab
bundle install
```

## USAGE
If you're an account owner, you need have the following information:

* Your Basecamp ID
* username
* password

Your Basecamp ID is the number in the Projects URL for your account. 
Your project url should have the following format: https://basecamp.com/(an integer).
That integer is your Basecamp ID.

To get your emails, run `ruby emails.rb basecamp_id username password`.

## NOTES
Not sure it works if you're not an owner. Please let me know! :)

It tends to run pretty slow but be patient, it's working.
