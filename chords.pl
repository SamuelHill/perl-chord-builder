#! /usr/bin/perl
# chords.pl

print "What quality chord do you want? ";
$userquality = <STDIN>;
chomp ($userquality);
print "\n";

%qualities = ("M", 0,
			  "m", 1,
			  "d", 2,
			  "A", 3,
			  "M7", 4);

@Qchecker = keys %qualities;
my $QcheckerString = join("|",@Qchecker);

if ($userquality !~ /($QcheckerString)/)
{
	print "Not a valid chord quality";
	exit;
}

print "What is the root of your chord? ";
$userroot = <STDIN>;
chomp ($userroot);
print "\n";


%notes = ("B#", 0, "C", 1, "Dbb", 2,
		  "Bx", 3, "C#", 4, "Db", 5,
		  "Cx", 6, "D", 7, "Ebb", 8,
		  "D#", 9, "Eb", 10, "Fbb", 11,
		  "Dx", 12, "E", 13, "Fb", 14,
		  "E#", 15, "F", 16, "Gbb",  17,
		  "Ex", 18, "F#", 19, "Gb", 20,
		  "Fx", 21, "G", 22, "Abb", 23,
		  "G#", 24, "Ab", 25,
		  "Gx", 26, "A", 27, "Bbb", 28,
		  "A#", 29, "Bb", 30, "Cbb", 31,
		  "Ax", 32, "B", 33, "Cb", 34);

@Nchecker = keys %notes;
my $NcheckerString = join("|",@Nchecker);

if ($userroot !~ /($NcheckerString)/)
{
	print "Not a valid note name.";
	exit;
}

###############################################################
##        Above is the user input for starting notes.        ##
###############################################################

$quality = $qualities{$userquality};
$voice = $notes{$userroot};
my %seton = reverse %notes;
my @chord;

if ($quality == 0)
{
	if ($voice == 3 || $voice == 12 || $voice == 18 || $voice == 32)
	{
		print "Not possible to spell chord off this note.";
	}
	else
	{
		push(@chord, $voice);
		$count = 0;

		while ($count <= 1)
		{
			if ($count == 0)
			{
				if ($voice == 19 || $voice == 20)
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 4 || $voice == 5 || $voice == 13 ||
					   $voice == 14 || $voice == 15 || $voice == 16 ||
					   $voice == 17 || $voice == 21 || $voice == 22 ||
					   $voice == 23 || $voice == 24 || $voice == 25 ||
					   $voice == 33 || $voice == 34)
				{
					$numeric = $voice + 11;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 12;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			else
			{
				if ($voice == 18 || $voice == 19 || $voice == 20 ||
					$voice == 21 || $voice == 22 || $voice == 23)
				{
					$numeric = $voice + 8;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 9 || $voice == 10 || $voice == 29 || $voice == 30 )
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 9;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			$count++;
		}
		foreach $nums (@chord)
		{
			$key = $seton{$nums};
			print $key, "\n";
		}
	}
}

###############################################################
###############################################################
##         Above is the building of the major triad.         ##
###############################################################
###############################################################

elsif ($quality == 1)
{
	if ($voice == 3)
	{
		print "Not possible to spell chord off this note.";
	}
	else
	{
		push(@chord, $voice);
		$count = 0;

		while ($count <= 1)
		{
			if ($count == 0)
			{
				if ($voice == 18 || $voice == 19 || $voice == 20 ||
				$voice == 21 || $voice == 22 || $voice == 23)
				{
					$numeric = $voice + 8;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 9 || $voice == 10 || $voice == 29 || $voice == 30 )
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 9;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			else
			{
				if ($voice == 19 || $voice == 20)
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 4 || $voice == 5 || $voice == 13 ||
					   $voice == 14 || $voice == 15 || $voice == 16 ||
					   $voice == 17 || $voice == 21 || $voice == 22 ||
					   $voice == 23 || $voice == 24 || $voice == 25 ||
					   $voice == 33 || $voice == 34)
				{
					$numeric = $voice + 11;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 12;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			$count++;
		}
		foreach $nums (@chord)
		{
			$key = $seton{$nums};
			print $key, "\n";
		}
	}
}

###############################################################
###############################################################
##         Above is the building of the minor triad.         ##
###############################################################
###############################################################

elsif ($quality == 2)
{
	if ($voice == 2 || $voice == 8 ||  $voice == 11 ||
		$voice == 17 || $voice == 23 || $voice == 31)
	{
		print "Not possible to spell chord off this note.";
	}
	else
	{
		push(@chord, $voice);
		$count = 0;

		while ($count <= 1)
		{
			if ($count == 0)
			{
				if ($voice == 18 || $voice == 19 || $voice == 20 ||
				$voice == 21 || $voice == 22 || $voice == 23)
				{
					$numeric = $voice + 8;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 9 || $voice == 10 || $voice == 29 || $voice == 30 )
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 9;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			else
			{
				if ($voice == 18 || $voice == 19 || $voice == 20 ||
				$voice == 21 || $voice == 22 || $voice == 23)
				{
					$numeric = $voice + 8;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 9 || $voice == 10 || $voice == 29 || $voice == 30 )
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 9;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			$count++;
		}
		foreach $nums (@chord)
		{
			$key = $seton{$nums};
			print $key, "\n";
		}
	}
}

###############################################################
###############################################################
##         Above is the building of the dimin triad.         ##
###############################################################
###############################################################

if ($quality == 3)
{
	if ($voice == 0 || $voice == 3 ||  $voice == 6 || $voice == 12 ||
		$voice == 18 || $voice == 21 || $voice == 26 || $voice == 32)
	{
		print "Not possible to spell chord off this note.";
	}
	else
	{
		push(@chord, $voice);
		$count = 0;

		while ($count <= 1)
		{
			if ($count == 0)
			{
				if ($voice == 19 || $voice == 20)
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 4 || $voice == 5 || $voice == 13 ||
					   $voice == 14 || $voice == 15 || $voice == 16 ||
					   $voice == 17 || $voice == 21 || $voice == 22 ||
					   $voice == 23 || $voice == 24 || $voice == 25 ||
					   $voice == 33 || $voice == 34)
				{
					$numeric = $voice + 11;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 12;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			else
			{
				if ($voice == 19 || $voice == 20)
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 4 || $voice == 5 || $voice == 13 ||
					   $voice == 14 || $voice == 15 || $voice == 16 ||
					   $voice == 17 || $voice == 21 || $voice == 22 ||
					   $voice == 23 || $voice == 24 || $voice == 25 ||
					   $voice == 33 || $voice == 34)
				{
					$numeric = $voice + 11;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 12;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			$count++;
		}
		foreach $nums (@chord)
		{
			$key = $seton{$nums};
			print $key, "\n";
		}
	}
}

###############################################################
###############################################################
##         Above is the building of the Augm. triad.         ##
###############################################################
###############################################################

if ($quality == 4)
{
	if ($voice == 3 || $voice == 12 || $voice == 18 || $voice == 32)
	{
		print "Not possible to spell chord off this note.";
	}
	else
	{
		push(@chord, $voice);
		$count = 0;

		while ($count <= 2)
		{
			if ($count == 0)
			{
				if ($voice == 19 || $voice == 20)
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 4 || $voice == 5 || $voice == 13 ||
					   $voice == 14 || $voice == 15 || $voice == 16 ||
					   $voice == 17 || $voice == 21 || $voice == 22 ||
					   $voice == 23 || $voice == 24 || $voice == 25 ||
					   $voice == 33 || $voice == 34)
				{
					$numeric = $voice + 11;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 12;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			elsif ($count == 1)
			{
				if ($voice == 18 || $voice == 19 || $voice == 20 ||
					$voice == 21 || $voice == 22 || $voice == 23)
				{
					$numeric = $voice + 8;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 9 || $voice == 10 || $voice == 29 || $voice == 30 )
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 9;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			else
			{
				if ($voice == 19 || $voice == 20)
				{
					$numeric = $voice + 10;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				elsif ($voice == 4 || $voice == 5 || $voice == 13 ||
					   $voice == 14 || $voice == 15 || $voice == 16 ||
					   $voice == 17 || $voice == 21 || $voice == 22 ||
					   $voice == 23 || $voice == 24 || $voice == 25 ||
					   $voice == 33 || $voice == 34)
				{
					$numeric = $voice + 11;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
				else
				{
					$numeric = $voice + 12;
					if ($numeric > 34)
					{
						$numeric = $numeric - 35;
						$voice = $numeric;
						push(@chord, $voice);
					}
					else
					{
						$voice = $numeric;
						push(@chord, $voice);
					}
				}
			}
			$count++;
		}
		foreach $nums (@chord)
		{
			$key = $seton{$nums};
			print $key, "\n";
		}
	}
}
