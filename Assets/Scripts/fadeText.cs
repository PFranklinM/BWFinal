using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class fadeText : MonoBehaviour {

	public Text text;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

//		Color.Lerp (text.color, Color.clear, 6000 * Time.deltaTime);

		Color color = text.color;

		if (color.a > 0) {
			color.a -= 0.1f * Time.deltaTime;
		}

		text.color = color;
	
	}
}
