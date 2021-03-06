gw2-awesome-builder
===================

Guild Wars 2 - Want to be awesome?  Use our builder.

- Setup Basic System
  - `createuser -d -l -P postgres`
    - leave password blank

  - `rake db:setup`

- Setup & Run Specs
  - run `rake db:test:prepare`

  - run `rake spec`

- Setup & Run Specs (in parallel)
  - run `rake parallel:create`

  - run `rake parallel:prepare`

  - run `rake parallel:spec`

- Collect Real Gear & Generate Outfits
  - run `rake outfitter:seed`

- Generate Random Outfits & Gear
  - run `rake outfitter:randomize`

- Generate Outfits (using existing gear)
  - run `rake outfitter:create_outfits`

- Collect Real Gear
  - run `rake outfitter:scrape_gear`

- Generate Random Gear
  - run `rake outfitter:randomize_gear`

[![Build Status](https://secure.travis-ci.org/Altonymous/gw2-awesome-builder.png?branch=master)](https://travis-ci.org/Altonymous/gw2-awesome-builder)