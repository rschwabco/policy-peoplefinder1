package peoplefinder.PUT.api.users.__id

import input.user.attributes.properties as user_props

default allowed = false

default visible = true

default enabled = true

allowed {
	user_props.department == "Operations"
}
