%%
plot_line("C:\Users\ahmee\OneDrive\Desktop\Bulls racing\marc_end.mat","Fuel_Used")

%%
plot_histogram("C:\Users\ahmee\OneDrive\Desktop\Bulls racing\marc_end.mat","Fuel_Used")

%%
function plot_line(file_path, channel)
    file = load(file_path);
    data = file.(channel);
    plot(data.("Time"), data.("Value"))
    ylabel(channel + " in " + data.("Units"))
    xlabel("Time")
end

function plot_scatter(file_path, channel)
    figure;
    file = load(file_path);
    data = file.(channel);
    scatter(data.("Time"), data.("Value"))
    ylabel("Value")
    xlabel("Time")
end

function plot_histogram(file_path, channel)
    figure;
    file = load(file_path);
    data = file.(channel);
    histogram(data.("Value"), 20)
    ylabel("Value")
    xlabel("Time")
end


