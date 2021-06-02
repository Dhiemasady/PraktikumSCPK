function varargout = perceptron_or(varargin)
% PERCEPTRON_OR MATLAB code for perceptron_or.fig
%      PERCEPTRON_OR, by itself, creates a new PERCEPTRON_OR or raises the existing
%      singleton*.
%
%      H = PERCEPTRON_OR returns the handle to a new PERCEPTRON_OR or the handle to
%      the existing singleton*.
%
%      PERCEPTRON_OR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERCEPTRON_OR.M with the given input arguments.
%
%      PERCEPTRON_OR('Property','Value',...) creates a new PERCEPTRON_OR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before perceptron_or_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to perceptron_or_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help perceptron_or

% Last Modified by GUIDE v2.5 02-Jun-2021 18:39:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @perceptron_or_OpeningFcn, ...
                   'gui_OutputFcn',  @perceptron_or_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before perceptron_or is made visible.
function perceptron_or_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to perceptron_or (see VARARGIN)

% Choose default command line output for perceptron_or
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes perceptron_or wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = perceptron_or_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = str2double(get(handles.x1, 'string'));
x2 = str2double(get(handles.x2, 'string'));
bias = str2double(get(handles.bias, 'string'));
net = newp([0 1; 0 1],1);
net.IW{1,1} = [x1, x2];
net.b{1}=[bias];
p = [[1;1] [1;0] [0;1] [0;0]];
t = [1 1 1 0];

net = train(net,p,t);

bobot_optimal = net.IW{1,1};
bias_optimal = net.b{1};

set(handles.bobot_optimal, 'String', bobot_optimal);
set(handles.bias_optimal, 'String', bias_optimal);



function x1_Callback(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x1 as text
%        str2double(get(hObject,'String')) returns contents of x1 as a double


% --- Executes during object creation, after setting all properties.
function x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x2_Callback(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x2 as text
%        str2double(get(hObject,'String')) returns contents of x2 as a double


% --- Executes during object creation, after setting all properties.
function x2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bias_Callback(hObject, eventdata, handles)
% hObject    handle to bias (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bias as text
%        str2double(get(hObject,'String')) returns contents of bias as a double


% --- Executes during object creation, after setting all properties.
function bias_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bias (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
