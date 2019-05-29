% kVIS3 Data Visualisation
%
% Copyright (C) 2012 - present  Kai Lehmkuehler, Matt Anderson and
% contributors
%
% Contact: kvis3@uav-flightresearch.com
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

function kVIS_dataViewerLinkTimeAxes(handles, cmd)
%
% link all available timeplots
%
l = findobj(handles.uiTabDataViewer.Divider, 'Type', 'uipanel', 'Tag', 'timeplot');

if isempty(l)
    return
end

for i = 1:size(l, 1)
    
    ax(i) = l(i).axesHandle;
    
end

linkaxes(ax, cmd);