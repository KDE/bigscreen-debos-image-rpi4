# Only set for X11
text "$XDG_SESSION_TYPE" = "x11" || return

export QT_IM_MODULE=qtvirtualkeyboard
