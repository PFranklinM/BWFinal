using UnityEngine;
using System.Collections;

public class audioManager : MonoBehaviour {

	public AudioSource audio1;
	public AudioSource audio2;
	public AudioSource audio3;

	public monsterMove monster;

	// Use this for initialization
	void Start () {

		monster = FindObjectOfType<monsterMove> ();

		audio3.volume = 0.1f;
	
	}
	
	// Update is called once per frame
	void Update () {

		if (monster.touchedPlayer == true && audio2.isPlaying == false) {
			gameOverSound ();

			Invoke("gameOver", 8.274f);
		}

		if (monster.closeToPlayer == true && audio3.isPlaying == false) {
			staticOn ();

			if (audio3.volume < 1) {
				audio3.volume += 0.01f * Time.deltaTime;
			}
		}

		if (monster.closeToPlayer == false && audio3.isPlaying == true) {
			if (audio3.volume > 0) {
				audio3.volume -= 0.01f * Time.deltaTime;
			}

			if (audio3.volume < 0.3) {
				staticOff ();
			}
		}
	
	}

	void gameOverSound(){
		audio1.Pause ();
		audio2.Play ();
	}

	void staticOn(){
		audio3.Play ();
	}

	void staticOff(){
		audio3.Pause ();
	}

	void gameOver(){
		Application.LoadLevel ("gameLose");
	}
}
