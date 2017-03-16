unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, sSkinProvider, sSkinManager,
  Vcl.ExtCtrls, acAlphaHints, Vcl.Menus, Vcl.ComCtrls, sTabControl,
  Vcl.StdCtrls, sComboBox, sButton, sMemo, sPageControl, sSplitter, sPanel,
  Vcl.ImgList, acAlphaImageList, VirtualTrees, sStatusBar, Vcl.AppEvnts, SynEdit, SynMemo, acSlider, sListBox;

type
  TfrmMain = class(TForm)
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    iml16x16Icons: TsAlphaImageList;
    mnuMain: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    N4: TMenuItem;
    N31: TMenuItem;
    N32BitWindowsEXEApplication1: TMenuItem;
    N3264Bit1: TMenuItem;
    N61: TMenuItem;
    N64BitWindowsEXEApplication1: TMenuItem;
    N1: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    N6: TMenuItem;
    N11: TMenuItem;
    N13: TMenuItem;
    N29: TMenuItem;
    Other1: TMenuItem;
    Open1: TMenuItem;
    O5: TMenuItem;
    mnuReopen: TMenuItem;
    N5: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    S8: TMenuItem;
    S9: TMenuItem;
    C1: TMenuItem;
    C2: TMenuItem;
    N2: TMenuItem;
    mnuExit: TMenuItem;
    Edit1: TMenuItem;
    Undo1: TMenuItem;
    Redo1: TMenuItem;
    N24: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    PasteSpecial1: TMenuItem;
    SelectAll1: TMenuItem;
    N35: TMenuItem;
    CommentLine1: TMenuItem;
    S10: TMenuItem;
    F1: TMenuItem;
    S11: TMenuItem;
    SearchPrevious1: TMenuItem;
    N38: TMenuItem;
    R10: TMenuItem;
    N3: TMenuItem;
    G1: TMenuItem;
    N36: TMenuItem;
    oggleBookmark1: TMenuItem;
    mnuSearchToggleBookmark: TMenuItem;
    Bookmark01: TMenuItem;
    Bookmark02: TMenuItem;
    Bookmark03: TMenuItem;
    Bookmark04: TMenuItem;
    Bookmark1: TMenuItem;
    Bookmark2: TMenuItem;
    Bookmark3: TMenuItem;
    Bookmark4: TMenuItem;
    Bookmark5: TMenuItem;
    G2: TMenuItem;
    mnuSearchGoToBookmark: TMenuItem;
    GotoBookmark01: TMenuItem;
    GotoBookmark1: TMenuItem;
    GotoBookmark2: TMenuItem;
    GotoBookmark3: TMenuItem;
    GotoBookmark4: TMenuItem;
    GotoBookmark5: TMenuItem;
    GotoBookmark6: TMenuItem;
    GotoBookmark7: TMenuItem;
    GotoBookmark8: TMenuItem;
    V1: TMenuItem;
    mnuWelcomePage: TMenuItem;
    P1: TMenuItem;
    A8: TMenuItem;
    B2: TMenuItem;
    N22: TMenuItem;
    ShowinExplorer2: TMenuItem;
    Copypath4: TMenuItem;
    DOSPromptHere4: TMenuItem;
    N40: TMenuItem;
    MakeactiveProject2: TMenuItem;
    N41: TMenuItem;
    A5: TMenuItem;
    N20: TMenuItem;
    A6: TMenuItem;
    A7: TMenuItem;
    N28: TMenuItem;
    Options1: TMenuItem;
    R1: TMenuItem;
    R2: TMenuItem;
    T1: TMenuItem;
    O1: TMenuItem;
    Help1: TMenuItem;
    V2: TMenuItem;
    N25: TMenuItem;
    Lesson0InstallingVisualMASM1: TMenuItem;
    Lesson1GettingStarted1: TMenuItem;
    Lesson2HelloWorldMSDOS1: TMenuItem;
    Lesson3HelloWorldWindows1: TMenuItem;
    A9: TMenuItem;
    N27: TMenuItem;
    A10: TMenuItem;
    N26: TMenuItem;
    R11: TMenuItem;
    A1: TMenuItem;
    N23: TMenuItem;
    About1: TMenuItem;
    panMain: TsPanel;
    sSplitter1: TsSplitter;
    sPageControl1: TsPageControl;
    pagBottom: TsPageControl;
    tabOutput: TsTabSheet;
    memOutput: TsMemo;
    tabCommandLine: TsTabSheet;
    sPanel1: TsPanel;
    memCommandLine: TsMemo;
    sPanel2: TsPanel;
    btnExecute: TsButton;
    cmbCommandLine: TsComboBox;
    panRight: TsPanel;
    pagRight: TsPageControl;
    tabProject: TsTabSheet;
    panProjectTop: TsPanel;
    sTabSheet4: TsTabSheet;
    sTabControl1: TsTabControl;
    popFile: TPopupMenu;
    popFileOpen: TMenuItem;
    D1: TMenuItem;
    N34: TMenuItem;
    Assemble1: TMenuItem;
    N8: TMenuItem;
    D2: TMenuItem;
    N32: TMenuItem;
    S1: TMenuItem;
    Copypath1: TMenuItem;
    DOSPromptHere2: TMenuItem;
    N19: TMenuItem;
    S6: TMenuItem;
    S7: TMenuItem;
    R8: TMenuItem;
    popGroup: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N39: TMenuItem;
    AssembleallProjects1: TMenuItem;
    BuildallProjects1: TMenuItem;
    N33: TMenuItem;
    ShowinExplorer1: TMenuItem;
    Copypath3: TMenuItem;
    DOSPromptHere3: TMenuItem;
    MenuItem6: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    R4: TMenuItem;
    popMemo: TPopupMenu;
    CommentUncommentLine1: TMenuItem;
    N37: TMenuItem;
    C4: TMenuItem;
    E1: TMenuItem;
    P5: TMenuItem;
    N30: TMenuItem;
    T2: TMenuItem;
    B1: TMenuItem;
    B3: TMenuItem;
    Bookmark11: TMenuItem;
    Bookmark12: TMenuItem;
    Bookmark13: TMenuItem;
    Bookmark14: TMenuItem;
    Bookmark15: TMenuItem;
    Bookmark16: TMenuItem;
    Bookmark17: TMenuItem;
    Bookmark18: TMenuItem;
    G4: TMenuItem;
    B5: TMenuItem;
    GotoBookmark02: TMenuItem;
    GotoBookmark03: TMenuItem;
    GotoBookmark04: TMenuItem;
    GotoBookmark05: TMenuItem;
    GotoBookmark06: TMenuItem;
    GotoBookmark07: TMenuItem;
    GotoBookmark08: TMenuItem;
    GotoBookmark09: TMenuItem;
    GotoBookmark010: TMenuItem;
    popProject: TPopupMenu;
    mnuProjectRun: TMenuItem;
    mnuProjectAssemble: TMenuItem;
    mnuProjectBuild: TMenuItem;
    N7: TMenuItem;
    S4: TMenuItem;
    Copypath2: TMenuItem;
    DOSPromptHere1: TMenuItem;
    N21: TMenuItem;
    MakeactiveProject1: TMenuItem;
    N9: TMenuItem;
    mnuProjectAdd: TMenuItem;
    mnuProjectAddNew: TMenuItem;
    A4: TMenuItem;
    extFile1: TMenuItem;
    N15: TMenuItem;
    O2: TMenuItem;
    N10: TMenuItem;
    R5: TMenuItem;
    R6: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    S5: TMenuItem;
    R7: TMenuItem;
    N18: TMenuItem;
    O3: TMenuItem;
    popTabs: TPopupMenu;
    popCloseTab: TMenuItem;
    sAlphaHints1: TsAlphaHints;
    splRight: TsSplitter;
    timerProjectTreeHint: TTimer;
    timerTabHint: TTimer;
    TreeImages: TImageList;
    AssemblyFile1: TMenuItem;
    NewGroup1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    panProjectExplorer: TsPanel;
    panFunctionsLabels: TsPanel;
    sSplitter2: TsSplitter;
    vstProject: TVirtualStringTree;
    popFunctions: TPopupMenu;
    GotoFunction1: TMenuItem;
    imglGutterGlyphs: TImageList;
    panFunctions: TsPanel;
    vstFunctions: TVirtualStringTree;
    panLabels: TsPanel;
    vstLabels: TVirtualStringTree;
    sSplitter3: TsSplitter;
    popLabels: TPopupMenu;
    GotoLabel1: TMenuItem;
    N42: TMenuItem;
    HighlightWords1: TMenuItem;
    N43: TMenuItem;
    Changeselectiontolowercase1: TMenuItem;
    ChangeselectiontoUPPERcase1: TMenuItem;
    ChangeselectiontoCamelCase1: TMenuItem;
    procedure vstProjectGetPopupMenu(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
      const P: TPoint; var AskParent: Boolean; var PopupMenu: TPopupMenu);
    procedure FormCreate(Sender: TObject);
    procedure vstProjectGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
      TextType: TVSTTextType; var CellText: string);
    procedure vstProjectGetImageIndex(Sender: TBaseVirtualTree; Node: PVirtualNode; Kind: TVTImageKind;
      Column: TColumnIndex; var Ghosted: Boolean; var ImageIndex: TImageIndex);
    procedure FormDestroy(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure sPageControl1Change(Sender: TObject);
    procedure sPageControl1CloseBtnClick(Sender: TComponent; TabIndex: Integer; var CanClose: Boolean;
      var Action: TacCloseAction);
    procedure vstProjectPaintText(Sender: TBaseVirtualTree; const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure FormShow(Sender: TObject);
    procedure vstProjectNodeDblClick(Sender: TBaseVirtualTree; const HitInfo: THitInfo);
    procedure mnuExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure popCloseTabClick(Sender: TObject);
    procedure sPageControl1TabMouseEnter(Sender: TComponent; TabIndex: Integer);
    procedure mnuSearchToggleBookmarkClick(Sender: TObject);
    procedure mnuSearchGoToBookmarkClick(Sender: TObject);
    procedure vstFunctionsGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
      TextType: TVSTTextType; var CellText: string);
    procedure vstFunctionsNodeDblClick(Sender: TBaseVirtualTree; const HitInfo: THitInfo);
    procedure vstFunctionsGetPopupMenu(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
      const P: TPoint; var AskParent: Boolean; var PopupMenu: TPopupMenu);
    procedure vstLabelsGetPopupMenu(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; const P: TPoint;
      var AskParent: Boolean; var PopupMenu: TPopupMenu);
    procedure vstLabelsGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
      TextType: TVSTTextType; var CellText: string);
    procedure vstLabelsNodeDblClick(Sender: TBaseVirtualTree; const HitInfo: THitInfo);
  private
    FOriginalFocusedSelectionColor: TColor;
    FSelectedFocusedSelectionColor: TColor;
    FCurrentProjectFileIntId: integer;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  uDM, uSharedGlobals, uGroup, uProject, uProjectFile;

const
  INFOTEXT_MODIFIED = 'Modified';
  KEYSTATE_INSERT = 0;
  KEYSTATE_INSERT_TEXT = 'Insert';
  KEYSTATE_OVERWRITE = 1;
  KEYSTATE_OVERWRITE_TEXT = 'Overwrite';

procedure TfrmMain.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
var
  InfoText: string;
  KeyState: TKeyboardState;
begin
//  if PanelSearch.Visible then
//    Editor.Margins.Bottom := 0
//  else
//    Editor.Margins.Bottom := 5;
//  if Editor.Modified then
//    InfoText := INFOTEXT_MODIFIED
//  else
//    InfoText := '';

//  GetKeyboardState(KeyState);
//  case KeyState[VK_INSERT] of
//    KEYSTATE_INSERT:
//      if StatusBar.Panels[1].Text <> KEYSTATE_INSERT_TEXT then
//       StatusBar.Panels[1].Text := KEYSTATE_INSERT_TEXT;
//    KEYSTATE_OVERWRITE:
//      if StatusBar.Panels[1].Text <> KEYSTATE_OVERWRITE_TEXT then
//        StatusBar.Panels[1].Text := KEYSTATE_OVERWRITE_TEXT;
//  end;
//
//  if StatusBar.Panels[2].Text <> InfoText then
//    StatusBar.Panels[2].Text := InfoText;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.ShuttingDown := true;
  sAlphaHints1.HideHint;
  dm.CheckIfChangesHaveBeenMadeAndPromptIfNecessary;
  dm.VisualMASMOptions.SaveFile;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  vstProject.NodeDataSize := SizeOf(TProjectData);
  vstFunctions.NodeDataSize := SizeOf(TFunctionData);
  vstLabels.NodeDataSize := SizeOf(TLabelData);
  FOriginalFocusedSelectionColor := vstProject.Colors.FocusedSelectionColor;
  FSelectedFocusedSelectionColor := $00008CFF;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  dm.VisualMASMOptions.SaveFile;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  vstProject.Colors.TreeLineColor := frmMain.sSkinManager1.GetGlobalFontColor;
  vstFunctions.Colors.TreeLineColor := frmMain.sSkinManager1.GetGlobalFontColor;
  vstLabels.Colors.TreeLineColor := frmMain.sSkinManager1.GetGlobalFontColor;
  caption := 'Visual MASM '+VISUALMASM_VERSION_DISPLAY;
end;

procedure TfrmMain.mnuExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.mnuSearchGoToBookmarkClick(Sender: TObject);
begin
  dm.GoToBookMark(TMenuItem(Sender).Tag);
end;

procedure TfrmMain.mnuSearchToggleBookmarkClick(Sender: TObject);
begin
  dm.ToggleBookMark(TMenuItem(Sender).Tag);
end;

procedure TfrmMain.popCloseTabClick(Sender: TObject);
begin
  dm.CloseProjectFile(FCurrentProjectFileIntId);
end;

procedure TfrmMain.sPageControl1Change(Sender: TObject);
begin
  dm.UpdateUI(true);
end;

procedure TfrmMain.sPageControl1CloseBtnClick(Sender: TComponent; TabIndex: Integer; var CanClose: Boolean;
  var Action: TacCloseAction);
begin
  dm.CloseDocument(TabIndex, FCurrentProjectFileIntId);
end;

procedure TfrmMain.sPageControl1TabMouseEnter(Sender: TComponent; TabIndex: Integer);
begin
  if TabIndex < 0 then begin
    FCurrentProjectFileIntId := sPageControl1.Pages[sPageControl1.ActivePage.TabIndex].Tag;
  end else begin
    FCurrentProjectFileIntId := sPageControl1.Pages[TabIndex].Tag;
  end;
end;

procedure TfrmMain.vstProjectGetImageIndex(Sender: TBaseVirtualTree; Node: PVirtualNode; Kind: TVTImageKind;
  Column: TColumnIndex; var Ghosted: Boolean; var ImageIndex: TImageIndex);
var
  level: integer;
  data: PProjectData;
  project: TProject;
  projectFile: TProjectFile;
begin
  data:=vstProject.GetNodeData(Node);
  if (Kind in [ikNormal, ikSelected]) and (Column = 0) then
  begin
    level := Sender.GetNodeLevel(Node);
    if level = 0 then
      ImageIndex := 9;

    if level = 1 then
    begin
      if data.ProjectId = '' then exit;
      project:=dm.Group[data.ProjectId];
      if project <> nil then
        case project.ProjectType of
          ptDos16COM: ImageIndex := 0;
          ptDos16EXE: ImageIndex := 0;
          ptWin16: ImageIndex := 1;
          ptWin16DLL: ImageIndex := 2;
          ptWin32: ImageIndex := 1;
          ptWin32DLL: ImageIndex := 2;
          ptWin64: ImageIndex := 1;
          ptWin64DLL: ImageIndex := 2;
        end;
    end;

    if level = 2 then
    begin
      if (data.ProjectId = '') or (data.FileId = '') then exit;
      project:=dm.Group[data.ProjectId];
      if project <> nil then
      begin
        projectFile:=dm.Group[data.ProjectId].ProjectFile[data.FileId];
        if projectFile <> nil then
          case projectFile.ProjectFileType of
            pftASM: ImageIndex := 4;
            pftRC: ImageIndex := 5;
            pftTXT: ImageIndex := 6;
            pftDLG: ImageIndex := 1;
            pftBAT: ImageIndex := 8;
          end;
      end;
    end;
  end;
end;

procedure TfrmMain.vstProjectGetPopupMenu(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  const P: TPoint; var AskParent: Boolean; var PopupMenu: TPopupMenu);
var
  level: integer;
  menuItem: TMenuItem;
  data: PProjectData;
begin
  sAlphaHints1.HideHint;
  timerProjectTreeHint.Enabled := false;
  data:=vstProject.GetNodeData(Node);
  level := Sender.GetNodeLevel(Node);
  dm.UpdateUI(false);
  case Column of
    -1, 0:
      begin
        if level = 0 then
          PopupMenu := popGroup;

        if level = 1 then
        begin
          //dm.Group.SelectedProject := dm.Group[data.ProjectId];
//          dm.SelectedProjectInProjectExplorer := dm.Group[data.ProjectId];
          PopupMenu := popProject;
          mnuProjectAddNew.Clear;

          sSkinManager1.SkinableMenus.HookPopupMenu(popProject,true);
          //sSkinManager1.SkinableMenus.HookItem(menuItem,true);

          case dm.Group.ProjectById[data.ProjectId].ProjectType of
            ptDos16COM, ptDos16EXE:
              begin
                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Action := dm.actAddNewAssemblyFile;
                mnuProjectAddNew.Add(menuItem);

                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Action := dm.actAddNewTextFile;
                mnuProjectAddNew.Add(menuItem);

                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Action := dm.actAddNewBatchFile;
                mnuProjectAddNew.Add(menuItem);

                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Caption := '-';
                mnuProjectAddNew.Add(menuItem);
              end;
            ptWin16:
              begin
                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Action := dm.actAddNewAssemblyFile;
                mnuProjectAddNew.Add(menuItem);

                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Action := dm.actAddNewTextFile;
                mnuProjectAddNew.Add(menuItem);

                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Action := dm.actAddNewBatchFile;
                mnuProjectAddNew.Add(menuItem);

                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Caption := '-';
                mnuProjectAddNew.Add(menuItem);
              end;
            ptWin32, ptWin32DLL, ptWin64, ptWin64DLL:
              begin
                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Action := dm.actAddNewAssemblyFile;
                mnuProjectAddNew.Add(menuItem);

                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Action := dm.actAddNewTextFile;
                mnuProjectAddNew.Add(menuItem);

                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Action := dm.actAddNewBatchFile;
                mnuProjectAddNew.Add(menuItem);

                menuItem := TMenuItem.Create(mnuProjectAddNew);
                menuItem.Caption := '-';
                mnuProjectAddNew.Add(menuItem);
              end;
          end;

          menuItem := TMenuItem.Create(mnuProjectAddNew);
          menuItem.Action := dm.actNewOther;
          mnuProjectAddNew.Add(menuItem);

          sSkinManager1.SkinableMenus.HookPopupMenu(popProject,true);
        end;

        if level = 2 then
        begin
          PopupMenu := popFile;
//          FProjectFileSelectedInProjectExplorer := dm.Group.ProjectById[data.ProjectId][data.FileId];
//          dm.SelectedProjectFileInProjectExplorer := FProjectFileSelectedInProjectExplorer;
        end;
      end;
  else
    PopupMenu := nil;
  end;
end;

procedure TfrmMain.vstProjectGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType; var CellText: string);
var
  Data: PProjectData;
  projectFile: TProjectFile;
begin
  Data := Sender.GetNodeData(Node);
    case Column of
      0:   // Name column
        if Node.Parent = Sender.RootNode then
        begin
          // root nodes
          if (Node.Index = 0) and (dm.Group <> nil) then
          begin
            CellText := dm.Group.Name;
            if dm.Group.Modified then
              CellText := MODIFIED_CHAR+CellText;
          end else
            CellText := MODIFIED_CHAR+DEFAULT_PROJECTGROUP_NAME;
        end else begin
          case Sender.GetNodeLevel(Node) of
            1:
              begin
                if (dm.Group = nil) or (data.ProjectId = '') then exit;
                if dm.Group[data.ProjectId] <> nil then
                begin
                  CellText := dm.Group[data.ProjectId].Name;
                  if dm.Group[data.ProjectId].Modified then
                    CellText := MODIFIED_CHAR+CellText;
                end;
              end;
            2:
              begin
                if (dm.Group = nil) or (data.ProjectId = '') or (data.FileId = '') then exit;
                if dm.Group[data.ProjectId] <> nil then
                begin
                  projectFile:=dm.Group[data.ProjectId].ProjectFile[data.FileId];
                  if projectFile <> nil then
                  begin
                    CellText := projectFile.Name;
                    if projectFile.Modified then
                      CellText := MODIFIED_CHAR+CellText;
                  end;
                end;
              end;
          end;
        end;
      1:  // Size column
        begin
          if (dm.Group = nil) or (data.ProjectId = '') or (data.FileId = '') then exit;
          if dm.Group[data.ProjectId] <> nil then
          begin
            projectFile:=dm.Group[data.ProjectId].ProjectFile[data.FileId];
            if projectFile <> nil then
              CellText := FormatByteSize(projectFile.SizeInBytes);
          end;
        end;
    end;
end;

procedure TfrmMain.vstFunctionsGetPopupMenu(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  const P: TPoint; var AskParent: Boolean; var PopupMenu: TPopupMenu);
var
  level: integer;
  menuItem: TMenuItem;
  data: PFunctionData;
begin
  sAlphaHints1.HideHint;
  data := vstFunctions.GetNodeData(Node);
  level := Sender.GetNodeLevel(Node);
//  dm.UpdateUI(false);
  PopupMenu := popFunctions;
//  case Column of
//    -1, 0:
//      begin
//        if level = 0 then
//          PopupMenu := popGroup;
//
//        if level = 1 then
//        begin
//          PopupMenu := popProject;
//        end;
//
//        if level = 2 then
//        begin
//          PopupMenu := popFile;
//        end;
//      end;
//  else
//    PopupMenu := nil;
//  end;
end;

procedure TfrmMain.vstFunctionsGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType; var CellText: string);
var
  Data: PFunctionData;
  projectFile: TProjectFile;
begin
  Data := Sender.GetNodeData(Node);
  if (Node.Index < 0) or (Node.Index >= dm.Functions.Count) then exit;
  case Column of
    0:   // Name column
      begin
        CellText := dm.Functions.Items[Node.Index].Name;
      end;
    1:  // L:ne column
      begin
        CellText := inttostr(dm.Functions.Items[Node.Index].Line);
      end;
  end;
end;

procedure TfrmMain.vstFunctionsNodeDblClick(Sender: TBaseVirtualTree; const HitInfo: THitInfo);
var
  data: PFunctionData;
begin
  data := Sender.GetNodeData(HitInfo.HitNode);
  dm.GoToFunctionOnLine(data.Line);
end;

procedure TfrmMain.vstLabelsGetPopupMenu(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  const P: TPoint; var AskParent: Boolean; var PopupMenu: TPopupMenu);
begin
  PopupMenu := popLabels;
end;

procedure TfrmMain.vstLabelsGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType; var CellText: string);
var
  Data: PLabelData;
  projectFile: TProjectFile;
begin
  Data := Sender.GetNodeData(Node);
  if (Node.Index < 0) or (Node.Index >= dm.Labels.Count) then exit;
  case Column of
    0:   // Name column
      begin
        CellText := dm.Labels.Items[Node.Index].Name;
      end;
    1:  // L:ne column
      begin
        CellText := inttostr(dm.Labels.Items[Node.Index].Line);
      end;
  end;
end;

procedure TfrmMain.vstLabelsNodeDblClick(Sender: TBaseVirtualTree; const HitInfo: THitInfo);
var
  data: PLabelData;
begin
  data := Sender.GetNodeData(HitInfo.HitNode);
  dm.GoToFunctionOnLine(data.Line);
end;

procedure TfrmMain.vstProjectNodeDblClick(Sender: TBaseVirtualTree; const HitInfo: THitInfo);
var
  data: PProjectData;
begin
  data := Sender.GetNodeData(HitInfo.HitNode);
  case HitInfo.HitColumn of
    0:   // Name column
      case Sender.GetNodeLevel(HitInfo.HitNode) of
        1:
          begin
            dm.Group.ActiveProject := dm.Group[data.ProjectId];
            dm.Group.Modified := true;
            tabProject.Caption := dm.Group.ActiveProject.Name;
          end;
        2:
          begin
            dm.LastTabIndex := frmMain.sPageControl1.ActivePageIndex;
            dm.Group.ActiveProject := dm.Group[data.ProjectId];
            dm.Group.ActiveProject.ActiveFile := dm.Group.ActiveProject.ProjectFile[data.FileId];
            dm.FocusPage(dm.Group.ActiveProject.ActiveFile);
          end;
      end;
  end;
end;

procedure TfrmMain.vstProjectPaintText(Sender: TBaseVirtualTree; const TargetCanvas: TCanvas; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType);
var
  data: PProjectData;
begin
  data:=vstProject.GetNodeData(Node);
  case Column of
    0:   // Name column
      case Sender.GetNodeLevel(Node) of
        1:
          begin
//            //vstProject.Colors.FocusedSelectionColor := FOriginalFocusedSelectionColor;
            if dm.Group.ActiveProject = nil then exit;
            if dm.Group.ActiveProject.Id = data.ProjectId then
            begin
              if vstProject.Selected[Node] then
              begin
                TargetCanvas.Font.Color := $000061B0;
//                //vstProject.Colors.FocusedSelectionColor := FSelectedFocusedSelectionColor;
              end else begin
                TargetCanvas.Font.Color := $00008CFF;
              end;
            end;
              //TargetCanvas.Font.Style := [fsBold];
            //TargetCanvas.Font.Style := [];
          end;
        2:
          begin
            //fileName := dm.Group[data.ProjectId].GetProjectFileById(data.FileId).Name;
            //dm.FocusPage(dm.Group[data.ProjectId].GetProjectFileById(data.FileId));
          end;
      end;
  end;
end;

end.
