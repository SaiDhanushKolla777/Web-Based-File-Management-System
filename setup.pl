#!/usr/bin/perl

use strict;
use warnings;

sub run_command {
    my ($command) = @_;
    print "Running: $command\n";
    system($command) == 0
        or die "Failed to execute: $command";
}

# Check Python installation
if (system("python --version") != 0) {
    print "Python not found. Please install Python manually.\n";
    exit;
}

# Install Flask
run_command("pip install Flask");

# Update this to your project path
my $project_path = "C:\\Users\\saidh\\Downloads\\Web Based File Management System";
chdir $project_path or die "Cannot change directory: $!";

# Run the Flask app
run_command("python app.py");
