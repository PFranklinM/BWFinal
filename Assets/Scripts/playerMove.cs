using UnityEngine;
using System.Collections;

public class playerMove : MonoBehaviour {

	public GameObject player;

	public bool isSprinting;

	// Use this for initialization
	void Start () {

		isSprinting = false;
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void FixedUpdate () {

		if (Input.GetKey (KeyCode.W)) {
			player.GetComponent<Rigidbody> ().AddForce (player.transform.right * -20f);
		}

		if (Input.GetKey (KeyCode.S)) {
			player.GetComponent<Rigidbody> ().AddForce (player.transform.right * 20f);
		}

		if (Input.GetKey (KeyCode.Q)) {
			player.GetComponent<Rigidbody> ().AddForce (player.transform.forward * -20f);
		}

		if (Input.GetKey (KeyCode.E)) {
			player.GetComponent<Rigidbody> ().AddForce (player.transform.forward * 20f);
		}

		if (Input.GetKey (KeyCode.LeftShift) || Input.GetKey (KeyCode.RightShift)) {
			if (Input.GetKey (KeyCode.W)) {
				player.GetComponent<Rigidbody> ().AddForce (player.transform.right * -40f);
			}
		}

		if (Input.GetKey (KeyCode.LeftShift) || Input.GetKey (KeyCode.RightShift)) {
			isSprinting = true;
		} else {
			isSprinting = false;
		}

		if (Input.GetKey (KeyCode.A)) {
			player.transform.Rotate (0f, -5f, 0);
		}

		if (Input.GetKey (KeyCode.D)) {
			player.GetComponent<Transform> ().Rotate (0f, 5f, 0);
		}
	}
}
