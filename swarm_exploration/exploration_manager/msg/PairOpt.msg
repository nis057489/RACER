int32 from_drone_id
int32 to_drone_id

float64 stamp
int8[] ego_ids
int8[] other_ids

# Message for pair-wise optimization between drones

int32 sender_id
int32 target_id
int32[] grid_ids  # Current grid assignments
float64[] position # Current position [x,y,z]
