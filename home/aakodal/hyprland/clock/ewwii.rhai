enter([
    poll("day", #{
        initial: "L U N D I",
        interval: "1s",
        cmd: "date +'%A' | tr '[:lower:]' '[:upper:]' | sed -E 's/([a-zA-Z])([a-zA-Z])/\\1 \\2/g;s//\\1 \\2/g'"
    }),

    poll("hour", #{
        initial: "00:00:00",
        interval: "50ms",
        cmd: "date +'%H:%M:%S'"
    }),

    poll("calendar", #{
        initial: "01 JANVIER 2000",
        interval: "1s",
        cmd: "date +'%-d %B %Y' | sed -E 's/é/e/g' | tr '[:lower:]' '[:upper:]'"
    }),

    defwindow(
        "clock",
        #{
            monitor: 0,
            stacking: "bg",
            focusable: "none",
            geometry: #{
                x: "0%",
                y: "2%",
                width: "0%",
                height: "0%",
                anchor: "top center",
            },
        },
        box(#{
            halign: "center",
            valign: "center",
            space_evenly: false,
            spacing: 0,
            orientation: "vertical",
        }, [
            label(#{ class: "day", text: day }),
            label(#{ class: "calendar", text: calendar }),
            label(#{ class: "hour", text: hour }),
        ]),
    ),
]);
