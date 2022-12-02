#pragma once

#include <juce_gui_extra/juce_gui_extra.h>

class GrassComponent : public juce::Component
{
public:
    GrassComponent();

    void paint(juce::Graphics &) override;
    void resized() override;

private:
    // Your private member variables go here...

    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(GrassComponent)
};
