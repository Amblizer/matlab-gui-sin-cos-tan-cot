function varargout = triFunction(varargin)
% TRIFUNCTION MATLAB code for triFunction.fig
%      TRIFUNCTION, by itself, creates a new TRIFUNCTION or raises the existing
%      singleton*.
%
%      H = TRIFUNCTION returns the handle to a new TRIFUNCTION or the handle to
%      the existing singleton*.
%
%      TRIFUNCTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRIFUNCTION.M with the given input arguments.
%
%      TRIFUNCTION('Property','Value',...) creates a new TRIFUNCTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before triFunction_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to triFunction_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help triFunction

% Last Modified by GUIDE v2.5 27-May-2019 16:13:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @triFunction_OpeningFcn, ...
                   'gui_OutputFcn',  @triFunction_OutputFcn, ...
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


% --- Executes just before triFunction is made visible.
function triFunction_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to triFunction (see VARARGIN)

% Choose default command line output for triFunction
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes triFunction wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = triFunction_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editStart_Callback(hObject, eventdata, handles)
% hObject    handle to editStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editStart as text
%        str2double(get(hObject,'String')) returns contents of editStart as a double


% --- Executes during object creation, after setting all properties.
function editStart_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editEnd_Callback(hObject, eventdata, handles)
% hObject    handle to editEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editEnd as text
%        str2double(get(hObject,'String')) returns contents of editEnd as a double


% --- Executes during object creation, after setting all properties.
function editEnd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popFunc.
function popFunc_Callback(hObject, eventdata, handles)
% hObject    handle to popFunc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popFunc contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popFunc


% --- Executes during object creation, after setting all properties.
function popFunc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popFunc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnDraw.
function btnDraw_Callback(hObject, eventdata, handles)
% hObject    handle to btnDraw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% get x range from editbox
startVal = str2double(get(handles.editStart, 'string'));
endVal = str2num(get(handles.editEnd, 'string'));
endVal = str2num(get(handles.editEnd, 'string'));
xVal = [startVal:pi/100:endVal];

% get Trigonometric function from edit box
content = get(handles.popFunc, 'string');
func = content{get(handles.popFunc, 'value')};

% plotting
plot(handles.axes1, xVal, feval(func, xVal));

% --- Executes on button press in btnClear.
function btnClear_Callback(hObject, eventdata, handles)
% hObject    handle to btnClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% clear axes
cla(handles.axes1, 'reset');


% --- Executes on button press in btnExit.
function btnExit_Callback(hObject, eventdata, handles)
% hObject    handle to btnExit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% close gui
close all;



function editFunc_Callback(hObject, eventdata, handles)
% hObject    handle to editFunc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFunc as text
%        str2double(get(hObject,'String')) returns contents of editFunc as a double


% --- Executes during object creation, after setting all properties.
function editFunc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFunc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
