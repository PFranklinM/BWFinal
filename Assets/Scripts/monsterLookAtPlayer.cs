using UnityEngine;
using System.Collections;

public class monsterLookAtPlayer : MonoBehaviour {

	public Transform player;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		Vector3 targetDir = player.position - transform.position;
		Vector3 lockDir = new Vector3 (0.0f, 0.0f, 0.0f);
		float step = 1f * Time.deltaTime;
		Vector3 newDir = Vector3.RotateTowards(transform.forward, targetDir, step, 0.0F);
		transform.rotation = Quaternion.LookRotation(newDir, lockDir);
	
	}
}
