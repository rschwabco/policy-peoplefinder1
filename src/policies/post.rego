package peoplefinder.POST.api.users

import input.user.attributes.properties as user_props

default allowed = false

default visible = false

default enabled = false

allowed {
	user_props.department == "Operations"
	user_props.title == "IT Manager"
}

allowed {
	dir.is_manager_of(input.user.id, input.resource.id)
}

visible {
	allowed
}

enabled {
	allowed
}
