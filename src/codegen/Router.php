<?hh // strict
/**
 * This file is generated. Do not modify it manually!
 *
 * To re-generate this file run
 * /home/akhapre/Projects/learn-hack/bin/build_router.hack
 *
 *
 * @generated SignedSource<<25887f78b76d5855f9ec70d112fe08ec>>
 */

final class Router
  extends \Facebook\HackRouter\BaseRouter<classname<\learnhack\controllers\AbstractWebController>> {

  <<__Override>>
  public function getRoutes(
  ): ImmMap<\Facebook\HackRouter\HttpMethod, ImmMap<string, classname<\learnhack\controllers\AbstractWebController>>> {
    $map = ImmMap {
      \Facebook\HackRouter\HttpMethod::GET => ImmMap {
        '/greetings/{name}' => \learnhack\controllers\GreetingsController::class,
        '/login' => \learnhack\controllers\LoginPageController::class,
      },
    };
    return $map;
  }
}
