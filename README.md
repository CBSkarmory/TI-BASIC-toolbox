# TI-BASIC-toolbox
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

here are some programs for `TI-8[3 4](+)? (SE)?` etc calculators (that support TI-BASIC) 

**WARNING**: only files in the `8xp` directory can be sent directly to the calculators. *Files in `src` are just text and will **not** run if sent to calculators; they exist only for conveniently veiwing the source code.*

*note: after programs are sent to the calculator, they may be archived by default. This prevents them from being delted when clearing RAM. To use them, unarchive them by going to `[2nd] [mem] [6]` and then the program, from `[pgrm]`. For example, when unarchiving pgrmINTREST, you should get the command `unarchive pgrmINTREST` with the steps indicated above, then hit enter."

To edit `.8xp` files (*in the `8xp` directory*) , use somehting along the lines of [SourceCoder](https://www.cemetech.net/sc/) (in browser) or TICoder (executable binary) on the computer. You could also paste the contents of the source files into those editors. 
Alternatively, download them onto your calculator and edit them there; `8xp` files can be transfered using [TI-Connect](http://education.ti.com/en/us/products/computer_software/connectivity-software/ti-connect-software/features/features-summary) (official, for windows) or [TiLP](http://lpg.ticalc.org/prj_tilp/) (for linux).

|Program     |Description                                   |
|------------|:---------------------------------------------|
|prgmCROSSP3D| 3-dimensional vector cross product calculator|
|prgmDIALTE  | dialates a point (x,y) by factor of z|
|prgmDISTANCE| calculates distance between two 2-D points|
|prgmDOTP3D  | 3-dimensional vector dot product calculator|
|prgmIGAS    | solves for unknown value in Ideal Gas Law|
|prgmQUADFORM| solves quadratic formula, shows some other useful info|
|prgmSLOPE   | calculates slope from two 2-D points|
|pgrmINTREST | compound interest calculator|
|pgrmPKMNSTAT| Pokémon stat calculator|
|pgrmDAMAGE  | *Pokémon damage calculator* (see section below)|
|pgrmTRIANGLE| Triangle Utilities|
|pgrmFOIL    | FOIL calculator, shows work|


## How to use the Pokémon damage calculator

`pgrmDAMAGE` has some abbreviated prompts (because of the 16 char wide screen limit) that may seem cryptic. This should clear them up.

|Prompt|Description                                   |
|------|:---------------------------------------------|
|ATK   | attacking stat of attacker -- this will be spATK for special attacks. This should include boosts. *Use `pgrmPKMNSTAT` to calculate stats (using base stat, EVs, etc)*.|
|BP    | base power of the move|
|WB    | weather boost (as a multiplier) -- usually `1`. For example, a water attack in rain would get a 2x multiplier, so enter `2` in that case.|
|AB    | ability boost (as a multiplier) -- usually `1`. For example, a pokémon with the Steelworker ability using a steel-type attack gets a 1.5x multiplier, so enter `1.5` in that case.|
|STAB  | **S**ame **T**ype **A**ttack **B**onus -- If no [STAB](https://bulbapedia.bulbagarden.net/wiki/Same-type_attack_bonus), enter `1`. For example, a flying-type attack from a flying-type pokémon gets a 1.5x boost, so enter `1.5` in that case.|
|lv    | level of attacker|
|HP    | HP stat of defender -- *Do not use `pgrmPKMNSTAT` for HP; use [insert later] instead.|
|DEF   | defending stat of defender -- this will be spDEF for special attacks. This should include boosts.|
|SRD   | [stealth rock](https://bulbapedia.bulbagarden.net/wiki/Stealth_Rock_(move)) damage taken by defender (multiplier) -- Enter `1` for neutral to rock, `2` for weak to rock, `4` for 4x weak to rock, `0.5` for resists rock, and `0.25` for 4x resist|
|Lefties?| does the defender have leftovers? `Y` means yes and `N` means no.|
|Grounded?| is the defender grounded (take damage from [spikes](https://bulbapedia.bulbagarden.net/wiki/Spikes_(move)))? -- flying-types and levitating pokémon are not grounded, except for under intense [gravity](https://bulbapedia.bulbagarden.net/wiki/Gravity_(move)) `Y` means yes and `N` means No.|

### outputs

In addition to a damage range (and as percentage), the calculator will (if applicable) display info denoting (potential) OHKO / 2KHO with stealth rocks / 1-3 layers of spikes perhaps with leftovers accounted for 2HKOs. An example output would be 

*(on TI-84's 16 char wide screen)*
```
243.511 to 286.4 
Damage
72.9076 to 85.77
percent
potential OHKO 
after SR.
```
where the defender is weak to stealth rocks. Thus, stealth rocks would damage the defender down to 75% hp, putting it in the potential OHKO range of 72-85%.
