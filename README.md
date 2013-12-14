# Waffleiron
Because waffles are delicious.

[![Gem Version](https://badge.fury.io/rb/waffleiron.png)](http://badge.fury.io/rb/waffleiron)

===========

## Installation

Do you take your waffles on Rails? Then use the latest stable release of
Rails with waffle iron.

    gem install waffleiron

## Use


Add this to the top of your application.css.scss file:


    // waffleiron config - set these to match your grid
    $wi-width: 940px;
    $wi-cols: 12;
    $wi-gutter: 20px;
    $wi-stacked-width: 90%;
    $wi-stacked-breakpoint: 499px;
    // if you want IE7 support via HTML/body tag conditionals add the line below
    $wi-ie7: true;
    // if you want to turn off the responsiveness of Waffleiron set this to false
    $wi-responsive: true;

    @import 'waffleiron';



This will give you a row and elements that are 3 cols wide:

    .element-wrapping-cols {
      @include row();
    }
    .element-you-want-to-be-3-cols-wide {
      @include col(3);
    }


A real world example of this would be:

SCSS:

    section {
      @include row();
      outline: 2px solid red;
      .panel {
        @include col(4);
        outline: 2px solid blue;
      }
    }
HTML:

    <section>
      <div class="panel">
        <h2>About Waffleiron</h2>
        <p>Waffleiron is amazeballs, 0_o lol omg!!!11 one.</p>
      </div>
      <div class="panel">
        <h2>Download Waffleiron</h2>
        <p>Click the download Waffleiron button hidden somewhere on this page.</p>
      </div>
      <div class="panel">
        <h2>Help Waffleiron</h2>
        <p>If you have an awesome idea for Waffleiron, git on github and do some stuff.</p>
      </div>
    </section>

Which would give you something like this:

![demo](https://github.com/ajaswa/waffleiron/raw/master/demo/demo.png)

### Other options
With the col() include you can specify two other parameters. After the number of columns you want to can add prepend and append numbers.

    @include col(2, 1, 4);

This will give you an element two columns wide, prepended by one column and appended by 4 columns.

## What is Waffleiron?
Waffleiron is a "semantic" non-intrusive grid system powered by SASS/SCSS. No floats, no extra classes and no non-sense. It just works.


### What? No floats?
Inline block is your new friend, friend. No floats mean that you don't have to clear them.
### No extra classes
Pssh! No .col-06? No .fivecol? That's unpossible!
The trick here is to use semantic markup and CSS for all you elements.

### Responsive by nature
Built into Waffleiron are some handy helpers to get your site all responsive. At a given point it will drop to a fluid layout and then down to a mobile layout. Turn them off if you would like.

### Drop in grid
Drop Waffleiron in where you need a grid. Leave it out where it doesn't make sense. Write your CSS as fast as you can.

## Why should I use it?
Cause it's awesome and fast. If you don't want to use it half way through a project you can easily pull it out and write your own CSS without needing to rewrite your markup or change your CSS.

## Support
Waffleiron works without any hacks in Safari, Chrome, Firefox and IE8+. If you use html tag conditionals IE7 support is built in, otherwise you'll have to tweek some things by adding the following to your config block:

    $wi-ie7: true;

## Ok I'm convinced
1. Use SASS/SCSS
2. Download the grid file
3. Write your markup semantically
4. Add the Waffle mixins to your scss
5. Enjoy a flexible grid that you can drop in where you want.


## Issues
1. You must minify your HTML ( Since we use inline-block )

Wafflecoptor:

    wafflewafflewafflewaffle
           waffle                       waffle
        wafflewaffle                  waffle
      wafflewafflewafflewafflewafflewaffle
     wafflewafflewaffle
     wafflewafflewaffle
       wafflewaffle
      waf     fle
    waffle     waffle
