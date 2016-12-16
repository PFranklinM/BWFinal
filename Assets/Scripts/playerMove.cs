using UnityEngine;
using System.Collections;

public class playerMove : MonoBehaviour {

	public GameObject player;

	public bool isSprinting;

	public monsterMove monster;

	public Transform monsterDir;

	bool doneTurning = false;

	// Use this for initialization
	void Start () {

		isSprinting = false;

		monster = FindObjectOfType<monsterMove> ();
	
	}
	
	// Update is called once per frame
	void Update () {

		if (monster.touchedPlayer == true && doneTurning == false) {
			Vector3 targetDir = monsterDir.position - transform.position;
			Vector3 lockDir = new Vector3 (0.0f, 0.0f, 0.0f);
			float step = 1f * Time.deltaTime;
			Vector3 newDir = Vector3.RotateTowards (transform.right, targetDir, step, 0.0F);
			transform.rotation = Quaternion.LookRotation (newDir, lockDir);

			doneTurning = true;
		}
	
	}

	void FixedUpdate () {

		if (monster.touchedPlayer == true) {
			return;
		}

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

	void OnCollisionEnter(Collision coll) {
		if (coll.gameObject.tag == "switch") {
			
		}
	}
}
