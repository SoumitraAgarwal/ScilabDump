---
layout: post
title: 	The machine learning cloud
excerpt: "<b> Exxperimentation : </b> Coming towards the second half of the `Google Summer of Code` period, an experimentation setup was ..."
categories: [Coding period]
comments: true
---

## Experimentation

Coming towards the second half of the `Google Summer of Code` period, an experimentation setup was planned. This was exactly what comes under exploring uncharted territories. We were planning to create a machine learning architecture integrated with an easy to use cloud based interface. It turned out to be much more. With the help of the present toolbox, one can use a predefined set of algorithms (which basically emulate the scikit-learn api for python) and can run their custom script with effect of a single function. 

In this blog post, you get a free tour of how the work progressedd and how new ideas shaped up what is now the machine learning cloud setup for scilab. All of the updates and code can be veiwed on the [github sub-repository](https://github.com/SoumitraAgarwal/Scilab-gsoc/tree/master/Experimentation).

## Work updates

This section gives you an insight into how each feature was added to the setup. Each update is preserved in form of a sub repository on github and thus the progress can be analysed. The progress is explained in 10 steps below. The flow is explained as (from the scripts in Automated) :

* Script <algorithm.sci> is called from a directory on the local server. This script calls python_local.py.
* Script <python_local.py> clears all already running jupyter kernels and starts a new kernel in a nohup fashion, thus appending the output to nohup.out. After the kernel starts, the script copies the dataset and python script to the server to directory /home/username/Shared/
* Then the script runs the <python_server.py> with the parameters of the running kernel obtained from <python_local.py>. 
* The script <python_server.py> then starts a connection to the kernel and runs the training script with the results stored in <attributes.p>
* Then our process returns back to <python_local.py> which then copies back the <attributes.p> pickle file in protocol 2. 
* Then <algorithm.sci> reads the pickle file and then uses it as and so required.


A lot of additions/modifications were made from this initial setup. For the experimentation part the progress was made in 10 steps. Each of these steps can be viewed in
on the github directory in different (numbered) sub directories. Our toolbox has dependencies over PIMS.

* The first step was to automate the complete training procedure. This was done by writing a scilab script which copies a python script with a dataset to a server and then runs the script on the server and then copies the attributes back.
 
* The second addition was to move the script to the server earlier itself and then only move the
preprocessed dataset to the server and the copy the attributes back.

* The third addition was to add a custom url for dowloading the dataset on the server itself and then copying a preprocessing script. This led to reduced time taken for the complete process. Thus we now had two different flows to proceed.

* The fourth step was to add authentication for a user. (This would later be updated so that a user's details are stored and then not asked for repeatedly)

* The fifth step included an addition of custom python files that can be pushed by the user as
well. This was integrated with both our original functionality and the url based method. This added the third and the fourth flow to our setup.

* The next step was to add a mechanism to remove the repeated input for user end arguments. This was done by adding a data section to the toolbox.

* Addition of parameters to the scikit learn function was then enabled (in a string form) which helped us emulate the complete scikit learn repository

* Automated testing mechanism was added for each of the flows as well as utilities such as password change nd user register, with a demo file to run them all at once.

* Advanced tests were written so that all the predefined algorithms are also tested with each flow

* A loader script was written which transfers the required server files to a new user on the cloud.

## Usage

This section explains the usage of the setup and how one can check whether it is working fine or not. There are around 6 different flows that one can make use of.




## The toolbox

This repository deals with work done by The Distibuted Red Hen Lab towards classification of different instances of blended classic joint attention in various form of print, audio and video media. For more information visit the [Red-Hen Labs](https://sites.google.com/site/distributedlittleredhen/home/the-cognitive-core-research-topics-in-red-hen/the-barnyard/blended-classic-joint-attention)

Detection of number of human faces, possible extensions to their position and orientation. The files use Voila-Jones Haar classifier to detect human frontal and profile faces with the enhancement of template matching. The results can be seen as follows :

## The standalone toolbox

A python library like structure to use the accepted algorithm implementations all at one place.
Which looks something like this :

<img src = '{{ site.url }}/img/BCJA.png'>

The repository can be looked upon [here](https://github.com/RedHenLab/BlendedJointAttentionClean). The accepted algorithms were placed on the Case High performance computing cluster. 

### Required Packages:

<ol>
	<li> PIMS </li>
	<li> Scilab >= 5.2 </li>
	<li> Python 3</li>
</ol>

### Authors:

* <a href = "https://github.com/SoumitraAgarwal" target="_blank">Soumitra Agarwal</a> :neckbeard:

###### Thank you for reading 
