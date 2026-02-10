using Godot;
using GodotInk;

public partial class DialogueManager : Node
{
	[Export]
	public Label dialogue;

	[Export]
	public VBoxContainer dialogueChoices;

	[Export]
	private InkStory newStory;

	private InkStory story;

	
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		story = newStory;
		ContinueStory();
	}

	private void ContinueStory()
	{
		foreach (Node child in dialogueChoices.GetChildren())
			child.QueueFree();

		dialogue.Text = story.ContinueMaximally();

		foreach (InkChoice choice in story.CurrentChoices)
		{
			Button button = new() { Text = choice.Text };
			Godot.TextServer.AutowrapMode autowrap = (Godot.TextServer.AutowrapMode) 3;
			button.SetAutowrapMode(autowrap);
			button.Pressed += delegate
			{
				story.ChooseChoiceIndex(choice.Index);
				ContinueStory();
			};
			dialogueChoices.AddChild(button);
		}
	}

	public void restartStory(){	
		story.ResetState();
		ContinueStory();
	}	
}
