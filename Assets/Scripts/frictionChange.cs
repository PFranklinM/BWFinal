using UnityEngine;
using System.Collections;

public class frictionChange : MonoBehaviour {

	public GameObject floor;

	public Collider coll;

	float dynFriction;
	float statFriction;

	public playerMove player;

	// Use this for initialization
	void Start () {

		player = FindObjectOfType<playerMove> ();
	
	}
	
	// Update is called once per frame
	void Update () {

		coll = GetComponent<Collider>();

		if (player.isSprinting == true) {
				dynFriction = 5;
				statFriction = 5;
			}

		if (player.isSprinting == false) {
			dynFriction = 1;
			statFriction = 1;
		}

		coll.material.dynamicFriction = dynFriction;
		coll.material.staticFriction = statFriction;
	
	}
}
