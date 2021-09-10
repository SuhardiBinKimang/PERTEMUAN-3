function varargout = Latihan_Membuat_GUI(varargin)
% LATIHAN_MEMBUAT_GUI MATLAB code for Latihan_Membuat_GUI.fig
%      LATIHAN_MEMBUAT_GUI, by itself, creates a new LATIHAN_MEMBUAT_GUI or raises the existing
%      singleton*.
%
%      H = LATIHAN_MEMBUAT_GUI returns the handle to a new LATIHAN_MEMBUAT_GUI or the handle to
%      the existing singleton*.
%
%      LATIHAN_MEMBUAT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LATIHAN_MEMBUAT_GUI.M with the given input arguments.
%
%      LATIHAN_MEMBUAT_GUI('Property','Value',...) creates a new LATIHAN_MEMBUAT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Latihan_Membuat_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Latihan_Membuat_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Latihan_Membuat_GUI

% Last Modified by GUIDE v2.5 11-Sep-2021 01:24:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Latihan_Membuat_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Latihan_Membuat_GUI_OutputFcn, ...
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


% --- Executes just before Latihan_Membuat_GUI is made visible.
function Latihan_Membuat_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Latihan_Membuat_GUI (see VARARGIN)

% Choose default command line output for Latihan_Membuat_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Latihan_Membuat_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Latihan_Membuat_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in START1.
function START1_Callback(hObject, eventdata, handles)
% hObject    handle to START1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    picture = imread ('IMG_9157.JPG');
    axes (handles.axes1)
    imshow(picture)

        %merubah gambar jadi keabuan
        picture_gray = (0.5*picture(:,:,1) + 0.120*picture(:,:,2) + 0.115*picture (:,:,3));
        axes (handles.axes2)
        imshow (picture_gray)
        
        
        %merubah gambar ke citra biner
        picture_biner = im2bw(picture_gray,0.5);
        axes (handles.axes3)
        imshow (picture_biner)
        
        
        %merubah brightness gambar
        picture_brightness = picture_gray + 30;
        axes (handles.axes4)
        imshow (picture_brightness)
        
        
        %merubah contras gambar
        picture_contras = picture_gray * 0.5;
        axes (handles.axes5)
        imshow (picture_contras)
        
        
        
% --- Executes on button press in EXIT.
function EXIT_Callback(hObject, eventdata, handles)
% hObject    handle to EXIT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete (handles.figure1)
