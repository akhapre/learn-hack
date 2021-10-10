<?hh // strict
/**
 * This file is generated. Do not modify it manually!
 *
 * To re-generate this file run
 * /home/akhapre/Projects/learn-hack/bin/build_router.hack
 *
 *
 * @generated SignedSource<<a15934dd22be2226289bc4726ce3f644>>
 */

final class Router
  extends \Facebook\HackRouter\BaseRouter<classname<\learnhack\controllers\AbstractWebController>> {

  <<__Override>>
  public function getRoutes(
  ): ImmMap<\Facebook\HackRouter\HttpMethod, ImmMap<string, classname<\learnhack\controllers\AbstractWebController>>> {
    $map = ImmMap {
      \Facebook\HackRouter\HttpMethod::GET => ImmMap {
        '/login' => \LoginPageController::class,
      },
    };
    return $map;
  }
}
