function varargout = LuasVolume(varargin)
% LUASVOLUME MATLAB code for LuasVolume.fig
%      LUASVOLUME, by itself, creates a new LUASVOLUME or raises the existing
%      singleton*.
%
%      H = LUASVOLUME returns the handle to a new LUASVOLUME or the handle to
%      the existing singleton*.
%
%      LUASVOLUME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LUASVOLUME.M with the given input arguments.
%
%      LUASVOLUME('Property','Value',...) creates a new LUASVOLUME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LuasVolume_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LuasVolume_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LuasVolume

% Last Modified by GUIDE v2.5 07-Apr-2021 22:02:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LuasVolume_OpeningFcn, ...
                   'gui_OutputFcn',  @LuasVolume_OutputFcn, ...
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


% --- Executes just before LuasVolume is made visible.
function LuasVolume_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LuasVolume (see VARARGIN)

% Choose default command line output for LuasVolume
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LuasVolume wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LuasVolume_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input1_Callback(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input1 as text
%        str2double(get(hObject,'String')) returns contents of input1 as a double


% --- Executes during object creation, after setting all properties.
function input1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input2_Callback(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input2 as text
%        str2double(get(hObject,'String')) returns contents of input2 as a double


% --- Executes during object creation, after setting all properties.
function input2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input3_Callback(hObject, eventdata, handles)
% hObject    handle to input3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input3 as text
%        str2double(get(hObject,'String')) returns contents of input3 as a double


% --- Executes during object creation, after setting all properties.
function input3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input1=get(handles.input1,'string');
input2=get(handles.input2,'string');
input3=get(handles.input3,'string');
input1=str2num(input1);
input2=str2num(input2);
input3=str2num(input3);
hasillp=2*input1*input2+2*input1*input3+2*input2*input3;
hasilvl=input1*input2*input3;
set(handles.hasil1,'string',(hasillp));
set(handles.hasil2,'string',(hasilvl));



function hasil1_Callback(hObject, eventdata, handles)
% hObject    handle to hasil1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil1 as text
%        str2double(get(hObject,'String')) returns contents of hasil1 as a double


% --- Executes during object creation, after setting all properties.
function hasil1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil2_Callback(hObject, eventdata, handles)
% hObject    handle to hasil2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil2 as text
%        str2double(get(hObject,'String')) returns contents of hasil2 as a double


% --- Executes during object creation, after setting all properties.
function hasil2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
