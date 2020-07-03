# CATS Framework.                                          License:Apache 2.0

Comprehensive Automation Test Solution (CATS) is an open source test automation framework created and maintained by the *Publicis Sapient QE CoE Team*. CATS framework is a packaged solution that supports

**Functional**  | **Non-Functional** | **Services**|**Integration** |**Cloud**
----------- |----------------       |-------        |------------|----------
Desktop Web |Accessiblity   |REST API Services   |Adaptivist Kanoah(ATM)|Sauce Lab
Mobile Web  |Analytics  |SOAP Services          |Test Rail              |Browser Stack
Mobile App  |Creative   |Browser Micro-Services |Test Link              |Docker Execution
Windows Application |Image Comparison |FTP/SFTP |Jenkins                |Grid Execution
Image Based |Page Metrics   | File I/O          |Bamboo                 |Cloud Headless
Java Application|Visual Regression||Zephyr|pCloudy|

CATS framework can be used by both non-technical users (Functional QA, BA or PM) or technical user (Automation QE, Developer). Based on the technical competency the scripting language can be choosen __*Excel*__, __*JSON*__, __*YAML*__, __*JAVA*__

CATS framework supports two ways of execution
* __*Legacy CATS*__ (Suite, Scenarios, Test Cases and Test Steps)
* __*CATS BDD*__  (Suite, Feature File, Step Definition using CATS Action)

## System Pre-Requisites
* Windows, Linux, Mac with minimum 4GB RAM (8GB Recommended)
* Java JDK1.8 (181 and above due to JavaFx) _Note: Java 9 and above is not supported_
* For Mobile Automation Setup
    * Appium
    * Andoroid SDK
    * GenyMotion
    * Oracle Virtualbox
    * Mobizen

##	CATS Installation

# Installation on Windows
Download CATS Framework and Extract it in some location on Your Local
* Verify the **JDK installation** and **PATH** correctness
* JDK bin path to be added to system environment variables
* Remove path **“C:\ProgramData\Oracle\Java\javapath”** from the PATH variable if it exists
* Disable Automatic Java updates (to avoid path overwrite),
    * Search __Configure__ Java in Start Menu
    * Go to __Update tab__ and uncheck the Check for updates automatically
    * Click on __Do Not Check__ button from the popup
    * Click on __Apply__ and __OK__
* Go to **CATS/core** folder and run **launch-cats-ui.bat**

# Installation on Mac
Download CATS Framework and Extract it in some location on Your Local
* Set up Java Path on Mac:
    * Download the latest __JDK__ and install
    * Open __.bash_profile__ with any editor such as nano editor (command is : nano.bash_profile)
    * Set your __JAVA_HOME__ and BIN path using the export command as depicted in the screen shot below.
        **Note** : JAVA_HOME should be till . ./Home and BIN path should be till . ./bin
* Verify the JDK installation and PATH by using following commands
    * __echo $JAVA_HOME__ for Java_Home
    * __echo $PATH__
* Disable Automatic Java updates (to avoid path overwrite),
    * Open __System Preferences__.
    * Click __Java__ to open the Java settings panel
    * Click on the __Update__ tab
    * Untick the box __Check for updates automatically__
    * Click __Do not check__ in the pop-up window.
    * Click __Apply__ and then __OK__.
* Go to **CATS/core** folder and run **bash** **launch-cats-ui.sh**

# Installation on Ubuntu
Download CATS Framework and Extract it in some location on Your Local
* Set up __Java Path__ on Mac :
    * Download the tarball from Oracle website
    * Unzip it by sudo tar -xvpzf fileName __-C /installation_folder_name__
    * Change the files permission and ownership
    * In terminal enter __sudo -H gedit /etc/profile__
    * Append following two entries to /etc/profile and save
	    **JAVA_HOME**=/usr/lib/jvm/<your jdk version>
	    **PATH**=$PATH:$HOME/bin:$JAVA_HOME/bin
	    export JAVA_HOME
	    export PATH
* Verify the JDK installation and PATH by using following commands
    * echo $JAVA_HOME for Java_Home
    * echo $PATH
* Disable __Automatic Java updates__ (to avoid path overwrite)
* Go to **CATS/core** folder and run **bash** **launch-cats-ui.sh**

**_NOTE_**: Refer **User Guide** for Complete Understanding on CATS Framework.
