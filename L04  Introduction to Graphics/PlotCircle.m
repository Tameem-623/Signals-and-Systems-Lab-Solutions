function PlotCircle(x, y, r)
    % PlotCircle - Circle Plotter
    %
    % Syntax: PlotCircle(x, y, r)

    theta = 0:1/100:2 * pi;
    x_axis = r * cos(theta) + x;
    y_axis = r * sin(theta) + y;

    plot(x_axis, y_axis);
    grid on;
    gtext('Center(2,2)');
end
