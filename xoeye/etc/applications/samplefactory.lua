application=
{
        name="proxypublish",
        description="Application for forwarding streams to another RTMP server",
        protocol="dynamiclinklibrary",
        acceptors =
        {
                {
                        ip="0.0.0.0",
                        port=6665,
                        protocol="inboundLiveFlv"
                },
        },
        abortOnConnectError=true,
        targetServers=
        {
                --[[{
                        targetUri="rtmp://x.xxxxxxx.fme.ustream.tv/ustreamVideo/xxxxxxx",
                        targetStreamName="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                        localStreamName="gigi",
                        emulateUserAgent="FMLE/3.0 (compatible; FMSc/1.0 http://www.rtmpd.com)"
                },]]--
                {
                        targetUri="rtmp://localhost/vod",
                        targetStreamType="live", -- (live, record or append)
                        emulateUserAgent="My user agent",
                        localStreamName="stream1"
                },
        },
        --[[
        externalStreams =
        {
                {
                        uri="rtsp://82.177.67.61/axis-media/media.amp",
                        localStreamName="stream4",
                        forceTcp=false
                },
                {
                        uri="rtmp://edge01.fms.dutchview.nl/botr/bunny",
                        localStreamName="stream1"
                },
        },
        ]]--
        --validateHandshake=true,
        --default=true,
}

