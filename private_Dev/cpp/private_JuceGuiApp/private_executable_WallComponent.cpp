#include "WallComponent.h"

//==============================================================================
WallComponent::WallComponent()
{
    setSize(300, 300);
}

//==============================================================================
void WallComponent::paint(juce::Graphics &g)
{
    juce::Rectangle<float> wall(5, 5);
    g.fillCheckerBoard(wall, getWidth() / 10, getHeight() / 10, juce::Colours::sandybrown, juce::Colours::saddlebrown);
    // g.fillRect(wall);
}

void WallComponent::resized()
{
    // This is called when the MainComponent is resized.
    // If you add any child components, this is where you should
    // update their positions.
}
