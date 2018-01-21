unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, Grids, StdCtrls, LCLType, LazLogger, TAGraph, TATools, TASeries,
  TAChartUtils, IntfGraphics, GraphType, PairSplitter, Menus,
  Unit1, Unit2, Globals;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCardTypes: TButton;
    btnDrawStartHand: TButton;
    btnFactions: TButton;
    btnNewCard: TButton;
    btnNewCard1: TButton;
    btnSaveCard: TButton;
    btnSaveCard1: TButton;
    btnClearFilters: TButton;
    btnProducts: TButton;
    cbxAttack1: TComboBox;
    cbxCardInSet: TComboBox;
    cbxCardSet1: TComboBox;
    cbxCardType: TComboBox;
    cbxCardType1: TComboBox;
    cbxCost: TComboBox;
    cbxDefense1: TComboBox;
    cbxEOD: TComboBox;
    cbxET: TComboBox;
    cbxEUD: TComboBox;
    cbxFaction: TComboBox;
    cbxFilterTrait: TComboBox;
    cbxFilterSide: TComboBox;
    cbxForcePips: TComboBox;
    cbxHealth: TComboBox;
    cbxHealth1: TComboBox;
    cbxOD: TComboBox;
    cbxProduct: TComboBox;
    cbxResources: TComboBox;
    cbxSide: TComboBox;
    cbxT: TComboBox;
    cbxTrait1: TComboBox;
    cbxTrait2: TComboBox;
    cbxTrait3: TComboBox;
    cbxTrait4: TComboBox;
    cbxTrait5: TComboBox;
    cbxTrait6: TComboBox;
    cbxTrait7: TComboBox;
    cbxTrait8: TComboBox;
    cbxUD: TComboBox;
    cbxWillpower1: TComboBox;
    chartCardTypes: TChart;
    chartCardTypesPieSeries1: TPieSeries;
    chartCost: TChart;
    chartCostLineSeries1: TLineSeries;
    chartFactions: TChart;
    chartFactionsPieSeries1: TPieSeries;
    chkUnique: TCheckBox;
    edtCardNumber: TEdit;
    edtCardTitle: TEdit;
    edtCardTitle1: TEdit;
    edtSetNumber: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    grpTraits: TGroupBox;
    grpTraits1: TGroupBox;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image16: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    cardImage: TImage;
    imgNewCard: TImage;
    imgNewCard1: TImage;
    imgRes1: TImage;
    imgRes2: TImage;
    imgRes3: TImage;
    imgSetup1: TImage;
    imgObj4: TImage;
    imgSetup2: TImage;
    imgSetup3: TImage;
    imgSetup4: TImage;
    imgSetup5: TImage;
    imgSetup6: TImage;
    imgObj1: TImage;
    imgObj2: TImage;
    imgObj3: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblCard1: TLabel;
    lblObj4: TLabel;
    lblCard2: TLabel;
    lblCard3: TLabel;
    lblCard4: TLabel;
    lblCard5: TLabel;
    lblCard6: TLabel;
    lblObj1: TLabel;
    lblObj2: TLabel;
    lblObj3: TLabel;
    lblCardInSet: TLabel;
    lblCardNumber: TLabel;
    lblEOD: TLabel;
    lblET: TLabel;
    lblEUD: TLabel;
    lblFileName: TLabel;
    lblFileName1: TLabel;
    lblForceIcons: TLabel;
    lblNeutralResources: TLabel;
    lblOD: TLabel;
    lblSetNumber: TLabel;
    lblSideResources1: TLabel;
    lblSideResources2: TLabel;
    lblSideResources3: TLabel;
    lblT: TLabel;
    lblUD: TLabel;
    lbxEnhancements: TListBox;
    lbxEvents: TListBox;
    lbxFaction: TListBox;
    lbxFateCards: TListBox;
    lbxMissions: TListBox;
    lbxObjectives: TListBox;
    lbxUnits: TListBox;
    MainMenu1: TMainMenu;
    mniSaveLackey: TMenuItem;
    mniLoadLackey: TMenuItem;
    mniOctgnDecks: TMenuItem;
    mniLackeyDecks: TMenuItem;
    mniSaveOctgn: TMenuItem;
    mniLoadOctgn: TMenuItem;
    mmoAbilityText: TMemo;
    mniNewDeck: TMenuItem;
    mniExit: TMenuItem;
    mniFile: TMenuItem;
    mniLoadDeck: TMenuItem;
    mniSaveDeck: TMenuItem;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    PairSplitter1: TPairSplitter;
    PairSplitter2: TPairSplitter;
    PairSplitterSide1: TPairSplitterSide;
    PairSplitterSide2: TPairSplitterSide;
    PairSplitterSide3: TPairSplitterSide;
    PairSplitterSide4: TPairSplitterSide;
    Panel1: TPanel;
    Panel10: TPanel;
    pnlCommandDeck: TPanel;
    Panel11: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    pnlCardImage: TPanel;
    pnlCardImage1: TPanel;
    pnlObjectiveDeck: TPanel;
    pnlDrawSetup: TPanel;
    radObjective: TRadioButton;
    radCommand: TRadioButton;
    SaveDialog1: TSaveDialog;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    sgdCards: TStringGrid;
    tabAddCards: TTabSheet;
    tabDeckStats: TTabSheet;
    tabEditor: TTabSheet;
    btnJedi: TToggleBox;
    btnEnhancement: TToggleBox;
    btnEvent: TToggleBox;
    btnFate: TToggleBox;
    btnMission: TToggleBox;
    btnRebels: TToggleBox;
    btnSmugglers: TToggleBox;
    btnSith: TToggleBox;
    btnNavy: TToggleBox;
    btnScum: TToggleBox;
    btnNeutral: TToggleBox;
    btnObjective: TToggleBox;
    btnUnit: TToggleBox;
    procedure btnCardTypesClick(Sender: TObject);
    procedure btnClearFiltersClick(Sender: TObject);
    procedure btnDrawStartHandClick(Sender: TObject);
    procedure btnNewCardClick(Sender: TObject);
    procedure btnProductsClick(Sender: TObject);
    procedure btnSaveCardClick(Sender: TObject);
    procedure btnFactionsClick(Sender: TObject);
    procedure cbxCardTypeChange(Sender: TObject);
    procedure cbxTrait1Exit(Sender: TObject);
    procedure cbxTrait2Exit(Sender: TObject);
    procedure cbxTrait3Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton);
    procedure mniLoadLackeyClick(Sender: TObject);
    procedure mniLoadOctgnClick(Sender: TObject);
    procedure mniNewDeckClick(Sender: TObject);
    procedure mniExitClick(Sender: TObject);
    procedure mniLoadDeckClick(Sender: TObject);
    procedure mniSaveDeckClick(Sender: TObject);
    procedure mniSaveLackeyClick(Sender: TObject);
    procedure mniSaveOctgnClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure radObjectiveClick(Sender: TObject);
    procedure radCommandClick(Sender: TObject);
    procedure sgdCardsClick(Sender: TObject);
    procedure sgdCardsDblClick(Sender: TObject);
    procedure BucketClick(Sender: TObject);
    procedure BucketDblClick(Sender: TObject);
    procedure sgdCardsMouseDown(Sender: TObject; Button: TMouseButton);
    procedure sgdCardsSelection(Sender: TObject);
    procedure BucketExit(Sender: TObject);
    procedure FilterClick(Sender: TObject);
  private
    cardSets, cardTypes, cardTraits, factions: TStringlist;
    procedure LoadInData;
    procedure ClearTheCard;
    procedure SetStringGrid;
    procedure AddCardToBucket(var lBox: TListBox; s, osNum, cardNum: String);
    procedure DelSetFromBuckets(setNum: String);
    procedure ResizeBucket(var lBox: TListBox);
    procedure RefreshBuckets;
    procedure SetTheObjective(s: String);
    function WriteLackeyXML(line: String; isObjective: Boolean = false): String;
    procedure SetBuckets;
  public
    { public declarations }
  protected
    function ScrubStr(s: String): String;
  end;

  TCard = record
    cardNumber:    string;
    product:       string;
    cardTitle:     string;
    unique:        string;
    setNumber:     string;
    cardInSet:     string;
    faction:       string;
    side:          string;
    cardType:      string;
    cost:          string;
    forcePips:     string;
    resources:     string;
    health:        string;
    combatIcons:   string;
    traits:        string;
    abilityText:   string;
    cardPic:       string;
  end;

const
  clREBELS     = $002D1EFF;
  clSMUGGLERS  = $0042E8FF;
  clJEDI       = $007FA3C1;
  clNAVY       = $00808080;
  clSCUM       = $00227F4A;
  clSITH       = $003E0612;
  clNEUTRAL    = $00FFF0D8;
  clSLOTSELECT = $00FFDD56;

var
  Form1: TForm1;
  setView: TForm2;
  ProdSelectView: TfrmProductsSelect;
  cardDB: array of TCard;
  recordCount: integer;
  bucket, selectedFaction, selectedSet: String;
  formerBucket: TListBox;
  drawDeck, objDeck, reusedCards: array of String;
  arrOctgn: array of array[0..1] of String;
  arrCycleLookup: array of array[0..1] of String;
  selectedTraits: array of array[0..1] of String;
  addedCards, isDeckLoading: Boolean;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  addedCards:=False;
  isDeckLoading:=False;
  formerBucket := TListBox.Create(nil);
  recordCount := 0;
  LoadInData;
  sgdCardsClick(Sender);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  formerBucket.Free;
end;

procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of String);
var
  aPic: TPicture;
  aFile: string;
  dbRow: integer;

  function GetShortFileName(s: string): string;
  var
    i: integer;
  begin
    result := '';
    for i:=Length(s) downto 0 do
      if s[i] = '\' then break;
    result := Copy(s, i+1, Length(s)-i);
  end;

begin
  aFile := FileNames[0];
  aPic := TPicture.Create;
  try
    try
      aPic.LoadFromFile(aFile);
      if PageControl1.ActivePage = tabAddCards then
      begin
        imgNewCard.Picture := aPic;
        imgNewCard.Visible := true;
        lblFileName.Caption := GetShortFileName(aFile)
      end
      else
      begin
        cardImage.Picture := aPic;
        cardImage.Visible := true;
        dbRow := sgdCards.Row - 1;
        cardDB[dbRow].cardPic := GetShortFileName(aFile);
        addedCards := True;
      end;
    except
      imgNewCard.Visible:=false;
    end;
  finally
    aPic.Free;
  end;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton);
begin
  if Button = mbRight then
    tabAddCards.TabVisible := not tabAddCards.TabVisible;
end;

procedure TForm1.mniLoadLackeyClick(Sender: TObject);
var
  f: TextFile;
  oName, faction, tmpStr: String;
  start, stop, i: Integer;
begin
  OpenDialog1.InitialDir := '\Decks';
  OpenDialog1.Filter := 'Lackey files|*.dek';
  if OpenDialog1.Execute then
  begin
    isDeckLoading := True;
    try
      RefreshBuckets;
      AssignFile(f, OpenDialog1.FileName);
      Reset(f);
      Readln(f, tmpStr);
      while not EoF(f) do
      begin
        if Pos('name="Objectives">', tmpStr) > 0 then
        begin
          Readln(f, tmpStr);
          while tmpStr <> '</superzone>' do
          begin
            start := Pos('ObjBack">', tmpStr)+9;
            stop := Pos('</name>', tmpStr);
            oName := Copy(tmpStr, start, stop-start);
            for i:=0 to Length(cardDB)-1 do
              if (cardDB[i].cardTitle = oName) and (cardDB[i].cardType = 'Objective') then
              begin
                 sgdCards.Row := i+1;
                 sgdCardsDblClick(Self);
              end;
            Readln(f, tmpStr);
          end;
        end
        else
        if Pos('name="Force">', tmpStr) > 0 then
        begin
          Readln(f, tmpStr);
          tmpStr := Copy(tmpStr, 17, 99);
          start := Pos('">', tmpStr) + 2;
          stop := Pos('</name>', tmpStr);
          faction := Copy(tmpStr, start, stop-start);
          for i:=0 to Length(cardDB)-1 do
            if (cardDB[i].cardTitle = faction) and (cardDB[i].cardType = 'Faction') then
            begin
              sgdCards.Row := i+1;
              sgdCardsDblClick(Self);
            end;
        end;
        Readln(f, tmpStr);
      end;
    finally
      CloseFile(f);
      isDeckLoading := False;
    end;
    PageControl1Change(Sender);
  end;
end;

procedure TForm1.mniLoadOctgnClick(Sender: TObject);
var
  f: TextFile;
  tmpStr, oName: String;
  i, j, numSets, start, stop: Integer;
begin
  OpenDialog1.InitialDir := '\Decks';
  OpenDialog1.Filter := 'Octgn files|*.o8d';
  if OpenDialog1.Execute then
  begin
    try
      isDeckLoading := True;
      RefreshBuckets;
      AssignFile(f, OpenDialog1.FileName);
      Reset(f);
      while not EoF(f) do
      begin
        Readln(f, tmpStr);
        if Pos('"Affiliation"', tmpStr) > 0 then
        begin
          Readln(f, tmpStr);
          tmpStr:=Copy(tmpStr, (Pos('>',tmpStr)+1),
                       (Pos('</',tmpStr)-(Pos('>',tmpStr)+1)));
          lbxFaction.Items[0] := 'Faction - ' + tmpStr;
        end
        else
        if Pos('Objective Deck', tmpStr) > 0 then
        begin
          Readln(f, tmpStr);
          repeat
            numSets:=StrToInt(Copy(tmpStr, (Pos('qty="',tmpStr)+5), 1));
            start := Pos('">', tmpStr)+2;
            stop := Pos('</card>', tmpStr);
            oName := Copy(tmpStr, start, stop-start);
            for i:=0 to Length(cardDB)-1 do
              if (cardDB[i].cardTitle = oName) and (cardDB[i].cardType = 'Objective') then
              begin
                 sgdCards.Row := i+1;
                 for j:=1 to numSets do
                   sgdCardsDblClick(Self);
              end;
            Readln(f, tmpStr);
          until Pos('</section>', tmpStr) > 0;
        end;
      end;
    finally
      CloseFile(f);
      isDeckLoading := False;
    end;
    PageControl1Change(Sender);
  end;
end;

procedure TForm1.mniNewDeckClick(Sender: TObject);
begin
  if Application.MessageBox(PChar(
    'All work on the current deck will be lost (if not saved). ' +
    'Are you sure you want to make a new deck?'),
    PChar('Create New Deck'), mb_OKCANCEL+mb_ICONQUESTION) = mrOK then
  begin
    SetLength(drawDeck, 0);
    RefreshBuckets;
    if PageControl1.ActivePage = tabDeckStats then
    begin
      chartFactionsPieSeries1.Clear;
      chartCostLineSeries1.Clear;
    end;
    PageControl1Change(Sender);
  end;
end;

procedure TForm1.mniExitClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.mniLoadDeckClick(Sender: TObject);
var
  f: TextFile;
  oName, tmpStr: String;
  i, j, numSets: Integer;
begin
  OpenDialog1.InitialDir := '\Decks';
  OpenDialog1.Filter := 'Text files|*.txt';
  if OpenDialog1.Execute then
  begin
    try
      isDeckLoading := True;
      RefreshBuckets;
      AssignFile(f, OpenDialog1.FileName);
      Reset(f);
      while not EoF(f) do
      begin
        Readln(f, tmpStr);
        if Pos('Faction', tmpStr) > 0 then
          lbxFaction.Items[0] := tmpStr
        else
        if Pos('Objective', tmpStr) > 0 then
        begin
          Readln(f, tmpStr); Readln(f, tmpStr);
          repeat
            numSets := StrToInt(Copy(tmpStr, 1, 1));
            oName := Trim(Copy(tmpStr, 5, (Pos('(',tmpStr)-1)-5));
            for i:=0 to Length(cardDB)-1 do
              if (cardDB[i].cardTitle = oName) and (cardDB[i].cardType = 'Objective') then
              begin
                 sgdCards.Row := i+1;
                 for j:=1 to numSets do
                   sgdCardsDblClick(Self);
              end;
            Readln(f, tmpStr);
          until tmpStr = '';
          break;
        end;
      end;
    finally
      CloseFile(f);
      isDeckLoading := False;
    end;
    PageControl1Change(Sender);
  end;
end;

procedure TForm1.mniSaveDeckClick(Sender: TObject);
var
  f: TextFile;
  i: Integer;
begin
  SaveDialog1.InitialDir := '.\Decks';
  SaveDialog1.Filter := 'Text File|*.txt';
  SaveDialog1.DefaultExt := 'txt';
  SaveDialog1.FileName := '.txt';
  if SaveDialog1.Execute then
  begin
    AssignFile(f, SaveDialog1.FileName);
    Rewrite(f);
    Writeln(f, '');
    Writeln(f, lbxFaction.Items[0]);
    Writeln(f, '');
    for i:=0 to lbxObjectives.Items.Count -1 do
      if i > 1 then
        Writeln(f, Format('%-30s %s',[Trim(Copy(lbxObjectives.Items[i],1,
         Pos('(', lbxObjectives.Items[i])-1)), Copy(lbxObjectives.Items[i],
         Pos('(', lbxObjectives.Items[i]),99)]))
      else
        Writeln(f, lbxObjectives.Items[i]);
    Writeln(f, '');
    for i:=0 to lbxUnits.Items.Count -1 do
      if i > 1 then
        Writeln(f, Format('%-30s %s',[Trim(Copy(lbxUnits.Items[i],1,
         Pos('(', lbxUnits.Items[i])-1)), Copy(lbxUnits.Items[i],
         Pos('(', lbxUnits.Items[i]),99)]))
      else
        Writeln(f, lbxUnits.Items[i]);
    Writeln(f, '');
    for i:=0 to lbxEnhancements.Items.Count -1 do
      if i > 1 then
        Writeln(f, Format('%-30s %s',[Trim(Copy(lbxEnhancements.Items[i],1,
         Pos('(', lbxEnhancements.Items[i])-1)), Copy(lbxEnhancements.Items[i],
         Pos('(', lbxEnhancements.Items[i]),99)]))
      else
        Writeln(f, lbxEnhancements.Items[i]);
    Writeln(f, '');
    for i:=0 to lbxEvents.Items.Count -1 do
      if i > 1 then
        Writeln(f, Format('%-30s %s',[Trim(Copy(lbxEvents.Items[i],1,
         Pos('(', lbxEvents.Items[i])-1)), Copy(lbxEvents.Items[i],
         Pos('(', lbxEvents.Items[i]),99)]))
      else
        Writeln(f, lbxEvents.Items[i]);
    Writeln(f, '');
    for i:=0 to lbxFateCards.Items.Count -1 do
      if i > 1 then
        Writeln(f, Format('%-30s %s',[Trim(Copy(lbxFateCards.Items[i],1,
         Pos('(', lbxFateCards.Items[i])-1)), Copy(lbxFateCards.Items[i],
         Pos('(', lbxFateCards.Items[i]),99)]))
      else
        Writeln(f, lbxFateCards.Items[i]);
    Writeln(f, '');
    for i:=0 to lbxMissions.Items.Count -1 do
      if i > 1 then
        Writeln(f, Format('%-30s %s',[Trim(Copy(lbxMissions.Items[i],1,
         Pos('(', lbxMissions.Items[i])-1)), Copy(lbxMissions.Items[i],
         Pos('(', lbxMissions.Items[i]),99)]))
      else
        Writeln(f, lbxMissions.Items[i]);
    CloseFile(f);
  end;
end;

function TForm1.WriteLackeyXML(line: String; isObjective: Boolean = false): String;
var
  x, y, start, stop: Integer;
  cycle, title, oSet, cardInSet, tmpStr, searchStr, chkSet: String;
  found: Boolean;
begin
  result:='';
  Delete(line, 1, 4);
  title := line;
  line:=ScrubStr(line);

  tmpStr:=Copy(line, Pos('(', line), 99);
  x := Pos('-', tmpStr);

  oSet:=Copy(tmpStr, 2, x-2);
  cardInSet:=Copy(tmpStr, x+1, 1);

  searchStr:=Copy(title, 1, Pos('(', title)-2);
  for x:=0 to Length(reusedCards)-1 do
  begin
    found:=false;
    if Pos(searchStr, reusedCards[x]) > 0 then
    begin
      tmpStr:=reusedCards[x];
      found:=true;
      break;
    end;
  end;
  if not found then
    Delete(title, Pos('(', title)-1, 10)
  else
  begin
    if Pos('*', tmpStr)=0 then
      title := searchStr + ' (' + oSet + ')'
    else
    // check exception cases like Kyle Katarn
    if Pos('[', tmpStr)>0 then
    begin
      start:=Pos('[',tmpStr)+1;
      stop:=Pos(']',tmpStr);
      chkSet:=Copy(tmpStr, start, stop-start);
      if chkSet = oSet then
        title := searchStr + ' (' + oSet + ')';
    end;
  end;

  for x:=0 to Length(cardDB)-1 do
  begin
    if (cardDB[x].setNumber = oSet) and (cardDB[x].cardInSet = cardInSet) then
    begin
      for y:=0 to Length(arrCycleLookup)-1 do
        if cardDB[x].product = arrCycleLookup[y][0] then
        begin
          cycle := arrCycleLookup[y][1];
          break;
        end;
      break;
    end;
  end;
  if isObjective then
    result := '<card><name id="' + cycle + '-' + oSet + '-' + cardInSet + ',ObjBack">' + title +
              '</name><set>' + cycle + '</set></card>'
  else
    result := '<card><name id="' + cycle + '-' + oSet + '-' + cardInSet + '">' + title +
              '</name><set>' + cycle + '</set></card>';
end;

procedure TForm1.SetBuckets;
begin
  lbxObjectives.Height := lbxFaction.Height;
  lbxObjectives.ScrollBy(0,0);
  lbxUnits.Height := lbxFaction.Height;
  lbxUnits.ScrollBy(0,0);
  lbxEnhancements.Height := lbxFaction.Height;
  lbxEnhancements.ScrollBy(0,0);
  lbxEvents.Height := lbxFaction.Height;
  lbxEvents.ScrollBy(0,0);
  lbxFateCards.Height := lbxFaction.Height;
  lbxFateCards.ScrollBy(0,0);
  lbxMissions.Height := lbxFaction.Height;
  lbxMissions.ScrollBy(0,0);
end;

procedure TForm1.mniSaveLackeyClick(Sender: TObject);
var
  f: TextFile;
  line: String;
  copies: Integer;
  isLight: Boolean;

  procedure TranscribeCards(aListBox: TListBox);
  var
    i: Integer;
  begin
    for i:=2 to aListBox.Items.Count-1 do
    begin
      copies := StrToInt(Copy(aListBox.Items[i], 1, 1));
      line := aListBox.Items[i];
      repeat
        if aListBox = lbxObjectives then
          Writeln(f, WriteLackeyXML(line, True))
        else
          Writeln(f, WriteLackeyXML(line));
        copies := copies - 1;
      until copies = 0;
    end;
  end;

begin
  SaveDialog1.InitialDir := '\Decks';
  SaveDialog1.Filter := 'Lackey File|*.dek';
  SaveDialog1.DefaultExt := 'dek';
  SaveDialog1.FileName := '.dek';
  if SaveDialog1.Execute then
  begin
    AssignFile(f, SaveDialog1.FileName);
    Rewrite(f);
    Writeln(f, '<deck version="0.8">');
    Writeln(f, '');
    Writeln(f, '<game>StarWars-LCG</game>');
    Writeln(f, '');
    Writeln(f, '<superzone name="Command">');
    if StrToInt(Copy(lbxUnits.Items[0],1,1)) > 0 then TranscribeCards(lbxUnits);
    if StrToInt(Copy(lbxEnhancements.Items[0],1,1)) > 0 then TranscribeCards(lbxEnhancements);
    if StrToInt(Copy(lbxEvents.Items[0],1,1)) > 0 then TranscribeCards(lbxEvents);
    if StrToInt(Copy(lbxFateCards.Items[0],1,1)) > 0 then TranscribeCards(lbxFateCards);
    if StrToInt(Copy(lbxMissions.Items[0],1,1)) > 0 then TranscribeCards(lbxMissions);
    Writeln(f, '</superzone>');
    Writeln(f, '<superzone name="Objectives">');
    if StrToInt(Copy(lbxObjectives.Items[0],1,1)) > 0 then TranscribeCards(lbxObjectives);
    Writeln(f, '</superzone>');
    Writeln(f, '<superzone name="Force">');
    if Pos('Jedi', lbxFaction.Items[0]) > 0 then
    begin
      Writeln(f, '<card><name id="Jedi">Jedi</name><set>Core</set></card>');
      isLight:=true;
    end
    else
    if Pos('Rebel Alliance', lbxFaction.Items[0]) > 0 then
    begin
      Writeln(f, '<card><name id="Rebel Alliance">Rebel Alliance</name><set>Core</set></card>');
      isLight:=true;
    end
    else
    if Pos('Smugglers and Spies', lbxFaction.Items[0]) > 0 then
    begin
      Writeln(f, '<card><name id="Smugglers and Spies">Smugglers and Spies</name><set>Core</set></card>');
      isLight:=true;
    end
    else
    if Pos('Sith', lbxFaction.Items[0]) > 0 then
    begin
      Writeln(f, '<card><name id="Sith">Sith</name><set>Core</set></card>');
      isLight:=false;
    end
    else
    if Pos('Imperial Navy', lbxFaction.Items[0]) > 0 then
    begin
      Writeln(f, '<card><name id="Imperial Navy">Imperial Navy</name><set>Core</set></card>');
      isLight:=false;
    end
    else
    if Pos('Scum and Villainy', lbxFaction.Items[0]) > 0 then
    begin
      Writeln(f, '<card><name id="Scum and Villainy">Scum and Villainy</name><set>Core</set></card>');
      isLight:=false;
    end;
    if isLight then
    begin
      Writeln(f, '<card><name id="Force-LS">LS Force</name><set>Core</set></card>');
      Writeln(f, '<card><name id="Force-LS">LS Force</name><set>Core</set></card>');
      Writeln(f, '<card><name id="Force-LS">LS Force</name><set>Core</set></card>');
    end
    else
    begin
      Writeln(f, '<card><name id="Force-DS">DS Force</name><set>Core</set></card>');
      Writeln(f, '<card><name id="Force-DS">DS Force</name><set>Core</set></card>');
      Writeln(f, '<card><name id="Force-DS">DS Force</name><set>Core</set></card>');
    end;
    Writeln(f, '</superzone>');
    Writeln(f, '</deck>');
    CloseFile(f);
  end;
end;

procedure TForm1.mniSaveOctgnClick(Sender: TObject);
var
  f: TextFile;
  j, line, s, title: String;

  function GetCardID(cardName: String): String;
  var
    x: Integer;
  begin
    for x:=0 to Length(arrOctgn)-1 do
      if arrOctgn[x][0] = cardName then
        result := arrOctgn[x][1];
  end;

  procedure TranscribeCards(aListBox: TListBox);
  var
    i: Integer;
  begin
    for i:=2 to aListBox.Items.Count-1 do
    begin
      j := Copy(aListBox.Items[i], 1, 1);
      line := aListBox.Items[i];
      Delete(line, 1, 4);
      title := line;
      Delete(title, Pos('(', title)-1, 10);
      line:=ScrubStr(line);
      Delete(line, Pos('(', line)-1, 1);
      Writeln(f, '    <card qty="' + j + '" id="' + GetCardID(line) +
              '">' + title + '</card>');
    end;
  end;

begin
  SaveDialog1.InitialDir := '\Decks';
  SaveDialog1.Filter := 'Octgn File|*.o8d';
  SaveDialog1.DefaultExt := 'o8d';
  SaveDialog1.FileName := '.o8d';
  if SaveDialog1.Execute then
  begin
    AssignFile(f, SaveDialog1.FileName);
    Rewrite(f);
    Writeln(f, '<?xml version="1.0" encoding="utf-8" standalone="yes"?>');
    Writeln(f, '<deck game="d5cf89e5-1984-4873-8ae0-f06eea411bb3">');
    Writeln(f, '  <section name="Affiliation">');
    s:=Copy(lbxFaction.Items[0],11,99);
    case s of
      'Jedi': Writeln(f,'    <card qty="1" id="'+GetCardID('Jedi(0-1)')+'">Jedi</card>');
      'Rebel Alliance': Writeln(f,'    <card qty="1" id="'+GetCardID('Rebel Alliance(0-2)')+'">Rebel Alliance</card>');
      'Smugglers and Spies': Writeln(f,'    <card qty="1" id="'+GetCardID('Smugglers and Spies(0-3)')+'">Smugglers and Spies</card>');
      'Sith': Writeln(f,'    <card qty="1" id="'+GetCardID('Sith(0-4)')+'">Sith</card>');
      'Imperial Navy': Writeln(f,'    <card qty="1" id="'+GetCardID('Imperial Navy(0-5)')+'">Imperial Navy</card>');
      'Scum and Villainy': Writeln(f,'    <card qty="1" id="'+GetCardID('Scum and Villainy(0-6)')+'">Scum and Villainy</card>');
    end;
    Writeln(f, '  </section>');
    Writeln(f, '  <section name="Command Deck">');
    if StrToInt(Copy(lbxUnits.Items[0],1,1)) > 0 then TranscribeCards(lbxUnits);
    if StrToInt(Copy(lbxEnhancements.Items[0],1,1)) > 0 then TranscribeCards(lbxEnhancements);
    if StrToInt(Copy(lbxEvents.Items[0],1,1)) > 0 then TranscribeCards(lbxEvents);
    if StrToInt(Copy(lbxFateCards.Items[0],1,1)) > 0 then TranscribeCards(lbxFateCards);
    if StrToInt(Copy(lbxMissions.Items[0],1,1)) > 0 then TranscribeCards(lbxMissions);
    Writeln(f, '  </section>');
    Writeln(f, '  <section name="Objective Deck">');
    if StrToInt(Copy(lbxObjectives.Items[0],1,1)) > 0 then TranscribeCards(lbxObjectives);
    Writeln(f, '  </section>');
    Writeln(f, '</deck>');
    CloseFile(f);
  end;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
var
  i, j, index, hyphen, numCards, numOCards,
  nUnits, nEnhancements, nEvents, nFates, nMissions,
  forceIcons, UD, OD, T, EUD, EOD, ET,
  res1, res2, res3, resN,
  fac1Cnt, fac2Cnt, fac3Cnt, neutCnt: Integer;
  comIcons, anIcon, iconValue,
  fac1Name, fac2Name, fac3Name, lastCard, cardTitle, cardSet, cardInSet, cardID: String;
  arrCost: array [0..10] of integer;

  procedure PlaceCards(var aDeck: array of String; aBucket: TListBox);
  var
    i,j: Integer;
  begin
    if Copy(aBucket.Items[0],1,1) <> '0' then
      for i:=2 to aBucket.Items.Count - 1 do
        for j:=1 to StrToInt(Copy(aBucket.Items[i],1,1)) do
        begin
          aDeck[index] := Trim(Copy(aBucket.Items[i], 5, 99));
          Inc(index);
        end;
  end;

begin
  if PageControl1.ActivePage = tabEditor then
  begin
    SetBuckets;
    if lbxFaction.Items[0] <> 'Faction - <none selected>' then
    begin
      fac1Name:=Copy(lbxFaction.Items[0],11,99);
      for i:=1 to sgdCards.RowCount-1 do
        if fac1Name = sgdCards.Cells[6, i] then
        begin
          sgdCards.Row := i;
          break;
        end;
    end;
  end;

  if PageControl1.ActivePage = tabDeckStats then
  begin
    if radCommand.Checked then
    begin
      btnDrawStartHand.Caption:='Draw Starting Hand (6 cards)';
      pnlObjectiveDeck.Visible:=False;
      pnlCommandDeck.Visible:=True;
    end
    else
    begin
      btnDrawStartHand.Caption:='Draw Objective Flop (4 cards)';
      pnlCommandDeck.Visible:=False;
      pnlObjectiveDeck.Visible:=True;
    end;
    if lbxFaction.Items[0] = 'Faction - <none selected>' then Exit;
    imgSetup1.Picture.Clear;
    imgSetup2.Picture.Clear;
    imgSetup3.Picture.Clear;
    imgSetup4.Picture.Clear;
    imgSetup5.Picture.Clear;
    imgSetup6.Picture.Clear;
    numCards:=0; numOCards:=0;
    fac1Cnt:=0; fac2Cnt:=0; fac3Cnt:=0;
    neutCnt:=0;
    fac1Name:=''; fac2Name:=''; fac3Name:='';
    comIcons:='';
    nUnits:=0; nEnhancements:=0; nEvents:=0; nFates:=0; nMissions:=0;
    forceIcons:=0;
    UD:=0;  OD:=0;  T:=0;  EUD:=0;  EOD:=0;  ET:=0;
    res1:=0;  res2:=0;  res3:=0;  resN:=0;
    for i:=0 to 10 do
      arrCost[i]:=0;
    if (Pos('Jedi', lbxFaction.Items[0]) > 0) or
       (Pos('Rebel Alliance', lbxFaction.Items[0]) > 0) or
       (Pos('Smugglers and Spies', lbxFaction.Items[0]) > 0) then
    begin
      imgRes1.Picture.LoadFromFile('.\DBFiles\faction_Jedi.png');
      imgRes2.Picture.LoadFromFile('.\DBFiles\faction_Alliance.png');
      imgRes3.Picture.LoadFromFile('.\DBFiles\faction_Smuggler.png');
    end
    else
    begin
      imgRes1.Picture.LoadFromFile('.\DBFiles\faction_Sith.png');
      imgRes2.Picture.LoadFromFile('.\DBFiles\faction_ImpNavy.png');
      imgRes3.Picture.LoadFromFile('.\DBFiles\faction_Scum.png');
    end;
    // get size of array based on number of cards in deck
    i := StrToInt(Trim(Copy(lbxUnits.Items[0], 1, Pos('-', lbxUnits.Items[0])-1)));
    Inc(numCards, i);
    i := StrToInt(Trim(Copy(lbxEnhancements.Items[0], 1, Pos('-', lbxEnhancements.Items[0])-1)));
    Inc(numCards, i);
    i := StrToInt(Trim(Copy(lbxEvents.Items[0], 1, Pos('-', lbxEvents.Items[0])-1)));
    Inc(numCards, i);
    i := StrToInt(Trim(Copy(lbxFateCards.Items[0], 1, Pos('-', lbxFateCards.Items[0])-1)));
    Inc(numCards, i);
    i := StrToInt(Trim(Copy(lbxMissions.Items[0], 1, Pos('-', lbxMissions.Items[0])-1)));
    Inc(numCards, i);
    // now the objective deck
    i := StrToInt(Trim(Copy(lbxObjectives.Items[0], 1, Pos('-', lbxObjectives.Items[0])-1)));
    Inc(numOCards, i);
    // set size of array and fill it with the card names
    SetLength(objDeck, numOCards);
    index := 0;
    PlaceCards(objDeck, lbxObjectives);
    SetLength(drawDeck, numCards);
    index := 0;
    PlaceCards(drawDeck, lbxUnits);
    PlaceCards(drawDeck, lbxEnhancements);
    PlaceCards(drawDeck, lbxEvents);
    PlaceCards(drawDeck, lbxFateCards);
    PlaceCards(drawDeck, lbxMissions);
    // now go through decks and do the sums...
    lastCard := '';
    for i:=0 to Length(drawDeck)-1 do
    begin
      index := Pos('(',drawDeck[i]);
      cardID := Copy(drawDeck[i], index, 99);
      hyphen := Pos('-', cardID);
      cardTitle := Trim(Copy(drawDeck[i],1,index-1));
      cardSet := Copy(cardID, 2, hyphen-2);
      cardInSet := Copy(cardID, hyphen+1, 1);
      for j:=0 to Length(cardDB)-1 do
      begin
        // if card title, set number, and card in set match...
        if (cardTitle = cardDB[j].cardTitle) and
           (cardSet = cardDB[j].setNumber) and
           (cardInSet = cardDB[j].cardInSet) then
        begin
          Inc(forceIcons, StrToIntDef(cardDB[j].forcePips,0));
          // add up the combat icons...
          comIcons:=cardDB[j].combatIcons;
          if comIcons > ' ' then
            repeat
              index:=Pos(':',comIcons);
              if Pos(',',comIcons) > 0 then
                anIcon:=Copy(comIcons, index+1, Pos(',',comIcons)-(index+1))
              else
                anIcon:=Copy(comIcons, index+1, 99);
              iconValue:=Trim(Copy(comIcons,1,index-1));
              case anIcon of
                'UD' : Inc(UD, StrToIntDef(iconValue,0));
                'OD' : Inc(OD, StrToIntDef(iconValue,0));
                'T'  : Inc(T, StrToIntDef(iconValue,0));
                'EUD': Inc(EUD, StrToIntDef(iconValue,0));
                'EOD': Inc(EOD, StrToIntDef(iconValue,0));
                'ET' : Inc(ET, StrToIntDef(iconValue,0));
              end;
              comIcons:=Copy(comIcons, Pos(',',comIcons)+2,99);
            until Pos(':',comIcons) < 1;
          if cardDB[j].faction = 'Neutral' then
          begin
            Inc(neutCnt);
            if (cardDB[j].resources > ' ') and (cardDB[j].resources <> 'X') then
              Inc(resN, StrToInt(cardDB[j].resources));
          end
          else
          begin
            if fac1Name='' then
            begin
              fac1Name:=cardDB[j].faction;
              Inc(fac1Cnt);
            end
            else
            if (fac1Name<>'') and (fac2Name='') and (fac1Name<>cardDB[j].faction) then
            begin
              fac2Name:=cardDB[j].faction;
              Inc(fac2Cnt);
            end
            else
            if (fac1Name<>'') and (fac2Name<>'') and (fac3Name='') and
               (fac1Name<>cardDB[j].faction) and (fac2Name<>cardDB[j].faction) then
            begin
              fac3Name:=cardDB[j].faction;
              Inc(fac3Cnt);
            end
            else
            if fac1Name = cardDB[j].faction then
              Inc(fac1Cnt)
            else
            if fac2Name = cardDB[j].faction then
              Inc(fac2Cnt)
            else
            if fac3Name = cardDB[j].faction then
              Inc(fac3Cnt);
            // add up the resources...
            if ((cardDB[j].faction='Jedi') or
                (cardDB[j].faction='Sith'))and
               ((cardDB[j].resources > ' ') and
                (cardDB[j].resources <>'X'))then
              Inc(res1, StrToInt(cardDB[j].resources));
            if ((cardDB[j].faction='Rebel Alliance') or
                (cardDB[j].faction='Imperial Navy'))and
               ((cardDB[j].resources > ' ') and
                (cardDB[j].resources <>'X'))then
              Inc(res2, StrToInt(cardDB[j].resources));
            if ((cardDB[j].faction='Smugglers and Spies') or
                (cardDB[j].faction='Scum and Villainy'))and
               ((cardDB[j].resources > ' ') and
                (cardDB[j].resources <>'X'))then
              Inc(res3, StrToInt(cardDB[j].resources));
          end;
          if cardDB[j].cardTitle <> lastCard then
            lastCard := cardDB[j].cardTitle;
          if (cardDB[j].cost <> ' ') and (cardDB[j].cost <> 'X') then
            arrCost[StrToInt(cardDB[j].cost)] := arrCost[StrToInt(cardDB[j].cost)] + 1;
          // card type counts
          case cardDB[j].cardType of
            'Unit': Inc(nUnits);
            'Enhancement': Inc(nEnhancements);
            'Event': Inc(nEvents);
            'Fate': Inc(nFates);
            'Mission': Inc(nMissions);
          end;
        end;
      end;
    end;
    for i:=0 to Length(objDeck)-1 do
    begin
      index := Pos('(',objDeck[i]);
      cardID := Copy(objDeck[i], index, 99);
      hyphen := Pos('-', cardID);
      cardTitle := Trim(Copy(objDeck[i],1,index-1));
      cardSet := Copy(cardID, 2, hyphen-2);
      cardInSet := Copy(cardID, hyphen+1, 1);
      for j:=0 to Length(cardDB)-1 do
        if (cardTitle = cardDB[j].cardTitle) and
           (cardSet = cardDB[j].setNumber) and
           (cardInSet = cardDB[j].cardInSet) then
        begin
          if ((cardDB[j].faction='Jedi') or (cardDB[j].faction='Sith')) and
             ((cardDB[j].resources > ' ') and (cardDB[j].resources <>'X')) then
            Inc(res1, StrToInt(cardDB[j].resources));
          if ((cardDB[j].faction='Rebel Alliance') or (cardDB[j].faction='Imperial Navy')) and
             ((cardDB[j].resources > ' ') and (cardDB[j].resources <>'X')) then
            Inc(res2, StrToInt(cardDB[j].resources));
          if ((cardDB[j].faction='Smugglers and Spies') or (cardDB[j].faction='Scum and Villainy')) and
             ((cardDB[j].resources > ' ') and (cardDB[j].resources <>'X')) then
            Inc(res3, StrToInt(cardDB[j].resources));
          if (cardDB[j].faction='Neutral') and
             ((cardDB[j].resources > ' ') and (cardDB[j].resources <>'X'))then
            Inc(resN, StrToInt(cardDB[j].resources));
        end;
    end;
    // now set the graphs based off of our numbers...
    chartFactions.Title.Text.Clear;
    chartFactions.Title.Text.Add('Factions (Command Deck Only)');
    chartFactions.Title.Visible := True;
    chartFactionsPieSeries1.Clear;
    case fac1Name of
     'Jedi':                chartFactionsPieSeries1.AddXY(0,fac1Cnt,fac1Name,TColor(clJEDI));
     'Rebel Alliance':      chartFactionsPieSeries1.AddXY(0,fac1Cnt,fac1Name,TColor(clREBELS));
     'Smugglers and Spies': chartFactionsPieSeries1.AddXY(0,fac1Cnt,fac1Name,TColor(clSMUGGLERS));
     'Sith':                chartFactionsPieSeries1.AddXY(0,fac1Cnt,fac1Name,TColor(clSITH));
     'Imperial Navy':       chartFactionsPieSeries1.AddXY(0,fac1Cnt,fac1Name,TColor(clNAVY));
     'Scum and Villainy':   chartFactionsPieSeries1.AddXY(0,fac1Cnt,fac1Name,TColor(clSCUM));
    end;
    case fac2Name of
     'Jedi':                chartFactionsPieSeries1.AddXY(1,fac2Cnt,fac2Name,TColor(clJEDI));
     'Rebel Alliance':      chartFactionsPieSeries1.AddXY(1,fac2Cnt,fac2Name,TColor(clREBELS));
     'Smugglers and Spies': chartFactionsPieSeries1.AddXY(1,fac2Cnt,fac2Name,TColor(clSMUGGLERS));
     'Sith':                chartFactionsPieSeries1.AddXY(1,fac2Cnt,fac2Name,TColor(clSITH));
     'Imperial Navy':       chartFactionsPieSeries1.AddXY(1,fac2Cnt,fac2Name,TColor(clNAVY));
     'Scum and Villainy':   chartFactionsPieSeries1.AddXY(1,fac2Cnt,fac2Name,TColor(clSCUM));
    end;
    case fac3Name of
     'Jedi':                chartFactionsPieSeries1.AddXY(2,fac3Cnt,fac3Name,TColor(clJEDI));
     'Rebel Alliance':      chartFactionsPieSeries1.AddXY(2,fac3Cnt,fac3Name,TColor(clREBELS));
     'Smugglers and Spies': chartFactionsPieSeries1.AddXY(2,fac3Cnt,fac3Name,TColor(clSMUGGLERS));
     'Sith':                chartFactionsPieSeries1.AddXY(2,fac3Cnt,fac3Name,TColor(clSITH));
     'Imperial Navy':       chartFactionsPieSeries1.AddXY(2,fac3Cnt,fac3Name,TColor(clNAVY));
     'Scum and Villainy':   chartFactionsPieSeries1.AddXY(2,fac3Cnt,fac3Name,TColor(clSCUM));
    end;
    chartFactionsPieSeries1.AddXY(3,neutCnt,'Neutral',TColor(clNEUTRAL));

    chartCardTypes.Title.Text.Clear;
    chartCardTypes.Title.Text.Add('Card Types (Command Deck Only)');
    chartCardTypes.Title.Visible := True;
    chartCardTypesPieSeries1.Clear;
    if nUnits > 0 then
      chartCardTypesPieSeries1.AddXY(0,nUnits,'Units',TColor($00FF8349)); // med. blue
    if nEnhancements > 0 then
      chartCardTypesPieSeries1.AddXY(1,nEnhancements,'Enhancements',TColor(clFuchsia));
    if nEvents > 0 then
      chartCardTypesPieSeries1.AddXY(2,nEvents,'Events',TColor($00006AFF)); // orange
    if nFates > 0 then
      chartCardTypesPieSeries1.AddXY(3,nFates,'Fate Cards',TColor(clGreen));
    if nMissions > 0 then
      chartCardTypesPieSeries1.AddXY(4,nMissions,'Missions',TColor(clYellow));

    chartCost.Title.Text.Clear;
    chartCost.Title.Text.Add('Card Cost (Cost X Ignored)');
    chartCost.Title.Visible := True;
    chartCost.BottomAxis.Title.Caption := 'Cost';
    chartCost.BottomAxis.Visible := True;;
    chartCost.LeftAxis.Title.Caption := 'Number of Cards';
    chartCost.LeftAxis.Visible := True;
    chartCostLineSeries1.Clear;
    for i:=10 downto 0 do
      if arrCost[i] > 0 then
        chartCostLineSeries1.AddXY(i,arrCost[i]);
    if arrCost[0] = 0 then
      chartCostLineSeries1.AddXY(0,0);

    lblSideResources1.Caption := IntToStr(res1);
    lblSideResources2.Caption := IntToStr(res2);
    lblSideResources3.Caption := IntToStr(res3);
    lblNeutralResources.Caption := IntToStr(resN);
    lblUD.Caption := IntToStr(UD);
    lblOD.Caption := IntToStr(OD);
    lblT.Caption := IntToStr(T);
    lblEUD.Caption := IntToStr(EUD);
    lblEOD.Caption := IntToStr(EOD);
    lblET.Caption := IntToStr(ET);
    lblForceIcons.Caption := IntToStr(forceIcons);
  end;
end;

procedure TForm1.radObjectiveClick(Sender: TObject);
begin
  btnDrawStartHand.Caption:='Draw Objective Flop (4 cards)';
  pnlCommandDeck.Visible:=False;
  pnlObjectiveDeck.Visible:=True;
end;

procedure TForm1.radCommandClick(Sender: TObject);
begin
  btnDrawStartHand.Caption:='Draw Starting Hand (6 cards)';
  pnlObjectiveDeck.Visible:=False;
  pnlCommandDeck.Visible:=True;
end;

procedure TForm1.BucketClick(Sender: TObject);
var
  s, title, setnumber, cardNum, tmpStr: String;
  i, j, index, start, stop: Integer;
begin
  if TListBox(Sender) <> formerBucket then
    formerBucket.Color := clDefault;
  TListBox(Sender).Color := clSLOTSELECT;
  bucket := Trim(Copy(TListBox(Sender).Name, 4, 99));
  if (TListBox(Sender).Name = 'lbxFaction') then
  begin
    btnClearFiltersClick(Sender);
    TListBox(Sender).ItemIndex := -1
  end
  else
  if (TListBox(Sender).Height = 21) and (TListBox(Sender).ItemIndex < 2) and
     (TListBox(Sender).Name <> 'lbxFaction') then
    ResizeBucket(TListBox(Sender))
  else
  if (TListBox(Sender).Height > 21) and (TListBox(Sender).ItemIndex < 2) and
     (TListBox(Sender).Name <> 'lbxFaction') then
  begin
    TListBox(Sender).Height := 21;
    TListBox(Sender).ItemIndex := -1;
    lbxMissions.Top := 0;
    lbxFateCards.Top := 0;
    lbxEvents.Top := 0;
    lbxEnhancements.Top := 0;
    lbxUnits.Top := 0;
    lbxObjectives.Top := 0;
    lbxFaction.Top := 0;
    Exit;
  end;
  // now the single clicks within the listboxes...a click in the bucket will
  // highlight the row in the grid...
  index:=99;
  if TListBox(Sender).ItemIndex > 1 then
  begin
    btnClearFiltersClick(Sender);
    index := Pos('(', TListBox(Sender).Items[TListBox(Sender).ItemIndex]);
  end;
  if (TListBox(Sender).Name = 'lbxFaction') and
     (TListBox(Sender).Items[0] <> 'Faction - <none selected>') then
  begin
    j := Pos('- ', TListBox(Sender).Items[0]);
    s := Trim(Copy(TListBox(Sender).Items[0], j+2, index-(j+2)-1));
    for i:=1 to sgdCards.RowCount-1 do
      if s = sgdCards.Cells[2, i] then
      begin
        sgdCards.Row := i;
        break;
      end;
  end
  else
  if (TListBox(Sender).Name <> 'lbxFaction') and (TListBox(Sender).ItemIndex > 1) then
  begin
    s := Copy(TListBox(Sender).Items[TListBox(Sender).ItemIndex], 5, index+1);
    tmpStr:= Trim(Copy(s, index-5, 99));
    start:=Pos('(', tmpStr)+1;
    stop:=Pos('-', tmpStr);
    title := Trim(Copy(s, 1, index-5));
    setnumber := Copy(tmpStr, start, stop-start);
    cardNum := Copy(tmpStr, stop+1, 1);
    for i:=1 to sgdCards.RowCount-1 do
      if (title = sgdCards.Cells[2, i]) and
         (setnumber = sgdCards.Cells[4, i]) and
         (cardNum = sgdCards.Cells[5, i]) then
      begin
        sgdCards.Row := i;
        break;
      end;
  end;
end;

procedure TForm1.BucketDblClick(Sender: TObject);
var
  sNum, tmpStr: String;
  start, stop: Integer;
begin
  if TListBox(Sender) <> formerBucket then
    formerBucket.Color := clDefault;
  TListBox(Sender).Color := clSLOTSELECT;
  if TListBox(Sender).Name = 'lbxFaction' then
    lbxFaction.Items[0] := 'Faction - <none selected>';
  if TListBox(Sender).ItemIndex > 1 then
  begin
    start := Pos('(',TListBox(Sender).Items[TListBox(Sender).ItemIndex]);
    tmpStr := Copy(TListBox(Sender).Items[TListBox(Sender).ItemIndex], start, 99);
    stop := Pos('-',tmpStr);
    sNum := Copy(tmpStr, 2, stop-2);
    DelSetFromBuckets(sNum);
    if lbxObjectives.Height > 21 then
      ResizeBucket(lbxObjectives);
    if lbxUnits.Height > 21 then
      ResizeBucket(lbxUnits);
    if lbxEnhancements.Height > 21 then
      ResizeBucket(lbxEnhancements);
    if lbxEvents.Height > 21 then
      ResizeBucket(lbxEvents);
    if lbxFateCards.Height > 21 then
      ResizeBucket(lbxFateCards);
    if lbxMissions.Height > 21 then
      ResizeBucket(lbxMissions);
  end;
end;

procedure TForm1.sgdCardsMouseDown(Sender: TObject; Button: TMouseButton);
var
  sName: String;
  i: Integer;
begin
  selectedSet := sgdCards.Cells[4, sgdCards.Row];
  SetTheObjective(selectedSet);
  if Button = mbRight then
  begin
    if selectedSet = '0' then Exit;
    setView := TForm2.Create(Application);
    try
      case selectedFaction of
        'Jedi':                setView.Color := clJEDI;
        'Rebel Alliance':      setView.Color := clREBELS;
        'Smugglers and Spies': setView.Color := clSMUGGLERS;
        'Sith':                setView.Color := clSITH;
        'Imperial Navy':       setView.Color := clNAVY;
        'Scum and Villainy':   setView.Color := clSCUM;
        'Neutral':             setView.Color := clNEUTRAL;
      end; // case
      for i:=0 to Length(cardDB)-1 do
        if (sgdCards.Cells[5, i] = '1') and (sgdCards.Cells[4, i] = selectedSet) then
        begin
          sName := sgdCards.Cells[2, i];
          break;
        end;
      setView.Caption:='Set ' + selectedSet + ' - ' + sName;
      setView.Visible:=True;
      setView.Show;
    except
      setView.Free;
    end;
  end;
end;

procedure TForm1.sgdCardsSelection(Sender: TObject);
begin
  sgdCardsClick(Sender);
end;

procedure TForm1.BucketExit(Sender: TObject);
begin
  formerBucket:=TListBox(Sender);
  TListBox(Sender).ItemIndex := -1;
end;

procedure TForm1.FilterClick(Sender: TObject);
var
  filters: TStringList;
  i: Integer;

  procedure ResetGrid(f: TStringList);
  var
    i, row, numFactions, numTypes, numTrait, numSide: Integer;
    factions, types, product, trait, side: TStringList;
    ch: String;

    function GetFactionsResult(n, x: Integer): Boolean;
    begin
      case n of
        7: Result := (cardDB[x].faction = factions[0]) or
                     (cardDB[x].faction = factions[1]) or
                     (cardDB[x].faction = factions[2]) or
                     (cardDB[x].faction = factions[3]) or
                     (cardDB[x].faction = factions[4]) or
                     (cardDB[x].faction = factions[5]) or
                     (cardDB[x].faction = factions[6]);
        6: Result := (cardDB[x].faction = factions[0]) or
                     (cardDB[x].faction = factions[1]) or
                     (cardDB[x].faction = factions[2]) or
                     (cardDB[x].faction = factions[3]) or
                     (cardDB[x].faction = factions[4]) or
                     (cardDB[x].faction = factions[5]);
        5: Result := (cardDB[x].faction = factions[0]) or
                     (cardDB[x].faction = factions[1]) or
                     (cardDB[x].faction = factions[2]) or
                     (cardDB[x].faction = factions[3]) or
                     (cardDB[x].faction = factions[4]);
        4: Result := (cardDB[x].faction = factions[0]) or
                     (cardDB[x].faction = factions[1]) or
                     (cardDB[x].faction = factions[2]) or
                     (cardDB[x].faction = factions[3]);
        3: Result := (cardDB[x].faction = factions[0]) or
                     (cardDB[x].faction = factions[1]) or
                     (cardDB[x].faction = factions[2]);
        2: Result := (cardDB[x].faction = factions[0]) or
                     (cardDB[x].faction = factions[1]);
        1: Result := (cardDB[x].faction = factions[0]);
        0: Result := True;
      end; //case
    end; //inline function

    function GetTypesResult(n, x: Integer): Boolean;
    begin
      case n of
        6: Result := (cardDB[x].cardType = types[0]) or
                     (cardDB[x].cardType = types[1]) or
                     (cardDB[x].cardType = types[2]) or
                     (cardDB[x].cardType = types[3]) or
                     (cardDB[x].cardType = types[4]) or
                     (cardDB[x].cardType = types[5]);
        5: Result := (cardDB[x].cardType = types[0]) or
                     (cardDB[x].cardType = types[1]) or
                     (cardDB[x].cardType = types[2]) or
                     (cardDB[x].cardType = types[3]) or
                     (cardDB[x].cardType = types[4]);
        4: Result := (cardDB[x].cardType = types[0]) or
                     (cardDB[x].cardType = types[1]) or
                     (cardDB[x].cardType = types[2]) or
                     (cardDB[x].cardType = types[3]);
        3: Result := (cardDB[x].cardType = types[0]) or
                     (cardDB[x].cardType = types[1]) or
                     (cardDB[x].cardType = types[2]);
        2: Result := (cardDB[x].cardType = types[0]) or
                     (cardDB[x].cardType = types[1]);
        1: Result := (cardDB[x].cardType = types[0]);
        0: Result := True;
      end; // case
    end; // inline function

    function GetProductResult(x: Integer): Boolean;
    var
      i: Integer;
      found: Boolean;
    begin
      found := False;
      for i:=0 to product.Count-1 do
        if (cardDB[x].product = product[i]) then
          found := True;
      if (product.Count = 0) then
        found := True;
      Result := found;
    end; // inline function

    function GetTraitResult(n, x: Integer): Boolean;
    begin
      case n of
        1: Result := Pos(trait[0], cardDB[x].traits) > 0;
        0: Result := True;
      end; // case
    end; // inline function

    function GetSideResult(n, x: Integer): Boolean;
    begin
      case n of
        1: Result := Pos(side[0], cardDB[x].side) > 0;
        0: Result := True;
      end; // case
    end; // inline function

  begin
    row:=0;
    sgdCards.Clear;
    sgdCards.RowCount:= recordCount + 1;
    sgdCards.Cells[0,0] := 'Card Id#';
    sgdCards.Cells[1,0] := 'Product';
    sgdCards.Cells[2,0] := 'Card Title';
    sgdCards.Cells[3,0] := 'Unique';
    sgdCards.Cells[4,0] := 'Set';
    sgdCards.Cells[5,0] := 'Card';
    sgdCards.Cells[6,0] := 'Faction';
    sgdCards.Cells[7,0] := 'Side';
    sgdCards.Cells[8,0] := 'Type';
    sgdCards.Cells[9,0] := 'Cost';
    sgdCards.Cells[10,0] := 'Force';
    sgdCards.Cells[11,0] := 'Resources';
    sgdCards.Cells[12,0] := 'Health';
    sgdCards.Cells[13,0] := 'Icons';
    sgdCards.Cells[14,0] := 'Traits';
    sgdCards.Cells[15,0] := 'Ability Text';
    factions := TStringList.Create;
    types := TStringList.Create;
    product := TStringList.Create;
    trait := TStringList.Create;
    side := TStringList.Create;
    try
      for i:=0 to f.Count-1 do
      begin
        ch := Copy(f[i], 1, 1);
        case ch of
          '1': factions.Add(Copy(f[i], 2, 99));
          '2': types.Add(Copy(f[i], 2, 99));
          '3': product.Add(Copy(f[i], 2, 99));
          '4': trait.Add(Copy(f[i], 2, 99));
          '5': side.Add(Copy(f[i], 2, 99));
        end; // case
      end; // for
      numFactions := factions.Count;
      numTypes := types.Count;
      numTrait := trait.Count;
      numSide := side.Count;
      for i:=0 to recordCount-1 do
        if (GetFactionsResult(numFactions, i)) and
           (GetTypesResult(numTypes, i)) and
           (GetProductResult(i)) and
           (GetTraitResult(numTrait, i)) and
           (GetSideResult(numSide, i)) then
        begin
          Inc(row);
          sgdCards.Cells[0,row] := cardDB[i].cardNumber;
          sgdCards.Cells[1,row] := cardDB[i].product;
          sgdCards.Cells[2,row] := cardDB[i].cardTitle;
          sgdCards.Cells[3,row] := cardDB[i].unique;
          sgdCards.Cells[4,row] := cardDB[i].setNumber;
          sgdCards.Cells[5,row] := cardDB[i].cardInSet;
          sgdCards.Cells[6,row] := cardDB[i].faction;
          sgdCards.Cells[7,row] := cardDB[i].side;
          sgdCards.Cells[8,row] := cardDB[i].cardType;
          sgdCards.Cells[9,row] := cardDB[i].cost;
          sgdCards.Cells[10,row] := cardDB[i].forcePips;
          sgdCards.Cells[11,row] := cardDB[i].resources;
          sgdCards.Cells[12,row] := cardDB[i].health;
          sgdCards.Cells[13,row] := cardDB[i].combatIcons;
          sgdCards.Cells[14,row] := cardDB[i].traits;
          sgdCards.Cells[15,row] := cardDB[i].abilityText;
        end;
      sgdCards.RowCount := row+1;
      sgdCards.AutoSizeColumns;
    finally
      factions.Free;
      types.Free;
      product.Free;
      trait.Free;
      side.Free;
    end; // try
  end;

begin
  filters := TStringList.Create;
  try
    // Go through the filter buttons and build the Filters string list to pass to the ResetGrid method.
    if btnJedi.State = cbChecked then filters.Add('1Jedi');
    if btnRebels.State = cbChecked then filters.Add('1Rebel Alliance');
    if btnSmugglers.State = cbChecked then filters.Add('1Smugglers and Spies');
    if btnSith.State = cbChecked then filters.Add('1Sith');
    if btnNavy.State = cbChecked then filters.Add('1Imperial Navy');
    if btnScum.State = cbChecked then filters.Add('1Scum and Villainy');
    if btnNeutral.State = cbChecked then filters.Add('1Neutral');
    if btnObjective.State = cbChecked then filters.Add('2Objective');
    if btnUnit.State = cbChecked then filters.Add('2Unit');
    if btnEnhancement.State = cbChecked then filters.Add('2Enhancement');
    if btnEvent.State = cbChecked then filters.Add('2Event');
    if btnFate.State = cbChecked then filters.Add('2Fate');
    if btnMission.State = cbChecked then filters.Add('2Mission');
    // run through the selectedProducts array and add selected products
    for i:=0 to Length(selectedProducts)-1 do
    begin
      if selectedProducts[i,1] = '1' then
        filters.Add('3' + selectedProducts[i,0]);
    end;
    if cbxFilterTrait.ItemIndex > 0 then
      filters.Add('4' + cbxFilterTrait.Items[cbxFilterTrait.ItemIndex]);
    if cbxFilterSide.ItemIndex > 0 then
      filters.Add('5' + cbxFilterSide.Items[cbxFilterSide.ItemIndex]);
    ResetGrid(filters);
  finally
    filters.Free;
  end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
var
  F: TextFile;
  i: integer;
begin
  if addedCards then
  begin
    CanClose := true;
    AssignFile(F, 'DBFiles\Cards.txt');
    Rewrite(F);
    for i:=0 to Length(cardDB)-1 do
      writeln(F, cardDB[i].cardNumber + '/' +
                 cardDB[i].product + '/' +
                 cardDB[i].cardTitle + '/' +
                 cardDB[i].unique + '/' +
                 cardDB[i].setNumber + '/' +
                 cardDB[i].cardInSet + '/' +
                 cardDB[i].faction + '/' +
                 cardDB[i].side + '/' +
                 cardDB[i].cardType + '/' +
                 cardDB[i].cost + '/' +
                 cardDB[i].forcePips + '/' +
                 cardDB[i].resources + '/' +
                 cardDB[i].health + '/' +
                 cardDB[i].combatIcons + '/' +
                 cardDB[i].traits + '/' +
                 cardDB[i].abilityText + '/' +
                 cardDB[i].cardPic);
    CloseFile(F);
  end;
end;

procedure TForm1.btnNewCardClick(Sender: TObject);
begin
  if Application.MessageBox(
   'Are you sure? Current data on the current card will be lost.',
   'New Card?', MB_ICONQUESTION + MB_YESNO) = IDNO then
    Exit;
  ClearTheCard();
end;

procedure TForm1.btnProductsClick(Sender: TObject);
begin
  ProdSelectView := TfrmProductsSelect.Create(Application);
  ProdSelectView.NumProducts := Length(selectedProducts)-1;
  ProdSelectView.ShowModal;
  ProdSelectView.Free;
  FilterClick(Self);
end;

procedure TForm1.btnDrawStartHandClick(Sender: TObject);
var
  i, j, index: Integer;
  shuffledDeck: array of String;
  s: String;
  img: TPicture;
begin
  if radCommand.Checked then
  begin
    if Length(drawDeck) < 1 then exit;
    imgSetup1.Picture.Clear;
    imgSetup2.Picture.Clear;
    imgSetup3.Picture.Clear;
    imgSetup4.Picture.Clear;
    imgSetup5.Picture.Clear;
    imgSetup6.Picture.Clear;
    SetLength(shuffledDeck, Length(drawDeck));
    for i:=0 to Length(drawDeck)-1 do
      shuffledDeck[i]:=drawDeck[i];
    RandSeed:=1283712354;
    Randomize;
    for j:=0 to Length(shuffledDeck)-1 do
    begin
      index:=Random(Length(shuffledDeck));
      s := shuffledDeck[j];
      shuffledDeck[j] := shuffledDeck[index];
      shuffledDeck[index] := s;
    end;
    img:=TPicture.Create;
    try
      for i:=0 to 5 do // now draw the top 6 cards and display them
        for j:=0 to Length(cardDB)-1 do
          if (Pos(cardDB[j].cardTitle, shuffledDeck[i]) > 0) and
             (Pos(cardDB[j].setNumber, shuffledDeck[i]) > 0) then
          begin
            img.Clear;
            img.LoadFromFile('./DBFiles/images/' + cardDB[j].cardPic);
            case i of
              0: begin
                   imgSetup1.Picture.Assign(img);
                   lblCard1.Caption := cardDB[j].cardTitle+' ('+cardDB[j].setNumber+')';
                 end;
              1: begin
                   imgSetup2.Picture.Assign(img);
                   lblCard2.Caption := cardDB[j].cardTitle+' ('+cardDB[j].setNumber+')';
                 end;
              2: begin
                   imgSetup3.Picture.Assign(img);
                   lblCard3.Caption := cardDB[j].cardTitle+' ('+cardDB[j].setNumber+')';
                 end;
              3: begin
                   imgSetup4.Picture.Assign(img);
                   lblCard4.Caption := cardDB[j].cardTitle+' ('+cardDB[j].setNumber+')';
                 end;
              4: begin
                   imgSetup5.Picture.Assign(img);
                   lblCard5.Caption := cardDB[j].cardTitle+' ('+cardDB[j].setNumber+')';
                 end;
              5: begin
                   imgSetup6.Picture.Assign(img);
                   lblCard6.Caption := cardDB[j].cardTitle+' ('+cardDB[j].setNumber+')';
                 end;
            end;
          end;
    finally
      img.Free;
    end;
  end
  else
  begin
    if Length(objDeck) < 1 then exit;
    imgObj1.Picture.Clear;
    imgObj2.Picture.Clear;
    imgObj3.Picture.Clear;
    imgObj4.Picture.Clear;
    SetLength(shuffledDeck, Length(objDeck));
    for i:=0 to Length(objDeck)-1 do
      shuffledDeck[i]:=objDeck[i];
    RandSeed:=1283712354;
    Randomize;
    for j:=0 to Length(shuffledDeck)-1 do
    begin
      index:=Random(Length(shuffledDeck));
      s := shuffledDeck[j];
      shuffledDeck[j] := shuffledDeck[index];
      shuffledDeck[index] := s;
    end;
    img:=TPicture.Create;
    try
      for i:=0 to 5 do // now draw the top 4 objective cards and display them
        for j:=0 to Length(cardDB)-1 do
          if (Pos(cardDB[j].cardTitle, shuffledDeck[i]) > 0) and
             (Pos(cardDB[j].setNumber, shuffledDeck[i]) > 0) then
          begin
            img.Clear;
            img.LoadFromFile('./DBFiles/images/' + cardDB[j].cardPic);
            case i of
              0: begin
                   imgObj1.Picture.Assign(img);
                   lblObj1.Caption := cardDB[j].cardTitle+' ('+cardDB[j].setNumber+')';
                 end;
              1: begin
                   imgObj2.Picture.Assign(img);
                   lblObj2.Caption := cardDB[j].cardTitle+' ('+cardDB[j].setNumber+')';
                 end;
              2: begin
                   imgObj3.Picture.Assign(img);
                   lblObj3.Caption := cardDB[j].cardTitle+' ('+cardDB[j].setNumber+')';
                 end;
              3: begin
                   imgObj4.Picture.Assign(img);
                   lblObj4.Caption := cardDB[j].cardTitle+' ('+cardDB[j].setNumber+')';
                 end;
            end; //case
          end; //if
    finally
      img.Free;
    end;
  end;
end;

procedure TForm1.btnCardTypesClick(Sender: TObject);
begin
  if chartCardTypesPieSeries1.Marks.Style = smsLabelPercent then
    chartCardTypesPieSeries1.Marks.Style:=smsLabelValue
  else
    chartCardTypesPieSeries1.Marks.Style:=smsLabelPercent;
end;

procedure TForm1.btnClearFiltersClick(Sender: TObject);
var
  i: Integer;
begin
  btnJedi.State:=cbUnchecked;
  btnRebels.State:=cbUnchecked;
  btnSmugglers.State:=cbUnchecked;
  btnSith.State:=cbUnchecked;
  btnNavy.State:=cbUnchecked;
  btnScum.State:=cbUnchecked;
  btnObjective.State:=cbUnchecked;
  btnUnit.State:=cbUnchecked;
  btnEnhancement.State:=cbUnchecked;
  btnEvent.State:=cbUnchecked;
  btnFate.State:=cbUnchecked;
  btnMission.State:=cbUnchecked;
  cbxFilterTrait.ItemIndex := 0;
  cbxFilterSide.ItemIndex := 0;
  for i:=0 to Length(selectedProducts)-1 do
    selectedProducts[i,1] := '0';
  SetStringGrid;
end;

procedure TForm1.btnSaveCardClick(Sender: TObject);
var
  recCnt: integer;
  cIcons: String;

  function CleanString(s: String): string;
  var
    i: integer;
    tmpS: string;
  begin
    tmpS := '';
    for i:=1 to Length(s) do
      if (ord(s[i]) > 31) and (ord(s[i]) < 123) then
        tmpS := tmpS + s[i];
    result := tmpS;
  end;

  procedure PutCardInGrid;
  begin
    sgdCards.RowCount:=recordCount+1;
    sgdCards.Cells[0,recCnt+1] := cardDB[recCnt].cardNumber;
    sgdCards.Cells[1,recCnt+1] := cardDB[recCnt].product;
    sgdCards.Cells[2,recCnt+1] := cardDB[recCnt].cardTitle;
    sgdCards.Cells[3,recCnt+1] := cardDB[recCnt].unique;
    sgdCards.Cells[4,recCnt+1] := cardDB[recCnt].setNumber;
    sgdCards.Cells[5,recCnt+1] := cardDB[recCnt].cardInSet;
    sgdCards.Cells[6,recCnt+1] := cardDB[recCnt].faction;
    sgdCards.Cells[7,recCnt+1] := cardDB[recCnt].side;
    sgdCards.Cells[8,recCnt+1] := cardDB[recCnt].cardType;
    sgdCards.Cells[9,recCnt+1] := cardDB[recCnt].cost;
    sgdCards.Cells[10,recCnt+1] := cardDB[recCnt].forcePips;
    sgdCards.Cells[11,recCnt+1] := cardDB[recCnt].resources;
    sgdCards.Cells[12,recCnt+1] := cardDB[recCnt].health;
    sgdCards.Cells[13,recCnt+1] := cardDB[recCnt].combatIcons;
    sgdCards.Cells[14,recCnt+1] := cardDB[recCnt].traits;
    sgdCards.Cells[15,recCnt+1] := cardDB[recCnt].abilityText;
    sgdCards.AutoSizeColumns;
  end;

begin
  addedCards:=True;
  Inc(recordCount);
  SetLength(cardDB, recordCount);
  recCnt := recordCount - 1; {because arrays are zero based}

  if edtCardNumber.Text <> '' then
    cardDB[recCnt].cardNumber := edtCardNumber.Text
  else
    cardDB[recCnt].cardNumber := ' ';

  if cbxProduct.Text <> '' then
    cardDB[recCnt].product := cbxProduct.Text
  else
    cardDB[recCnt].product := ' ';

  if edtCardTitle.Text <> '' then
    cardDB[recCnt].cardTitle := edtCardTitle.Text
  else
    cardDB[recCnt].cardTitle := ' ';

  if chkUnique.Checked then
    cardDB[recCnt].unique := 'X'
  else
    cardDB[recCnt].unique := ' ';

  if edtSetNumber.Text <> '' then
    cardDB[recCnt].setNumber := edtSetNumber.Text
  else
    cardDB[recCnt].setNumber := ' ';

  if cbxCardInSet.Text <> '' then
    cardDB[recCnt].cardInSet := cbxCardInSet.Text
  else
    cardDB[recCnt].cardInSet := ' ';

  if cbxFaction.Text <> '' then
    cardDB[recCnt].faction := cbxFaction.Text
  else
    cardDB[recCnt].faction := ' ';

  if cbxSide.Text <> '' then
    cardDB[recCnt].side := cbxSide.Text
  else
    cardDB[recCnt].side := ' ';

  if cbxCardType.Text <> '' then
    cardDB[recCnt].cardType := cbxCardType.Text
  else
    cardDB[recCnt].cardType := ' ';

  if cbxCost.Text <> '' then
    cardDB[recCnt].cost := cbxCost.Text
  else
    cardDB[recCnt].cost := ' ';

  if cbxForcePips.Text <> '' then
    cardDB[recCnt].forcePips := cbxForcePips.Text
  else
    cardDB[recCnt].forcePips := ' ';

  if cbxResources.Text <> '' then
    cardDB[recCnt].resources := cbxResources.Text
  else
    cardDB[recCnt].resources := ' ';

  if cbxHealth.Text <> '' then
    cardDB[recCnt].health := cbxHealth.Text
  else
    cardDB[recCnt].health := ' ';

  // Special section here where we build the combatIcons string based on what is selected in the User Interface.
  cIcons := '';
  if cbxUD.Text <> '' then
    if cIcons = '' then
      cIcons := cbxUD.Text + ':UD'
    else
      cIcons := cIcons + ', ' + cbxUD.Text + ':UD';

  if cbxOD.Text <> '' then
    if cIcons = '' then
      cIcons := cbxOD.Text + ':OD'
    else
      cIcons := cIcons + ', ' + cbxOD.Text + ':OD';

  if cbxT.Text <> '' then
    if cIcons = '' then
      cIcons := cbxT.Text + ':T'
    else
      cIcons := cIcons + ', ' + cbxT.Text + ':T';

  if cbxEUD.Text <> '' then
    if cIcons = '' then
      cIcons := cbxEUD.Text + ':EUD'
    else
      cIcons := cIcons + ', ' + cbxEUD.Text + ':EUD';

  if cbxEOD.Text <> '' then
    if cIcons = '' then
      cIcons := cbxEOD.Text + ':EOD'
    else
      cIcons := cIcons + ', ' + cbxEOD.Text + ':EOD';

  if cbxET.Text <> '' then
    if cIcons = '' then
      cIcons := cbxET.Text + ':ET'
    else
      cIcons := cIcons + ', ' + cbxET.Text + ':ET';

  if cIcons <> '' then
    cardDB[recCnt].combatIcons := cIcons
  else
    cardDB[recCnt].combatIcons := ' ';
  /////////////////////////////////////////////////////////
  if cbxTrait1.Text > '' then
    cardDB[recCnt].traits := cbxTrait1.Text;
  if cbxTrait2.Text > '' then
    cardDB[recCnt].traits := cardDB[recCnt].traits + ' ' + cbxTrait2.Text;
  if cbxTrait3.Text > '' then
    cardDB[recCnt].traits := cardDB[recCnt].traits + ' ' + cbxTrait3.Text;
  if cbxTrait4.Text > '' then
    cardDB[recCnt].traits := cardDB[recCnt].traits + ' ' + cbxTrait4.Text;

  if mmoAbilityText.Text <> '' then
    cardDB[recCnt].abilityText := CleanString(mmoAbilityText.Text)
  else
    cardDB[recCnt].abilityText := ' ';

  if lblFileName.Caption <> '' then
    cardDB[recCnt].cardPic := lblFileName.Caption
  else
    cardDB[recCnt].cardPic := ' ';

  ClearTheCard;
  PutCardInGrid;
end;

procedure TForm1.btnFactionsClick(Sender: TObject);
begin
  if chartFactionsPieSeries1.Marks.Style = smsLabelPercent then
    chartFactionsPieSeries1.Marks.Style:=smsLabelValue
  else
    chartFactionsPieSeries1.Marks.Style:=smsLabelPercent;
end;

procedure TForm1.cbxCardTypeChange(Sender: TObject);
begin
  if (cbxCardType.Text = 'Objective') or (cbxCardType.Text = 'Mission') then
  begin
    Panel3.Width := 883;
    pnlCardImage.Width := 426;
    pnlCardImage.Height := 300;
  end
  else
  begin
    Panel3.Width := 757;
    pnlCardImage.Width := 300;
    pnlCardImage.Height := 426;
  end;
end;

procedure TForm1.cbxTrait1Exit(Sender: TObject);
begin
  if cbxTrait1.Text = '' then
  begin
    cbxTrait2.Text := '';
    cbxTrait3.Text := '';
    cbxTrait4.Text := '';
    cbxTrait2.Enabled := false;
    cbxTrait3.Enabled := false;
    cbxTrait4.Enabled := false;
  end
  else
    cbxTrait2.Enabled := true;
end;


procedure TForm1.cbxTrait2Exit(Sender: TObject);
begin
  if cbxTrait2.Text = '' then
  begin
    cbxTrait3.Text := '';
    cbxTrait4.Text := '';
    cbxTrait3.Enabled := false;
    cbxTrait4.Enabled := false;
  end
  else
    cbxTrait3.Enabled := true;
end;


procedure TForm1.cbxTrait3Exit(Sender: TObject);
begin
  if cbxTrait3.Text = '' then
  begin
    cbxTrait4.Text := '';
    cbxTrait4.Enabled := false;
  end
  else
    cbxTrait4.Enabled := true;
end;


procedure TForm1.sgdCardsClick(Sender: TObject);
var
  cardNum: string;
  i: integer;
  aPic: TPicture;
begin
  selectedSet := sgdCards.Cells[4, sgdCards.Row];
  SetTheObjective(selectedSet);
  cardNum := sgdCards.Cells[5, sgdCards.Row];
  aPic := TPicture.Create;
  try
    try
      for i:=0 to Length(cardDB)-1 do
        if (cardDB[i].setNumber = selectedSet) and (cardDB[i].cardInSet = cardNum) then
        begin
          aPic.LoadFromFile('./DBFiles/images/' + cardDB[i].cardPic);
          cardImage.Picture := aPic;
          cardImage.Visible:=true;
          cardImage.Stretch := true;
        end;
    except
      cardImage.Visible:=false;
    end;
  finally
    aPic.Free;
  end;
end;

procedure TForm1.sgdCardsDblClick(Sender: TObject);
var
  setNum, forceSide: String;
  objectiveSet: array [1..6] of TCard;
  i, cnt: Integer;

  function CanAdd(cardNum, cardName: String): Boolean;
  var
    i: Integer;
    num: String;
  begin
    Result:=True;
    for i:=2 to lbxObjectives.Items.Count-1 do
      if Pos(cardName, lbxObjectives.Items[i]) > 0 then
      begin
        num:=Copy(lbxObjectives.Items[i],1,1);
        break;
      end;
    if num = '2' then
    begin
      ShowMessage('Cannot have more than 2 copies of the same Objective Set in your deck!');
      Result := False;
    end;
    if (num = '1') and
       (Pos('Limit 1 per objective deck', objectiveSet[StrToInt(cardNum)].abilityText) > 0) then
    begin
      ShowMessage('Cannot add more than 1 copy of this Objective Set to your deck!');
      Result := False;
    end;
  end;

begin
  selectedSet := sgdCards.Cells[4, sgdCards.Row];
  SetTheObjective(selectedSet);
  // special insert for faction cards...
  setNum := sgdCards.Cells[4, sgdCards.Row];
  if setNum = '0' then
  begin
    if sgdCards.Cells[6, sgdCards.Row] = sgdCards.Cells[2, sgdCards.Row] then
      lbxFaction.Items[0] := 'Faction - ' + sgdCards.Cells[6, sgdCards.Row]
    else
      lbxFaction.Items[0] := 'Faction - ' + sgdCards.Cells[6, sgdCards.Row] +
        ' (' + sgdCards.Cells[2, sgdCards.Row] + ')';
    Exit;
  end;
  // if a faction has not been chosen, then you are not allowed to add sets...
  if (not isDeckLoading) and (lbxFaction.Items[0] = 'Faction - <none selected>') then
  begin
    ShowMessage('You MUST select a faction before you can add sets to your deck!');
    Exit;
  end
  else
  if not isDeckLoading then
  begin
    if ((Pos('Jedi', lbxFaction.Items[0]) > 0) or
        (Pos('Rebel', lbxFaction.Items[0]) > 0) or
        (Pos('Smuggler', lbxFaction.Items[0]) > 0)) then
      forceSide := 'Light'
    else
      forceSide := 'Dark';
    if sgdCards.Cells[7, sgdCards.Row] <> forceSide then
    begin
      ShowMessage('Your deck''s Force affiliation is with the ' + forceSide +
                  ' side of the Force.  The chosen set is affiliated with ' +
                  'the ' + sgdCards.Cells[7, sgdCards.Row] + ' side of ' +
                  'the Force.  ' + 'This Objective Set cannot be added ' +
                  'to this deck!');
      Exit;
    end;
  end;
  // now, get all cards in the set...
  cnt := 0;
  for i:=0 to Length(cardDB)-1 do
  begin
    if cardDB[i].setNumber = setNum then
    begin
      Inc(cnt);
      objectiveSet[cnt] := cardDB[i];
    end;
    if cnt = 6 then
      break;
  end;
  // final check to see if set can be added to deck...
  for i:=1 to 6 do
    if objectiveSet[i].cardType = 'Objective' then
    begin
      if not CanAdd(objectiveSet[i].cardInSet, objectiveSet[i].cardTitle) then Exit;
      break;
    end;
  // now place the cards from the set in the proper 'buckets'...
  for i:=1 to 6 do
    case objectiveSet[i].cardType of
      'Objective':
        begin
          AddCardToBucket(lbxObjectives, objectiveSet[i].cardTitle,
           objectiveSet[i].setNumber, objectiveSet[i].cardInSet);
          if lbxObjectives.Height > 21 then
            ResizeBucket(lbxObjectives);
        end;
      'Unit':
        begin
          AddCardToBucket(lbxUnits, objectiveSet[i].cardTitle,
           objectiveSet[i].setNumber, objectiveSet[i].cardInSet);
          if lbxUnits.Height > 21 then
            ResizeBucket(lbxUnits);
        end;
      'Enhancement':
        begin
          AddCardToBucket(lbxEnhancements, objectiveSet[i].cardTitle,
           objectiveSet[i].setNumber, objectiveSet[i].cardInSet);
          if lbxEnhancements.Height > 21 then
            ResizeBucket(lbxEnhancements);
        end;
      'Event':
        begin
          AddCardToBucket(lbxEvents, objectiveSet[i].cardTitle,
           objectiveSet[i].setNumber, objectiveSet[i].cardInSet);
          if lbxEvents.Height > 21 then
            ResizeBucket(lbxEvents);
        end;
      'Fate':
        begin
          AddCardToBucket(lbxFateCards, objectiveSet[i].cardTitle,
           objectiveSet[i].setNumber, objectiveSet[i].cardInSet);
          if lbxFateCards.Height > 21 then
            ResizeBucket(lbxFateCards);
        end;
      'Mission':
        begin
          AddCardToBucket(lbxMissions, objectiveSet[i].cardTitle,
           objectiveSet[i].setNumber, objectiveSet[i].cardInSet);
          if lbxMissions.Height > 21 then
            ResizeBucket(lbxMissions);
        end;
    end;
  SetBuckets;
end;


procedure TForm1.ClearTheCard;
begin
  edtCardNumber.Text := '';
  cbxProduct.Text := '';
  edtCardTitle.Text := '';
  chkUnique.Checked := False;
  edtSetNumber.Text := '';
  cbxCardInSet.Text := '';
  cbxFaction.Text := '';
  cbxSide.Text := '';
  cbxCardType.Text := '';
  cbxCost.Text := '';
  cbxForcePips.Text := '';
  cbxResources.Text := '';
  cbxHealth.Text := '';
  cbxUD.Text := '';
  cbxOD.Text := '';
  cbxT.Text := '';
  cbxEUD.Text := '';
  cbxEOD.Text := '';
  cbxET.Text := '';
  cbxTrait1.Text := '';
  cbxTrait2.Text := '';
  cbxTrait3.Text := '';
  cbxTrait4.Text := '';
  mmoAbilityText.Text := '';
  lblFileName.Caption := '';
  imgNewCard.Picture.Clear;
end;

procedure TForm1.SetStringGrid;
var
  i: integer;
begin
  sgdCards.Clear;
  sgdCards.RowCount:= recordCount + 1;
  sgdCards.Cells[0,0] := 'Card Id#';
  sgdCards.Cells[1,0] := 'Product';
  sgdCards.Cells[2,0] := 'Card Title';
  sgdCards.Cells[3,0] := 'Unique';
  sgdCards.Cells[4,0] := 'Set';
  sgdCards.Cells[5,0] := 'Card';
  sgdCards.Cells[6,0] := 'Faction';
  sgdCards.Cells[7,0] := 'Side';
  sgdCards.Cells[8,0] := 'Type';
  sgdCards.Cells[9,0] := 'Cost';
  sgdCards.Cells[10,0] := 'Force';
  sgdCards.Cells[11,0] := 'Resources';
  sgdCards.Cells[12,0] := 'Health';
  sgdCards.Cells[13,0] := 'Icons';
  sgdCards.Cells[14,0] := 'Traits';
  sgdCards.Cells[15,0] := 'Ability Text';
  for i:= 0 to recordCount-1 do
  begin
    sgdCards.Cells[0,i+1] := cardDB[i].cardNumber;
    sgdCards.Cells[1,i+1] := cardDB[i].product;
    sgdCards.Cells[2,i+1] := cardDB[i].cardTitle;
    sgdCards.Cells[3,i+1] := cardDB[i].unique;
    sgdCards.Cells[4,i+1] := cardDB[i].setNumber;
    sgdCards.Cells[5,i+1] := cardDB[i].cardInSet;
    sgdCards.Cells[6,i+1] := cardDB[i].faction;
    sgdCards.Cells[7,i+1] := cardDB[i].side;
    sgdCards.Cells[8,i+1] := cardDB[i].cardType;
    sgdCards.Cells[9,i+1] := cardDB[i].cost;
    sgdCards.Cells[10,i+1] := cardDB[i].forcePips;
    sgdCards.Cells[11,i+1] := cardDB[i].resources;
    sgdCards.Cells[12,i+1] := cardDB[i].health;
    sgdCards.Cells[13,i+1] := cardDB[i].combatIcons;
    sgdCards.Cells[14,i+1] := cardDB[i].traits;
    sgdCards.Cells[15,i+1] := cardDB[i].abilityText;
  end;
  sgdCards.AutoSizeColumns;
end;

procedure TForm1.AddCardToBucket(var lBox: TListBox; s, osNum, cardNum: String);
var
  i, j, k: integer;
  match: boolean;
  line: String;
begin
  match:=false;
  s := s + ' (' + osNum + '-' + cardNum + ')';
  for i:=1 to lBox.Items.Count do
  begin
    line := lBox.Items[i-1];
    if (Pos(s, line) > 0) then
    begin
      match := true;
      break;
    end;
  end;
  if match then
  begin
    j := StrToInt(Copy(line,1,1));
    Inc(j);
    line := IntToStr(j) + ' - ' + s;
    lBox.Items[i-1] := line;
  end
  else
  begin
    line := '1 - ' + s;
    lBox.Items.Add(line);
  end;
  k := Pos('- ', lBox.Items[0]);
  if lBox.Items.Count > 2 then
  begin
    j:=0;
    for i:=2 to lBox.Items.Count-1 do
      j := j + StrToInt(Copy(lBox.Items[i], 1, 1));
    lBox.Items[0] := IntToStr(j) + ' ' + Trim(Copy(lBox.Items[0], k, 30));
  end;
end;

procedure TForm1.DelSetFromBuckets(setNum: String);
var
  x, cnt: Integer;
  cardName: String;
  objectiveSet: array [1..6] of TCard;

  procedure RemoveCard(var lBox: TListBox; cName: String);
  var
    c, i, j, k: Integer;
    line: String;
  begin
    for i:=2 to lBox.Items.Count-1 do
      if Copy(lBox.Items[i],5,99) = cName then
      begin
        lBox.ItemIndex := i;
        line := lBox.Items[i];
        c := StrToInt(Copy(line, 1, 1));
        if c > 1 then
        begin
          Dec(c);
          line := IntToStr(c) + ' - ' + Copy(line,5,99);
          lBox.Items[i] := line;
        end
        else
          lBox.Items.Delete(lBox.ItemIndex);
        // adjust bucket header line...
        k := Pos('- ', lBox.Items[0]);
        if lBox.Items.Count > 2 then
        begin
          j:=0;
          for c:=2 to lBox.Items.Count-1 do
            j := j + StrToInt(Copy(lBox.Items[c], 1, 1));
          lBox.Items[0] := IntToStr(j) + ' ' + Copy(lBox.Items[0], k, 99);
        end
        else
          lBox.Items[0] := '0 ' + Copy(lBox.Items[0], k, 99);
        break;
      end;
    lBox.ItemIndex:=0;
  end;

begin
  // now, get all cards in the set...
  cnt := 0;
  for x:=0 to Length(cardDB)-1 do
  begin
    if cardDB[x].setNumber = setNum then
    begin
      Inc(cnt);
      objectiveSet[cnt] := cardDB[x];
    end;
    if cnt = 6 then
      break;
  end;
  // now go through the set and remove the cards from the buckets...
  for x:=1 to 6 do
  begin
    cardName := objectiveSet[x].cardTitle + ' (' +
                objectiveSet[x].setNumber + '-' +
                objectiveSet[x].cardInSet + ')';
    case objectiveSet[x].cardType of
      'Objective'  : RemoveCard(lbxObjectives, cardName);
      'Unit'       : RemoveCard(lbxUnits, cardName);
      'Enhancement': RemoveCard(lbxEnhancements, cardName);
      'Event'      : RemoveCard(lbxEvents, cardName);
      'Fate'       : RemoveCard(lbxFateCards, cardName);
      'Mission'    : RemoveCard(lbxMissions, cardName);
    end;
  end;
end;

procedure TForm1.ResizeBucket(var lBox: TListBox);
begin
  lBox.Height := lBox.Items.Count * 16;
  lBox.ItemIndex := -1;
end;

procedure TForm1.RefreshBuckets;
begin
  lbxFaction.Items.Clear;
  lbxFaction.Items[0] := 'Faction - <none selected>';
  lbxObjectives.Items.Clear;
  lbxObjectives.Items.Add('0 - Objectives');
  lbxObjectives.Items.Add('================================');
  lbxUnits.Items.Clear;
  lbxUnits.Items.Add('0 - Units');
  lbxUnits.Items.Add('================================');
  lbxEnhancements.Items.Clear;
  lbxEnhancements.Items.Add('0 - Enhancements');
  lbxEnhancements.Items.Add('================================');
  lbxEvents.Items.Clear;
  lbxEvents.Items.Add('0 - Events');
  lbxEvents.Items.Add('================================');
  lbxFateCards.Items.Clear;
  lbxFateCards.Font.Color:=clBlack;
  lbxFateCards.Items.Add('0 - Fate Cards');
  lbxFateCards.Items.Add('================================');
  lbxMissions.Items.Clear;
  lbxMissions.Items.Add('0 - Missions');
  lbxMissions.Items.Add('================================');
end;

procedure TForm1.SetTheObjective(s: String);
var
  i: Integer;
begin
  if s = '0' then
    case sgdCards.Cells[5, sgdCards.Row] of
      '1': selectedFaction := 'Jedi';
      '2': selectedFaction := 'Rebel Alliance';
      '3': selectedFaction := 'Smugglers and Spies';
      '4': selectedFaction := 'Sith';
      '5': selectedFaction := 'Imperial Navy';
      '6': selectedFaction := 'Scum and Villainy';
    end
  else
  for i:=0 to recordCount-1 do
    if (cardDB[i].setNumber = s) and (cardDB[i].cardInSet = '1') then
    begin
      selectedFaction := cardDB[i].faction;
      break;
    end;
end;

procedure TForm1.LoadInData;
var
  F: TextFile;
  s, tmpS: string;
  i, j, recCnt: integer;
  pairs: TStringList;
begin
  pairs := TStringList.Create;
  try
    AssignFile(F, 'DBFiles\Octgn.txt');
    Reset(F);
    recCnt:=0;
    while not EoF(F) do
    begin
      SetLength(arrOctgn,recCnt+1);
      Readln(F, s);
      Split(s, pairs, '_');
      arrOctgn[recCnt][0]:=pairs[0];
      arrOctgn[recCnt][1]:=pairs[1];
      Inc(recCnt);
    end;
  finally
    CloseFile(F);
  end;

  pairs.Clear;
  try
    AssignFile(F, 'DBFiles\Lackey.txt');
    Reset(F);
    recCnt:=0;
    while not EoF(F) do
    begin
      SetLength(arrCycleLookup,recCnt+1);
      Readln(F, s);
      Split(s, pairs, '/');
      arrCycleLookup[recCnt][0]:=pairs[0];
      arrCycleLookup[recCnt][1]:=pairs[1];
      Inc(recCnt);
    end;
  finally
    pairs.Free;
    CloseFile(F);
  end;

  AssignFile(F, 'DBFiles\Cards.txt');
  Reset(F);
  recCnt := 0;
  repeat
    Readln(F, s);
    Inc(recCnt);
    SetLength(cardDB, recCnt);
    j:=0;
    repeat
      i := Pos('/', s);
      if i > 0 then
        tmpS := Copy(s, 1, i-1)
      else
        tmpS := s;
      case j of
        0: cardDB[recCnt-1].cardNumber:=tmpS;
        1: cardDB[recCnt-1].product:=tmpS;
        2: cardDB[recCnt-1].cardTitle:=tmpS;
        3: cardDB[recCnt-1].unique:=tmpS;
        4: cardDB[recCnt-1].setNumber:=tmpS;
        5: cardDB[recCnt-1].cardInSet:=tmpS;
        6: cardDB[recCnt-1].faction:=tmpS;
        7: cardDB[recCnt-1].side:=tmpS;
        8: cardDB[recCnt-1].cardType:=tmpS;
        9: cardDB[recCnt-1].cost:=tmpS;
        10: cardDB[recCnt-1].forcePips:=tmpS;
        11: cardDB[recCnt-1].resources:=tmpS;
        12: cardDB[recCnt-1].health:=tmpS;
        13: cardDB[recCnt-1].combatIcons:=tmpS;
        14: cardDB[recCnt-1].traits:=tmpS;
        15: cardDB[recCnt-1].abilityText:=tmpS;
        16: cardDB[recCnt-1].cardPic:=tmpS;
      end;
      Inc(j);
      s := Copy(s, i+1, Length(s));
    until i = 0;
  until s = '';
  Dec(recCnt);
  CloseFile(F);
  sgdCards.RowCount:=recCnt + 1;
  for i := 0 to recCnt - 1 do
  begin
    sgdCards.Cells[0,i+1] := cardDB[i].cardNumber;
    sgdCards.Cells[1,i+1] := cardDB[i].product;
    sgdCards.Cells[2,i+1] := cardDB[i].cardTitle;
    sgdCards.Cells[3,i+1] := cardDB[i].unique;
    sgdCards.Cells[4,i+1] := cardDB[i].setNumber;
    sgdCards.Cells[5,i+1] := cardDB[i].cardInSet;
    sgdCards.Cells[6,i+1] := cardDB[i].faction;
    sgdCards.Cells[7,i+1] := cardDB[i].side;
    sgdCards.Cells[8,i+1] := cardDB[i].cardType;
    sgdCards.Cells[9,i+1] := cardDB[i].cost;
    sgdCards.Cells[10,i+1] := cardDB[i].forcePips;
    sgdCards.Cells[11,i+1] := cardDB[i].resources;
    sgdCards.Cells[12,i+1] := cardDB[i].health;
    sgdCards.Cells[13,i+1] := cardDB[i].combatIcons;
    sgdCards.Cells[14,i+1] := cardDB[i].traits;
    sgdCards.Cells[15,i+1] := cardDB[i].abilityText;
  end;
  recordCount := recCnt;
  SetStringGrid;

  cardTraits := TStringList.Create();
  try
    AssignFile(F, 'DBFiles\Traits.txt');
    Reset(F);
    repeat
      Readln(F, s);
      cardTraits.add(s);
    until s = '';
    for i:=0 to cardTraits.Count-1 do
    begin
      cbxTrait1.Items.Add(cardTraits[i]);
      cbxTrait2.Items.Add(cardTraits[i]);
      cbxTrait3.Items.Add(cardTraits[i]);
      cbxTrait4.Items.Add(cardTraits[i]);
      cbxFilterTrait.Items.Add(cardTraits[i]);
      SetLength(selectedTraits, i+1);
      selectedTraits[i,0] := cardTraits[i];
      selectedTraits[i,1] := '0';
    end;
  finally
    CloseFile(F);
    cardTraits.Free;
  end;

  cardSets := TStringList.Create();
  try
    AssignFile(F, 'DBFiles\CardSets.txt');
    Reset(F);
    repeat
      Readln(F, s);
      cardSets.add(s);
    until s = '';
    for i:=0 to cardSets.Count-1  do
    begin
      cbxProduct.Items.Add(cardSets[i]);
      //cbxFilterProduct.Items.Add(cardSets[i]);
      SetLength(selectedProducts, i+1);
      selectedProducts[i,0] := cardSets[i];
      selectedProducts[i,1] := '0';
    end;
  finally
    CloseFile(F);
    cardSets.Free;
  end;

  cardTypes := TStringList.Create();
  try
    AssignFile(F, 'DBFiles\CardTypes.txt');
    Reset(F);
    repeat
      Readln(F, s);
      cardTypes.add(s);
    until s = '';
    for i:=0 to cardTypes.Count-1  do
      cbxCardType.Items.Add(cardTypes[i]);
  finally
    CloseFile(F);
    cardTypes.Free;
  end;

  try
    AssignFile(F, 'DBFiles\ReusedCards.txt');
    Reset(F);
    recCnt:=0;
    repeat
      SetLength(reusedCards, recCnt+1);
      Readln(F, s);
      reusedCards[recCnt] := s;
      Inc(recCnt);
    until s = '';
  finally
    CloseFile(F);
  end;

  factions := TStringList.Create();
  try
    AssignFile(F, 'DBFiles\Factions.txt');
    Reset(F);
    repeat
      Readln(F, s);
      factions.add(s);
    until s = '';
    for i:=0 to factions.Count-1  do
      cbxFaction.Items.Add(factions[i]);
  finally
    CloseFile(F);
    factions.Free;
  end;
end;

function TForm1.ScrubStr(s: String): String;
var
  x: Integer;
  tmpS: String;
begin
  tmpS:='';
  for x:=1 to Length(s) do
    if ((Ord(s[x]) >= 65) and (Ord(s[x]) <=90)) or
       ((Ord(s[x]) >= 97) and (Ord(s[x]) <=122)) or
       ((Ord(s[x]) >= 48) and (Ord(s[x]) <=57)) or
       (Ord(s[x]) = 40) or (Ord(s[x]) = 41) or
       (Ord(s[x]) = 32) or (Ord(s[x]) = 45) then
      tmpS := tmpS + s[x];
  Result:=tmpS;
end;

end.

