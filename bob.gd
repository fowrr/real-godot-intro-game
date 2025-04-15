extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 0.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

var mouse_sens = 0.3
var camera_anglev=0

#func _process(delta):
	#if camCollision.is_colliding():
	#	camera.global_transform.origin = camCollision.get_collision_point()	
	#else:
	#	camera.global_transform.origin = $axis/camHead.global_transform_origin
		

		
func _input(event):  		
	if event is InputEventMouseMotion and Input.is_action_pressed("mouse_right"):
			rotate_y(deg_to_rad(-event.relative.x*mouse_sens))
			$"CSGSphere3D".rotate_y(deg_to_rad(event.relative.x*mouse_sens))
	
			
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * -SPEED
		velocity.z = direction.z * -SPEED
		#$CSGSphere3D.rotate_x(deg_to_rad(2))
		if Input.is_action_pressed("ui_left"):
			$CSGSphere3D.rotate_z(deg_to_rad(-2))
		if Input.is_action_pressed("ui_right"):
			$CSGSphere3D.rotate_z(deg_to_rad(2))
		if Input.is_action_pressed("ui_up"):
			$CSGSphere3D.rotate_x(deg_to_rad(2))
		if Input.is_action_pressed("ui_down"):
			$CSGSphere3D.rotate_x(deg_to_rad(-2))
	else:
		velocity.x = move_toward(velocity.x, 0, .33)
		velocity.z = move_toward(velocity.z, 0, .33)
	move_and_slide()


func _on_coin_coin_collected():
	$axis/SpringArm3D/Camera.current = false
	


func _on_timer_timeout():
	$axis/SpringArm3D/Camera.current = true


