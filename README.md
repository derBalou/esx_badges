<div align="center" id="top"> 
  <img src="./.github/app.gif" alt="Esx_badges" />

  &#xa0;

  <!-- <a href="https://esx_badges.netlify.app">Demo</a> -->
</div>

<h1 align="center">ESX Badges</h1>

<p align="center">
  <img alt="Github top language" src="https://img.shields.io/github/languages/top/derBalou/esx_badges?color=56BEB8&style=for-the-badge">

  <img alt="Github language count" src="https://img.shields.io/github/languages/count/derBalou/esx_badges?color=56BEB8&style=for-the-badge">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/derBalou/esx_badges?color=56BEB8&style=for-the-badge">

  <img alt="License" src="https://img.shields.io/badge/license-BEERWARE-56BEB8?style=for-the-badge">

  <!-- <img alt="Github issues" src="https://img.shields.io/github/issues/derBalou/esx_badges?color=56BEB8" /> -->

  <!-- <img alt="Github forks" src="https://img.shields.io/github/forks/derBalou/esx_badges?color=56BEB8" /> -->

  <!-- <img alt="Github stars" src="https://img.shields.io/github/stars/derBalou/esx_badges?color=56BEB8" /> -->
</p>

<!-- Status -->

<!-- <h4 align="center"> 
	🚧  ESX_Badges 🚀 Under construction...  🚧
</h4> 

<hr> -->

<p align="center">
  <a href="#dart-about">About</a> &#xa0; | &#xa0; 
  <a href="#sparkles-features">Features</a> &#xa0; | &#xa0;
  <a href="#rocket-technologies">Technologies</a> &#xa0; | &#xa0;
  <a href="#white_check_mark-requirements">Requirements</a> &#xa0; | &#xa0;
  <a href="#checkered_flag-further-links">Starting</a> &#xa0; | &#xa0;
  <a href="#memo-license">License</a> &#xa0; | &#xa0;
  <a href="https://github.com/derBalou" target="_blank">Author</a>
</p>

<br>

## :dart: About ##

ESX Badges is an easy tool to let your players show their affiliation with agencies and firms. You can easily create your own badges and id cards.
It is based on the [jsfour ID-Card System](https://github.com/jonassvensson4/jsfour-idcard) by jonassvensson4.
You can easily create your own id cards with the image tool of your choice.

## :sparkles: Features ##

:heavy_check_mark: easy to use;\
:heavy_check_mark: easy to customize;\
:heavy_check_mark: lightweight;

## :rocket: Technologies ##

The following tools were used in this project:

- [LUA](https://docs.fivem.net/docs/scripting-manual/runtimes/lua/)
- [JavaScript](https://docs.fivem.net/docs/scripting-manual/runtimes/javascript/)
- [ESX Framework](https://docs.esx-framework.org/)


## :white_check_mark: Requirements ##

Before starting, you need to have a Running FiveM Server, a MySQL Connector (e.g. ox-mysql or mysql-async) and a running version of the ESX Framework installed.

## :wrench: Usage ##

To use the script you need to add the events to a client-side file of your choice and incorporate it in a menu of your choice.

The event has the following format:
```lua
TriggerServerEvent('esx_badges:open', showingPlayer, targetPlayer, job)
```

It is possible to trigger this event either from client-side or from server-side

Example:
```lua
-- Show your badge to someone (as a police officer)
closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
											
if closestDistance ~= -1 and closestDistance <= 3.0 then
  TriggerServerEvent('esx_badges:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(closestPlayer), "police")
else
  ESX.ShowNotification("No players nerby.")
end

-- Look at your own badge
TriggerServerEvent('esx_badges:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), "police")
```

## :checkered_flag: Further Links ##

- [ESX Documentation](https://docs.esx-framework.org/)
- [ES Documentation](https://docs.essentialmode.com/)
- [ESX Discord Community](https://discord.gg/MsWzPqE)
- [FiveM Forum Thread](https://forum.fivem.net/t/release-esx-base/39881)
- [FiveM Native Reference](https://runtime.fivem.net/doc/reference.html)

## :memo: License ##

This project is under license from MIT. For more details, see the [LICENSE](LICENSE.md) file.


Made with :heart: by <a href="https://github.com/derBalou" target="_blank">derBalou</a>

&#xa0;

<a href="#top">Back to top</a>
