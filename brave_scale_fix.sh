#!/bin/bash
exec sudo sed -i 's/Exec.*/& --force-device-scale-factor=0.8/g' /usr/share/applications/brave-origin.desktop
