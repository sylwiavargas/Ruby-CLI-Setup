### Process
1. Create Gemfile + run `bundle`
2. Create migrations: run `rake db:create_migration` and add the syntax you need
3. Migrate: run `rake db: migrate`
* **REMEMBER** never ever ever change anything in schema.
4. Set up associations in classes (belongs_to / has_many / has_many through:)
5. Create seed data + run `rake db: seed`
* remember: seeding does not give you any output so no news on your console == good news
6. Check if you've seeded correctly: run `rake c` and check what's the last instance of any of your class

### APIs

- [Dad Jokes API Docs](https://icanhazdadjoke.com/api)
- [Sample API Request](https://icanhazdadjoke.com/api#fetch-a-random-dad-joke)

- **[More APIs]**(https://rapidapi.com/collection/cool-apis)
- [And even more APIs](https://medium.com/@vicbergquist/18-fun-apis-for-your-next-project-8008841c7be9)

### Fun Gems For Your Projects
- `faker` - randomly generated seed data fun
- `colorize` - colored text output in your terminal
- `lolcat` - enabling rainbow text coloring
- `rest-client` - make HTTP requests and get data from APIs
- `tty-prompt` - nice interface for prompting for user input
- `formatador` - styling output information into a neat table
- `artii` - creating text banners

### Tutorials
- [Using TTY Prompt by Brandon James](https://medium.com/@brandonj2858/benefits-of-using-tty-prompt-for-my-first-project-e5cfbc598a62)
- [Adding animations to your CLI by Sylwia Vargas](https://medium.com/better-programming/add-an-animation-or-a-giph-to-your-ruby-cli-29952e8c46ea)
- [Adding ASCII Art to your CLI by Sylwia Vargas](https://medium.com/@sylwiavargas/adding-pictures-to-your-ruby-cli-4252b89823a)
- [Using Time/Date in your CLI by Joel Mendoza](https://medium.com/@joelmendza173/ruby-date-time-for-dummies-9f45518bab64)
- [Resetting your database indexes by Sylwia Vargas]()
