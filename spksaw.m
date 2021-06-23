function varargout = guiSAW(varargin)
% GUISAW MATLAB code for guiSAW.fig
%      GUISAW, by itself, creates a new GUISAW or raises the existing
%      singleton*.
%
%      H = GUISAW returns the handle to a new GUISAW or the handle to
%      the existing singleton*.
%
%      GUISAW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUISAW.M with the given input arguments.
%
%      GUISAW('Property','Value',...) creates a new GUISAW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiSAW_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiSAW_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiSAW

% Last Modified by GUIDE v2.5 23-Jun-2021 22:37:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guiSAW_OpeningFcn, ...
                   'gui_OutputFcn',  @guiSAW_OutputFcn, ...
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


% --- Executes just before guiSAW is made visible.
function guiSAW_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiSAW (see VARARGIN)

% Choose default command line output for guiSAW
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiSAW wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiSAW_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x=[32,2,3;500,2,1;400,3,2;10,1,2;90,3,2];
k=[0,1,1];
w=[0.20,0.40,0.40];
[m, n]=size (x); 
R=zeros (m,n); 
Y=zeros (m,n); 
for j=1:n
 if k(j)==1
  R(:,j)=x(:,j)./max(x(:,j));
 else
  R(:,j)=min(x(:,j))./x(:,j);
 end
end

 V(1)= sum(w.*R(1,:))
v1 = V(1);
 V(2)= sum(w.*R(2,:))
v2 = V(2);
 V(3)= sum(w.*R(3,:))
v3 = V(3);
 V(4)= sum(w.*R(4,:))
v4 = V(4);
 V(5)= sum(w.*R(5,:))
v5 = V(5);

set(handles.hasil1, 'String', v1);
set(handles.hasil2, 'String', v2);
set(handles.hasil3, 'String', v3);
set(handles.hasil4, 'String', v4);
set(handles.hasil5, 'String', v5);
