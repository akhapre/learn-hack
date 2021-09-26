#!/usr/bin/env hhvm

<<__EntryPoint>>
async function main_async(): Awaitable<void> {
  require_once(__DIR__.'/../vendor/autoload.hack');
  \Facebook\AutoloadMap\initialize();

  $squared = square_vec(vec[1, 2, 3, 4, 5]);
  foreach ($squared as $square) {
    printf("%d\n", $square);
  }
}
