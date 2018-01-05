gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local on = false

-- Listen to incoming UDP packets and parses them, so you can
-- easily dispatch them just by defining callback functions.
util.data_mapper{

    -- Listen to the 'toggle' event sent from the hosted service
    toggle = function(status)
        on = status == "on"
    end
}

function node.render()
    if on then
        gl.clear(1,1,1,1)
    else
        gl.clear(0,0,0,1)
    end
end
