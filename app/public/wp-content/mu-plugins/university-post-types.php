<?php

function university_post_types() {

    // Event Post Type
    register_post_type('event', array(
        'supports' => array('title', 'editor', 'excerpt'),
        'rewrite' => array('slug' => 'events'),
        'public' => true,
        'show_in_rest' => true,
        'menu_icon' => 'dashicons-calendar-alt',
        'has_archive' => true,
        'labels' => array(
            'name' => 'Events',
            'add_new_item' => 'Add New Event',
            'edit_item' => 'Edit Event',
            'all_items' => 'All Events',
            'singular_name' => 'Event',
            )        
        )
    );

    // Programs Post Type
    register_post_type('program', array(
        'supports' => array('title', 'editor'),
        'rewrite' => array('slug' => 'programs'),
        'public' => true,
        'show_in_rest' => true,
        'menu_icon' => 'dashicons-awards',
        'has_archive' => true,
        'labels' => array(
            'name' => 'Programs',
            'add_new_item' => 'Add New Program',
            'edit_item' => 'Edit Program',
            'all_items' => 'All Programs',
            'singular_name' => 'Program',
            )        
        )
    );
    
    // Professors Post Type
    register_post_type('professor', array(
        'supports' => array('title', 'editor', 'thumbnail'),
        'public' => true,
        'show_in_rest' => true,
        'menu_icon' => 'dashicons-welcome-learn-more',
        'labels' => array(
            'name' => 'Professors',
            'add_new_item' => 'Add New Professor',
            'edit_item' => 'Edit Professor',
            'all_items' => 'All Professors',
            'singular_name' => 'Professor',
            )        
        )
    );
}
        
        add_action('init', 'university_post_types');
