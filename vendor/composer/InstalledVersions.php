<?php











namespace Composer;

use Composer\Semver\VersionParser;






class InstalledVersions
{
private static $installed = array (
  'root' => 
  array (
    'pretty_version' => 'dev-main',
    'version' => 'dev-main',
    'aliases' => 
    array (
    ),
    'reference' => '228e3f769618fecec8cfa79d04fa9892d99afb96',
    'name' => '__root__',
  ),
  'versions' => 
  array (
    '__root__' => 
    array (
      'pretty_version' => 'dev-main',
      'version' => 'dev-main',
      'aliases' => 
      array (
      ),
      'reference' => '228e3f769618fecec8cfa79d04fa9892d99afb96',
    ),
    'facebook/definition-finder' => 
    array (
      'pretty_version' => 'v2.14.2',
      'version' => '2.14.2.0',
      'aliases' => 
      array (
      ),
      'reference' => '5f7708abaa7973387ddcc71ff00449852465bee4',
    ),
    'facebook/difflib' => 
    array (
      'pretty_version' => 'v1.2.0',
      'version' => '1.2.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'b697c0ac436629c8cd9627ab31a60777431f72f6',
    ),
    'facebook/fbexpect' => 
    array (
      'pretty_version' => 'v2.8.0',
      'version' => '2.8.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '2b83fa141602e05e0b78b6a8e111fdb7290143f1',
    ),
    'facebook/hack-codegen' => 
    array (
      'pretty_version' => 'v4.4.1',
      'version' => '4.4.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '92aa374affd27276be41a19254dacbdb66b65d1c',
    ),
    'facebook/hack-http-request-response-interfaces' => 
    array (
      'pretty_version' => 'v0.3',
      'version' => '0.3.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '29f976830af6b2fdb716037ee1fd10bb2e57c6cd',
    ),
    'facebook/hack-router' => 
    array (
      'pretty_version' => 'v0.19.8',
      'version' => '0.19.8.0',
      'aliases' => 
      array (
      ),
      'reference' => '98705ea6149d9d333b91d2be0080a2bdfb4bcdb1',
    ),
    'facebook/hack-router-codegen' => 
    array (
      'pretty_version' => 'v0.17.5',
      'version' => '0.17.5.0',
      'aliases' => 
      array (
      ),
      'reference' => 'bc55cc82e25f76dff1622cc84e3c192d47d4439f',
    ),
    'facebook/hh-clilib' => 
    array (
      'pretty_version' => 'v2.6.0',
      'version' => '2.6.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'a275f2fe7e5c1144c09793fcb2a8f57533f2eb68',
    ),
    'facebook/hhvm-autoload' => 
    array (
      'replaced' => 
      array (
        0 => '1.*',
      ),
    ),
    'hhvm/hacktest' => 
    array (
      'pretty_version' => 'v2.2.3',
      'version' => '2.2.3.0',
      'aliases' => 
      array (
      ),
      'reference' => '35780fc82605b06b0c4865c1ae9531f87200dbdc',
    ),
    'hhvm/hhast' => 
    array (
      'pretty_version' => 'v4.127.1',
      'version' => '4.127.1.0',
      'aliases' => 
      array (
      ),
      'reference' => 'f6480404bd1c02d4001a7d12580955a58134eb1a',
    ),
    'hhvm/hhvm-autoload' => 
    array (
      'pretty_version' => 'v3.3.0',
      'version' => '3.3.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '0b5be45a7a57a6cc24f3a62889367656ff61ae4a',
    ),
    'hhvm/hsl' => 
    array (
      'pretty_version' => 'v4.108.1',
      'version' => '4.108.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '3b4375e6adf63ac9171721b031b662dd3524c5bb',
    ),
    'hhvm/hsl-experimental' => 
    array (
      'pretty_version' => 'v4.108.0',
      'version' => '4.108.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'c145eda4344a3668119fde743e9d224bae7efe98',
    ),
    'hhvm/hsl-io' => 
    array (
      'provided' => 
      array (
        0 => '0.3.0',
      ),
    ),
    'hhvm/type-assert' => 
    array (
      'pretty_version' => 'v4.2.2',
      'version' => '4.2.2.0',
      'aliases' => 
      array (
      ),
      'reference' => '7106e783dc43724efa5d4147456025a2316480f0',
    ),
    'usox/hack-http-factory-interfaces' => 
    array (
      'pretty_version' => 'v0.2.2',
      'version' => '0.2.2.0',
      'aliases' => 
      array (
      ),
      'reference' => '412fdeb8d85c83bef558223bf5ed25e5e7e37692',
    ),
    'usox/hackttp' => 
    array (
      'pretty_version' => 'v0.5.4',
      'version' => '0.5.4.0',
      'aliases' => 
      array (
      ),
      'reference' => 'a5ba0a2c4dc31f06b4907026b3bc0bd208a07a24',
    ),
  ),
);







public static function getInstalledPackages()
{
return array_keys(self::$installed['versions']);
}









public static function isInstalled($packageName)
{
return isset(self::$installed['versions'][$packageName]);
}














public static function satisfies(VersionParser $parser, $packageName, $constraint)
{
$constraint = $parser->parseConstraints($constraint);
$provided = $parser->parseConstraints(self::getVersionRanges($packageName));

return $provided->matches($constraint);
}










public static function getVersionRanges($packageName)
{
if (!isset(self::$installed['versions'][$packageName])) {
throw new \OutOfBoundsException('Package "' . $packageName . '" is not installed');
}

$ranges = array();
if (isset(self::$installed['versions'][$packageName]['pretty_version'])) {
$ranges[] = self::$installed['versions'][$packageName]['pretty_version'];
}
if (array_key_exists('aliases', self::$installed['versions'][$packageName])) {
$ranges = array_merge($ranges, self::$installed['versions'][$packageName]['aliases']);
}
if (array_key_exists('replaced', self::$installed['versions'][$packageName])) {
$ranges = array_merge($ranges, self::$installed['versions'][$packageName]['replaced']);
}
if (array_key_exists('provided', self::$installed['versions'][$packageName])) {
$ranges = array_merge($ranges, self::$installed['versions'][$packageName]['provided']);
}

return implode(' || ', $ranges);
}





public static function getVersion($packageName)
{
if (!isset(self::$installed['versions'][$packageName])) {
throw new \OutOfBoundsException('Package "' . $packageName . '" is not installed');
}

if (!isset(self::$installed['versions'][$packageName]['version'])) {
return null;
}

return self::$installed['versions'][$packageName]['version'];
}





public static function getPrettyVersion($packageName)
{
if (!isset(self::$installed['versions'][$packageName])) {
throw new \OutOfBoundsException('Package "' . $packageName . '" is not installed');
}

if (!isset(self::$installed['versions'][$packageName]['pretty_version'])) {
return null;
}

return self::$installed['versions'][$packageName]['pretty_version'];
}





public static function getReference($packageName)
{
if (!isset(self::$installed['versions'][$packageName])) {
throw new \OutOfBoundsException('Package "' . $packageName . '" is not installed');
}

if (!isset(self::$installed['versions'][$packageName]['reference'])) {
return null;
}

return self::$installed['versions'][$packageName]['reference'];
}





public static function getRootPackage()
{
return self::$installed['root'];
}







public static function getRawData()
{
return self::$installed;
}



















public static function reload($data)
{
self::$installed = $data;
}
}
