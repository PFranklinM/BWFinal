﻿using UnityEngine;
using System.Collections;

public class monsterMove : MonoBehaviour {

	public GameObject player;

	public GameObject monster;

	public float moveSpeed = 0.0f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		Vector3 targetDir = monster.transform.position - player.transform.position;

		float angle = Vector3.Angle (targetDir, player.transform.right * -1);

		if (angle > 45.0f) {
//			Debug.Log ("Player is not looking at the monster");

			transform.position = Vector3.MoveTowards(transform.position, player.transform.position, moveSpeed * Time.deltaTime);
		}

		float randomNumber = Random.Range (0f, 1000f);


		//teleport behind
		if (randomNumber <= 0.1) {
			monster.transform.position = player.transform.position - player.transform.forward * 10f;
		} 
		//teleport infront
		else if (randomNumber <= 0.01) {
			monster.transform.position = player.transform.position - player.transform.forward * -10f;
		}
	
	}

	void OnCollisionEnter(Collision coll) {
		if (coll.gameObject.tag == "player") {
			Debug.Log ("You lost");
		}
	}
}
