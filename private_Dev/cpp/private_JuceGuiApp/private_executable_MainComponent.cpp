#include "MainComponent.h"

//==============================================================================
MainComponent::MainComponent()
{
    setSize(600, 400);
    addAndMakeVisible(wall);
    addAndMakeVisible(grass);
}

//==============================================================================
void MainComponent::paint(juce::Graphics &g)
{
    g.fillAll(juce::Colours::skyblue);
}

void MainComponent::resized()
{
    auto r = getLocalBounds();
    // wall.setBounds(r.removeFromLeft(100));
    wall.setBoundsRelative(0.1f, 0.1f, 0.3f, 0.2f);
    grass.setBoundsRelative(0.1f, 0.1f, 0.3f, 0.2f);
    // grass.setBounds(0, 0, (600 / 3), (400 / 3));
}
