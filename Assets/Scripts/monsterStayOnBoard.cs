using UnityEngine;
using System.Collections;

public class monsterStayOnBoard : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		Vector3 monsterPos = new Vector3 (transform.position.x,
			                     transform.position.y,
			                     transform.position.z);

		if (monsterPos.y < 1.79f) {
			monsterPos.y = 1.79f;
		}

		transform.position = monsterPos;
	
	}
}
