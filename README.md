# devise-bootstrap5

Devise views with Bootstrap 5 and i18n support for Rails 6.

## Installation

All you need to do is to add `devise`, `devise-i18n` and `devise-bootstrap5` to
your `Gemfile`:

	gem "devise"
	gem "devise-i18n"
	gem "devise-bootstrap5"

After configuring `devise` everything is ready to use. Rails will use the views
defined in `devise-bootstrap5` instead of the `devise` ones.

You need `devise-i18n` even if your application is not internationalized since
all views in `devise-bootstrap5` are internationalized and use the strings
defined in `devise-i18n`.

## Customizing the Views

If you want to customize the views you can run the following command to copy
them to `app/views/devise`:

	rails generate devise:views:bootstrap

This command will install all views except for the mailer. If you want to
install them as well, you should issue the default `devise` generator command:

	rails generate devise:views -v mailer

or the following command if you want to translate the email messages:

	rails generate devise:i18n:views -v mailer

Please keep in mind that both commands will also copy the shared files used by
the views in `app/views/devise/shared`. For instance, if you ran
`devise:views:bootstrap` to generate the bootstrap views and then ran `rails
generate devise:views -v mailer` to generate the mailer views, the shared files
will be replaced. If you need to customize the mailer views, I suggest you run
the commands in the following order:

	rails generate devise:views -v mailer         # the mailer views
	# rails generate devise:i18n:views -v mailer  # or the mailer views internationalized
	rm -rf app/views/devise/shared                # remove the original shared files
	rails generate devise:views:bootstrap         # generate the bootstrap views with the shared files
