/*
	The receiver idles and receives messages from subspace-compatible radio equipment;
	primarily headsets. They then just relay this information to all linked devices,
	which can would probably be network hubs.

	Link to Processor Units in case receiver can't send to bus units.
*/

/obj/machinery/telecomms/receiver
	name = "broadcast receiver"
	icon_state = "broadcast receiver"
	desc = "This machine has looks rather odd. It is designed to detect and process radio activity, you'd wager."
	density = TRUE
	use_power = IDLE_POWER_USE
	idle_power_usage = 30
	circuit = /obj/item/circuitboard/machine/telecomms/receiver

/obj/machinery/telecomms/receiver/receive_signal(datum/signal/subspace/signal)
	if(!on || !istype(signal) || !check_receive_level(signal) || signal.transmission_method != TRANSMISSION_SUBSPACE)
		return
	if(!is_freq_listening(signal))
		return

	signal.levels = list()

	// send the signal to the hub if possible, or a bus otherwise
	if(!relay_information(signal, /obj/machinery/telecomms/hub))
		relay_information(signal, /obj/machinery/telecomms/bus)

/obj/machinery/telecomms/receiver/proc/check_receive_level(datum/signal/subspace/signal)
	if (z in signal.levels)
		return TRUE

	for(var/obj/machinery/telecomms/hub/H in links)
		for(var/obj/machinery/telecomms/relay/R in H.links)
			if(R.can_receive(signal) && R.z in signal.levels)
				return TRUE

	return FALSE

//Preset Receivers

//--PRESET LEFT--//

/obj/machinery/telecomms/receiver/preset_left
	id = "Receiver A"
	network = "tcommsat"
	autolinkers = list("receiverA") // link to relay
	freq_listening = list(FREQ_SCIENCE, FREQ_MEDICAL, FREQ_SUPPLY, FREQ_SERVICE)


//--PRESET RIGHT--//

/obj/machinery/telecomms/receiver/preset_right
	id = "Receiver B"
	network = "tcommsat"
	autolinkers = list("receiverB") // link to relay
	freq_listening = list(FREQ_COMMAND, FREQ_ENGINEERING, FREQ_SECURITY, FREQ_VAULT, FREQ_NCR, FREQ_BOS, FREQ_ENCLAVE, FREQ_DEN, FREQ_LEGION)

	//Common and other radio frequencies for people to freely use
/obj/machinery/telecomms/receiver/preset_right/Initialize()
	. = ..()
	for(var/i = MIN_FREQ, i <= MAX_FREQ, i += 2)
		freq_listening |= i

/obj/machinery/telecomms/receiver/preset_left/birdstation
	name = "Receiver"
	freq_listening = list()


//--PRESET STANDARD--//

/obj/machinery/telecomms/receiver/preset_wasteland
	id = "Receiver C"
	network = "tcommsat"
	autolinkers = list("receiverC") // link to relay
	freq_listening = list(FREQ_COMMON)
//	freq_listening = list(FREQ_COMMAND, FREQ_ENGINEERING, FREQ_SECURITY, FREQ_SCIENCE, FREQ_MEDICAL, FREQ_SUPPLY, FREQ_SERVICE, FREQ_VAULT, FREQ_NCR, FREQ_BOS, FREQ_ENCLAVE, FREQ_DEN, FREQ_LEGION)
/*
/obj/machinery/telecomms/receiver/preset_wasteland/Initialize()
	. = ..()
	for(var/i = MIN_FREQ, i <= MAX_FREQ, i += 2)
		freq_listening |= i
*/
//misc standard
/obj/machinery/telecomms/receiver/preset_wasteland/two
	id = "Receiver D"
	network = "tcommsat"
	autolinkers = list("receiverD") // link to relay
	freq_listening = list(FREQ_COMMON)

/obj/machinery/telecomms/receiver/preset_wasteland/three
	id = "Receiver E"
	network = "tcommsat"
	autolinkers = list("receiverE") // link to relay
	freq_listening = list(FREQ_COMMON)

/*
//Paper for mapping.
/obj/item/paper/guides/radio_relay
	name = "Radio Relays For Dummies"
	info = "<center><b>Dummies Guide To Telecomms</b></center><br><br><center></center><br><br>Take a multi-tool. Use your multi-tool (<b>on a receiver!!!</b>) to insert the frequency you wish to speak over. That's it! It's that simple. However, keep in mind that this is easy to disrupt, if the enemy(<b>That darn Janitor...</b>) finds out what you had placed into the filters.</center>"
*/