# ngspice installation

You can download the latest version of ngspice from the [official ngspice site](https://sourceforge.net/projects/ngspice/files/ng-spice-rework/44.2/). You can also download the version 43 [version 43](https://sourceforge.net/projects/ngspice/files/ng-spice-rework/old-releases/43/) I am using. It is a good idea to also download the user manual from the same site.

You can now install the ngspice folder named Spice64 where you want. I created a NGSpice folder in the `C:\Program Files\` folder and copied the Spice64 folder in it. So for my installation, the path to the ngspice binary is `C:\Program Files\NGSpice\Spice64\bin\`. Of course you can choose any other installation location.

Once you have installed (copied) ngspice, you need to download the EKV 2.6 osdi file and copy it to the folder `\<your ngspice installation path\>\Spice64\lib\ngspice\` where you should see the `psp103_nqs.osdi` file and other osdi files. You can download the EKV 2.6 osdi file for Windows 10 and Windows 11 from my [EKV repository](https://github.com/chrisenz/EKV/tree/main/EKV2.6/va/code).

You then need to modify the spinit file of ngspice that is in the follwoing folder `\<your ngspice installation path\>\Spice64\share\ngspice\scripts\`. You can replace it by the `spinit` file found in the [ngspice directory](https://github.com/chrisenz/sEKV-Design-in-IHP-SG13G2/tree/main/ngspice). This file is run each time ngspice is started. It will load the `ekv26.osdi` (and `psp103_nqs.osdi`) files for running simulations with the EKV and PSP compact models. Note that the other osdi models have been disabled by adding the star at the beginning of the line. If you want to use of these models you just remove the start on the corresponding line.

Before running ngspice, you still need to add a few variables to the Windows Environment variables. In order to do this in Windows 10 or Windows 11, open `Settings>Sytem>About`. On the right panel click Advanced system settings. You will see this dialog box

![System properties.](/img/system_properties.png)

Click in the `Environment Variables...` button which open this dialog box

![Environment variables.](/img/environment_variables.png)

In order to tell ngspice where to find the osdi model library, you then need to create a new System variable:

Variable name: `NGSPICE_OSDI_DIR`

Variable value: `<Your ngspice installation path>\Spice64\lib\ngspice\`

as shown below:

![ngspice osdi dir.](/img/NGSPICE_OSDI_DIR.png)

In order to tell ngspice where to find the spinit file, you need to create the following System variable:

Variable name: `SPICE_SCRIPTS`

Variable value: `<Your ngspice installation path>\Spice64\share\ngspice\scripts\`

as shown below:

![ngspice osdi dirspice scripts.](/img/SPICE_SCRIPTS.png)

You are now all set to run the examples.

Enjoy!
