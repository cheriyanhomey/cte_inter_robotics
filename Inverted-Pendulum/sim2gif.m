% sim2gif

% Inputs:
%   f: Figure Handle
%   i: Index
%   filename: File Name
function sim2gif(f, i, filename)
      frame = getframe(f); 
      im = frame2im(frame); 
      [imind,cm] = rgb2ind(im,256); 
      % Write to the GIF File 
      if i == 1
          imwrite(imind,cm,filename,'gif', 'Loopcount',inf, 'DelayTime', 0.1); 
      else 
          imwrite(imind,cm,filename,'gif','WriteMode','append', 'DelayTime', 0.00001); 
      end 
end