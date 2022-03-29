# slapscreen

***a stock-ticker display***

## Getting started
On a Mac:
  1. Install [Homebrew](https://brew.sh)
  2. Install [Redis via Homebrew](https://formulae.brew.sh/formula/redis#default)
  3. Install [asdf](https://asdf-vm.com)
  4. `git clone https://github.com/jltml/slapscreen.git`
  5. `cd slapscreen`
  6. `asdf install`
  7. `bundle install`
  8. `npm -g install yarn`
  9. `yarn install`
  10. `rails db:migrate`
  11. `gem install foreman`
  12. `bin/dev` to run!
    - you may have to edit the file `Procfile.dev` to point to your Redis executable/installation
  13. To add stocks, as of now, run `rails console` and try:
  ```ruby
  Stock.new(ticker: "aapl").save
  ```
  then refresh and see if it works!
