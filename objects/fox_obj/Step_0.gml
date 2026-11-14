if (place_meeting(x, y, hedgehog_obj)) {
    
    // Triggers once when the hedgehog first touches the fox
    if (!is_touching) {
        is_touching = true;
        talk_count += 1;
        show_dialogue = true;
        
        if (talk_count == 1) {
            dialogue_text = "Everyone wants to help you, little hedgehog";
        } else if (talk_count == 2) {
            dialogue_text = "Back again? Find all 6 acorns.";
        } else {
            dialogue_text = "Good luck on your adventure, little hedgehog!";
        }
    }
    
} else {
    // Resets when the hedgehog walks away
    is_touching = false;
    show_dialogue = false;
}
