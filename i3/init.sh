#!/bin/bash
i3-msg 'workspace 6; exec /opt/ferdi/ferdi' && sleep 1s && i3-msg 'workspace 1'
