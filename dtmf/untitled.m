function varargout = untitled(varargin)
%UNTITLED MATLAB code file for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to untitled_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      UNTITLED('CALLBACK') and UNTITLED('CALLBACK',hObject,...) call the
%      local function named CALLBACK in UNTITLED.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 12-Sep-2017 05:28:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;
handles.audio=[];
ah=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('bg.jpg');
imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah,'bottom');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in b1.
function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=697;
f2=1209;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'1'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);


% --- Executes on button press in b2.
function b2_Callback(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=697;
f2=1336;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'2'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in b3.
function b3_Callback(hObject, eventdata, handles)
% hObject    handle to b3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=697;
f2=1477;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'3'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in b4.
function b4_Callback(hObject, eventdata, handles)
% hObject    handle to b4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=770;
f2=1209;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'4'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in b5.
function b5_Callback(hObject, eventdata, handles)
% hObject    handle to b5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=770;
f2=1336;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'5'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in b6.
function b6_Callback(hObject, eventdata, handles)
% hObject    handle to b6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=770;
f2=1477;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'6'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in b7.
function b7_Callback(hObject, eventdata, handles)
% hObject    handle to b7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=852;
f2=1209;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'7'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in b8.
function b8_Callback(hObject, eventdata, handles)
% hObject    handle to b8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=852;
f2=1336;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'8'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in b9.
function b9_Callback(hObject, eventdata, handles)
% hObject    handle to b9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=852;
f2=1477;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'9'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in star.
function star_Callback(hObject, eventdata, handles)
% hObject    handle to star (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=941;
f2=1209;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'*'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in b0.
function b0_Callback(hObject, eventdata, handles)
% hObject    handle to b0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=941;
f2=1336;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'0'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
% plot(y)
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in hash.
function hash_Callback(hObject, eventdata, handles)
% hObject    handle to hash (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=[0:0.000125:.3];
fs=8000;
f1=941;
f2=1477;

y1=.5*sin(2*pi*f1*t);
y2=.5*sin(2*pi*f2*t);
y=y1+y2;
y(2402:4802)=0;
str=get(handles.text,'string');
str=[str,'#'];
handles.audio=[handles.audio,y];
set(handles.text,'string',str);
sound(y,fs)
guidata(hObject, handles);
% --- Executes on button press in record.
function record_Callback(hObject, eventdata, handles)
% hObject    handle to record (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text,'string');
fid=[str,'.wav'];
audiowrite(fid,handles.audio,8000);
msgbox('Successful!',fid,'help')


% --- Executes on button press in reset.
% function reset_Callback(hObject, eventdata, handles)
% % hObject    handle to reset (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% str='';
% set(handles.text,'string',str);
% handles.audio=''
% guidata(hObject, handles);


% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
% hObject    handle to play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.audio,8000);


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.audio=[];
str='';
set(handles.text,'string',str);
guidata(hObject, handles);


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.audio=handles.audio(1:end-4802);
str=get(handles.text,'string');
set(handles.text,'string',str(1:end-1));
guidata(hObject, handles);
