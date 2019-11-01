figure(1)
t = (0:0.002:5)
x = 2 * sawtooth (0.4 * pi * t, 0.6);
plot ( t, x, '.-' );
axis ( [ 0 5 -2 2 ] )
title ( 'Semnal cu rezolutia 2ms' )
xlabel ( 'Timp[s]' )
ylabel ( 'Amplitudine' )

figure(2)
t = (0:0.002:5)
x = 2 * sawtooth (0.4 * pi * t, 1/5);
plot ( t, x, '.-' );
axis ( [ 0 15 -2 1 ] )
title ( 'Semnal cu rezolutia 20ms' )
xlabel ( 'Timp[s]' )
ylabel ( 'Amplitudine' )

figure(3)
t = (0:0.2:5)
x = 2 * sawtooth (0.4 * pi * t, 1/5);
plot ( t, x, '.-' );
axis ( [ 0 15 -2 2 ] )
title ( 'Semnal cu rezolutia 200ms' )
xlabel ( 'Timp[s]' )
ylabel ( 'Amplitudine' )