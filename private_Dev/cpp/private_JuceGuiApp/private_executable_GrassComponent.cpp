#include "GrassComponent.h"

//==============================================================================
GrassComponent::GrassComponent()
{
    setSize(400, 400);
}

//==============================================================================
void GrassComponent::paint(juce::Graphics &g)
{

    g.setColour(juce::Colours::olivedrab);
    // g.drawLine(10, 30, getWidth() - 10, 30);
    // g.drawLine(getWidth(), getHeight(), getWidth(), getHeight());
    // g.drawLine(10, 100, 10, 100);
    g.fillRect(10, 10, 10, 200);
}

void GrassComponent::resized()
{
    // This is called when the MainComponent is resized.
    // If you add any child components, this is where you should
    // update their positions.
}
