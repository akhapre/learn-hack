#!/usr/bin/env hhvm

use \Facebook\HackRouter\Codegen;
use \learnhack\controllers\AbstractWebController;
final class UpdateCodegen {
  public function main(): void {
    \printf("\nBuilding Router-related codegen...");
    require_once(__DIR__.'./../vendor/autoload.hack');
    \Facebook\AutoloadMap\initialize();

    Codegen::forTree(
      __DIR__.'/../src/controllers',
      shape(
        'controllerBase' => AbstractWebController::class,
        'router' => shape(
          'abstract' => false,
          'file' => __DIR__.'/../src/codegen/Router.php',
          'class' => 'Router',
        ),
      ),
    )->build();
  }
}
<<__EntryPoint>>
async function build_router_main_async(): Awaitable<void> {
  require_once(__DIR__.'/../vendor/autoload.hack');
  \Facebook\AutoloadMap\initialize();
    (new UpdateCodegen())->main();    
}
