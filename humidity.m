function varargout = EIEN_2015270463(varargin)
% EIEN_2015270463 MATLAB code for EIEN_2015270463.fig
%      EIEN_2015270463, by itself, creates a new EIEN_2015270463 or raises the existing
%      singleton*.
%
%      H = EIEN_2015270463 returns the handle to a new EIEN_2015270463 or the handle to
%      the existing singleton*.
%
%      EIEN_2015270463('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EIEN_2015270463.M with the given input arguments.
%
%      EIEN_2015270463('Property','Value',...) creates a new EIEN_2015270463 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EIEN_2015270463_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EIEN_2015270463_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EIEN_2015270463

% Last Modified by GUIDE v2.5 15-May-2018 17:10:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EIEN_2015270463_OpeningFcn, ...
                   'gui_OutputFcn',  @EIEN_2015270463_OutputFcn, ...
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


% --- Executes just before EIEN_2015270463 is made visible.
function EIEN_2015270463_OpeningFcn(hObject, eventdata, handles, varargin)
handles.data=0:0.1:4*pi;
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EIEN_2015270463 (see VARARGIN)

% Choose default command line output for EIEN_2015270463
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EIEN_2015270463 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EIEN_2015270463_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Edit_Callback(hObject, eventdata, handles)
handles.Editdata=str2double(get(hObject,'string'));
guidata(hObject,handles) 
% hObject    handle to Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Edit as text
%        str2double(get(hObject,'String')) returns contents of Edit as a double


% --- Executes during object creation, after setting all properties.
function Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in data_popup.
function data_popup_Callback(hObject, eventdata, handles)
val=get(hObject,'value');
switch val
    case 1
        X=handles.data;
         handles.ydata=sin(X);  %sin함수 만들기
    case 2
        X=handles.data;
         handles.ydata=cos(X);  %cos함수 만들기
    case 3
        X=handles.data;
         handles.ydata=tan(X); %tan함수 만들기
    case 4
        X=handles.data;
         handles.ydata=log(X); %log함수 만들기
end
guidata(hObject,handles)
% hObject    handle to data_popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns data_popup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from data_popup


% --- Executes during object creation, after setting all properties.
function data_popup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to data_popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
X=handles.data*handles.Editdata;
Y=handles.ydata;
plot(X,Y);  %Edit값을 받아 함수 그래프 보여주기
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in delete.
function delete_Callback(hObject, eventdata, handles)
newplot;
% hObject    handle to delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
