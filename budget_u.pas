unit budget_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Spin;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    btnNext1: TButton;
    btnBack1: TButton;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    edtName: TEdit;
    edtSName: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    chkTC: TCheckBox;
    seAdl: TSpinEdit;
    seChl: TSpinEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    seDaysV: TSpinEdit;
    lbl3: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    lbl4: TLabel;
    seDaysT: TSpinEdit;
    lbl5: TLabel;
    btnTC: TBitBtn;
    img1: TImage;
    img2: TImage;
    btnNext2: TButton;
    btnBack2: TButton;
    btnNext3: TButton;
    btnBack3: TButton;
    pnl3: TPanel;
    rgTransport: TRadioGroup;
    lbl6: TLabel;
    img3: TImage;
    pnl4: TPanel;
    lbl7: TLabel;
    txt1: TStaticText;
    edtFuelecc: TEdit;
    chkDetails: TCheckBox;
    pnl5: TPanel;
    seDist: TSpinEdit;
    lbl8: TLabel;
    lbl9: TLabel;
    edtFuel: TEdit;
    lbl10: TLabel;
    btnResetDetails: TButton;
    chkToll: TCheckBox;
    edtMaint: TEdit;
    lbl11: TLabel;
    pnl6: TPanel;
    lbl12: TLabel;
    rgAMC: TRadioGroup;
    pnl7: TPanel;
    lbl13: TLabel;
    rgMP: TRadioGroup;
    btnFinish: TBitBtn;
    btnBack4: TButton;
    btnDone: TButton;
    pnl8: TPanel;
    lbl14: TLabel;
    redtPrices: TRichEdit;
    img4: TImage;
    pnl9: TPanel;
    lbl15: TLabel;
    img5: TImage;
    chkEquip: TCheckBox;
    rgSkit: TRadioGroup;
    seDisab: TSpinEdit;
    lbl20: TLabel;
    lbl17: TLabel;
    sePasses: TSpinEdit;
    lbl18: TLabel;
    chkSchool: TCheckBox;
    lbl19: TLabel;
    seEntry: TSpinEdit;
    lbl21: TLabel;
    img6: TImage;
    lbl22: TLabel;
    seOther: TSpinEdit;
    seSchool: TSpinEdit;
    lbl16: TLabel;
    Label4: TLabel;
    pnlTST: TPanel;
    Label6: TLabel;
    pnlAMST: TPanel;
    pnlHCST: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtFT: TEdit;
    Label10: TLabel;
    edtAT: TEdit;
    Label11: TLabel;
    edtET: TEdit;
    edtVMT: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    edtMT: TEdit;
    Label14: TLabel;
    edtEF: TEdit;
    pnlGT: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    btn1: TBitBtn;
    ts1: TTabSheet;
    mmo1: TMemo;
    btn2: TButton;
    lbl23: TLabel;
    lbl24: TLabel;
    pnl10: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure seDaysTEnter(Sender: TObject);
    procedure seAdlChange(Sender: TObject);
    procedure seChlChange(Sender: TObject);
    procedure seDaysVChange(Sender: TObject);
    procedure seDaysTChange(Sender: TObject);
    procedure btnNext1Click(Sender: TObject);
    procedure btnBack2Click(Sender: TObject);
    procedure btnNext2Click(Sender: TObject);
    procedure btnBack3Click(Sender: TObject);
    procedure btnNext3Click(Sender: TObject);
    procedure btnBack4Click(Sender: TObject);
    procedure chkDetailsClick(Sender: TObject);
    procedure btnFinishClick(Sender: TObject);
    procedure rgAMCClick(Sender: TObject);
    procedure chkSchoolClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnTCClick(Sender: TObject);
    procedure btnDoneClick(Sender: TObject);
    procedure btnResetDetailsClick(Sender: TObject);
    procedure rgTransportClick(Sender: TObject);
  private
    sFirst, sSur, sFuel: String;
    iAdl, iChl, iDaysV, iDaysT, iDist, iOther: Integer;
    rMaint, rTFinal, rAtot, rFTot, rAATot, rMTot, rfuel: Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
var
  sVal1: string;
  iLoop: Integer;
begin
  seAdl.Value := 2;
  seAdl.MinValue := 1;
  edtName.SetFocus; // Set focus to the firts edit that will be used
  img1.Picture.LoadFromFile('Lesotho.bmp'); // Insert Pictures onto interphase
  img2.Picture.LoadFromFile('logo.bmp'); // ''
  img3.Picture.LoadFromFile('logoaardbol.bmp'); // ''
  img4.Picture.LoadFromFile('Lesotho.bmp'); // ''
  img5.Picture.LoadFromFile('Lesotho.bmp'); // ''
  img6.Picture.LoadFromFile('Lesotho.bmp'); // ''
  btnBack1.Enabled := False; // Person can't go back, no interphase therefore disabled
  chkToll.Checked := True; // Toll are usuallyfactored into budget fromthe start
  chkToll.Enabled := False; // Can't be enabled until chk 1 Checked
  edtFuel.Text := floattostr(13.56); // Default Fuel Price
  edtFuel.Enabled := False; // Not enabled until chk 1 checked
  redtPrices.lines.LoadFromFile('Prices.txt'); // Load preices for accommodation
  redtPrices.Enabled := False; // User can't edit this
  redtPrices.ReadOnly := True; // no cursor
  seOther.Enabled := False; // Not enabled unless 'Other' Selected
  lbl22.Enabled := False; // ''
  seSchool.Enabled := False; // ''
  lbl16.Enabled := False; // ''
  btnBack2.Enabled := False;
  ts1.TabVisible := False;
  TabSheet1.TabVisible := True;
  TabSheet2.TabVisible := False;
  TabSheet3.TabVisible := False;
  TabSheet4.TabVisible := False;
  TabSheet5.TabVisible := False;
  mmo1.lines.LoadFromFile('tandc.txt');
  mmo1.ReadOnly := True;
  mmo1.Font.Color := clRed;
  sFuel := edtFuel.Text;
  edtMaint.Text := '0';
  edtMaint.Enabled := False;
  seDisab.MaxValue := (iAdl + iChl);
  seDisab.MinValue := 0;
  sePasses.Value := 1;
  sePasses.MaxValue := seDaysV.Value;
  sePasses.MinValue := 0;
  seEntry.MaxValue := seDaysV.Value;
  seEntry.MinValue := 0;
  edtFuelecc.Text := '0';
  sVal1 := 'AfriSki Budget Planner';
  Label1.Caption := '';
  for iLoop := 1 to length(sVal1) do
  begin
    refresh;
    sleep(50);
    Label1.Caption := Label1.Caption + sVal1[iLoop];
    DoubleBuffered := True;
  end;
end;

procedure TForm1.seDaysTEnter(Sender: TObject);
begin
  seDaysT.MaxValue := seDaysV.Value; // Data Validation
end;

procedure TForm1.seAdlChange(Sender: TObject);
begin
  seAdl.MaxValue := 10;
  seAdl.MinValue := 1;
end;

procedure TForm1.seChlChange(Sender: TObject);
begin
  seChl.MaxValue := 10;
  if seChl.Value < 0 // Data Validation
    then
    seChl.Value := 0;
end;

procedure TForm1.seDaysVChange(Sender: TObject);
begin
  if seDaysV.Value < 0 // Data Validation
    then
    seDaysV.Value := 0;
end;

procedure TForm1.seDaysTChange(Sender: TObject);
begin
  if seDaysT.Value < 0 // Data Validation
    then
    seDaysT.Value := 0;
end;

procedure TForm1.btnNext1Click(Sender: TObject);
var
  iAdl2: Integer;
begin
  iAdl2 := 0;
  sFirst := edtName.Text;
  sSur := edtSName.Text;
  iAdl := seAdl.Value;
  iChl := seChl.Value;
  iDaysV := seDaysV.Value;
  iDaysT := seDaysT.Value;

  if TryStrToInt(sFirst, iAdl2) = True // Data Validation
    then
  begin
    ShowMessage('Your Name must be Charaters only')
  end
  else
  begin
    if (sFirst = '') = True then
    begin
      ShowMessage('You have to enter a Name');
    end
    else
    begin
      if TryStrToInt(sSur, iAdl2) = True then
      begin
        ShowMessage('Your surname must be Characters only');
      end
      else
      begin
        if (sSur = '') = True then
        begin
          ShowMessage('You have to enter a Surname');
        end
        else
        begin
          if chkTC.Checked = False then
          begin
            ts1.TabVisible := False;
            TabSheet1.TabVisible := True;
            TabSheet2.TabVisible := False;
            TabSheet3.TabVisible := False;
            TabSheet4.TabVisible := False;
            TabSheet5.TabVisible := False;
            ShowMessage('You have to accept the terms and conditions.');
          end
          else
          Begin
            PageControl1.TabIndex := 1; // Going to the next Screen
            TabSheet1.TabVisible := False;
            ts1.TabVisible := False;
            TabSheet1.TabVisible := False;
            TabSheet2.TabVisible := True;
            TabSheet3.TabVisible := False;
            TabSheet4.TabVisible := False;
            TabSheet5.TabVisible := False;
          end;
        end;
      end;
    end;
  end;

end;

procedure TForm1.btnBack2Click(Sender: TObject);
begin
  PageControl1.TabIndex := 0; // 'Back' button
end;

procedure TForm1.btnNext2Click(Sender: TObject);
var
  dDoub: Double;
  itry: Integer;
  rFuelecc: Real;
begin
  itry := 0;
  rTFinal := 0;
  rFTot := 0;
  rMaint := 0;

  if rgTransport.ItemIndex = -1 then
  begin
    Dialogs.MessageDlg('Select your Transport type', mtError, [mbOK], 0)
  end
  else
  begin
    if edtFuel.Text = '' then
    begin
      Dialogs.MessageDlg('Please enter a fuel cost', mtError, [mbOK], 0)
    end
    else
    begin
      if not(TryStrToFloat(sFuel, dDoub)) then
        Dialogs.MessageDlg('Fuel cost can only be numbers', mtError, [mbOK], 0)
      else
      begin
        if TryStrToInt(edtMaint.Text, itry) = False then
        begin
          Dialogs.MessageDlg('Vehicle Maintenace Must be Numbers only',
            mtError, [mbOK], 0);
        end
        else
        begin
          rfuel := strtofloat(edtMaint.Text);
          if (edtFuelecc.Text = '') and (rgTransport.ItemIndex = 1) then
          begin
            Dialogs.MessageDlg('Please enter your vehicle"s fuel economy',
              mtError, [mbOK], 0);
          end
          else if seDist.Value = 0 then
          begin
            Dialogs.MessageDlg('Please enter a Distance', mtError, [mbOK], 0)
          end
          else
          begin
            ts1.TabVisible := False;
            TabSheet1.TabVisible := False;
            TabSheet2.TabVisible := False;
            TabSheet3.TabVisible := True;
            TabSheet4.TabVisible := False;
            TabSheet5.TabVisible := False;
            PageControl1.TabIndex := 2;
          end;
        end;
      end;
    end;
  end;

  rfuel := strtofloat(edtFuel.Text);
  iDist := seDist.Value;
  rFuelecc := strtofloat(edtFuelecc.Text);
  rMaint := strtofloat(edtMaint.Text);
  if chkToll.Checked = True then
  begin
    rTFinal := iDist * 0.25;
  end
  else
  begin
    rTFinal := 0;
  end;

  if rgTransport.ItemIndex = 0 then
  begin
    chkToll.Checked := False;
  end
  else
  begin
    rFTot := (rFuelecc / 100) * (iDist + 50) * rfuel;
  end;
  edtVMT.Text := FloatToStrF(rMaint, ffCurrency, 8, 2);
  rMaint := rMaint + rTFinal;
  pnlTST.Caption := FloatToStrF(Round(2 * (rFTot) + rMaint), ffCurrency, 8, 2);
  edtFT.Text := FloatToStrF((rFTot * 2), ffCurrency, 8, 2); // there and back
end;

procedure TForm1.btnBack3Click(Sender: TObject);
begin
  TabSheet2.TabVisible := True;
  PageControl1.TabIndex := 1; // 'Back' Button
  TabSheet3.TabVisible := False;
end;

procedure TForm1.btnNext3Click(Sender: TObject);
var
  iPTot, iAPrice: Integer;
begin
  iPTot := 0;

  if rgAMC.ItemIndex = -1 then
  begin
    Dialogs.MessageDlg('Please select Accommodation Class', mtError, [mbOK], 0)
  end
  else
  begin
    if (rgAMC.ItemIndex = 4) and (seOther.Text = '0') then
    begin
      Dialogs.MessageDlg('Please Enter your Price per person, per night',
        mtError, [mbOK], 0)
    end
    else
    begin
      if rgMP.ItemIndex = -1 then
      begin
        Dialogs.MessageDlg('Please select your meal preference', mtError,
          [mbOK], 0)
      end
      else
      begin
        PageControl1.TabIndex := 3;
        ts1.TabVisible := False;
        TabSheet1.TabVisible := False;
        TabSheet2.TabVisible := False;
        TabSheet3.TabVisible := False;
        TabSheet4.TabVisible := True;
        TabSheet5.TabVisible := False;
      end;
    end;
  end;

  iPTot := iAdl + iChl;
  iOther := seOther.Value;
  iAPrice := 0;

  if rgAMC.ItemIndex = 0 then
  begin
    iAPrice := 150;
  end
  else
  Begin
    if rgAMC.ItemIndex = 1 then
    begin
      iAPrice := 430;
    end
    else
    Begin
      if rgAMC.ItemIndex = 2 then
      begin
        iAPrice := 800;
      end
      else
      Begin
        if rgAMC.ItemIndex = 3 then
        begin
          iAPrice := 280;
        end
        else
        Begin
          if rgAMC.ItemIndex = 4 then
          begin
            iAPrice := iOther;
          end;
        end;
      end;
    end;
  end;

  rAATot := iAPrice * iPTot * iDaysV;
  edtAT.Text := FloatToStrF(rAATot, ffCurrency, 8, 2);

  if rgMP.ItemIndex = 0 then
  begin
    rMTot := iPTot * 420 * iDaysV;
  end
  else
  begin
    if rgMP.ItemIndex = 1 then
    begin
      rMTot := iPTot * 270 * iDaysV;
    end;
  end;
  edtMT.Text := FloatToStrF(rMTot, ffCurrency, 8, 2);
  pnlAMST.Caption := FloatToStrF((rMTot + rAATot), ffCurrency, 8, 2);

end;

procedure TForm1.btnBack4Click(Sender: TObject);
begin
  TabSheet3.TabVisible := True;
  PageControl1.TabIndex := 3; // 'Back' Button
  TabSheet4.TabVisible := False;
end;

procedure TForm1.chkDetailsClick(Sender: TObject);
begin
  if chkDetails.Checked = True // Make'Finer Details' editable
    then
    edtFuel.Enabled := True
  else
    edtFuel.Enabled := False;

  if chkDetails.Checked = True // ''
    then
    edtMaint.Enabled := True
  else
    edtMaint.Enabled := False;

  if chkDetails.Checked = True // ''
    then
    chkToll.Enabled := True
  else
    chkToll.Enabled := False;

end;

procedure TForm1.btnFinishClick(Sender: TObject);
var
  cName: Char;
  iPasses, iSchool, iRFee: Integer;
  rGTOTAL: Real;
begin
  rGTOTAL := 0; // Prevents output being calculated twice when Going
  iPasses := 0; // back and forth in panels.
  iSchool := 0;
  iRFee := 0;

  if (chkSchool.Checked = True) and (seSchool.Value = 0) // Data Validation
    then
  begin
    Dialogs.MessageDlg(
      'Please indicate how may days you would like to attend ski school',
      mtError, [mbOK], 0)
  end
  else
  begin
    if rgSkit.ItemIndex = -1 then
    begin
      Dialogs.MessageDlg('Please select your preferred skiing type', mtError,
        [mbOK], 0)
    end
    else
    begin
      if sePasses.Value = 0 then
      begin
        Dialogs.MessageDlg(
          'Please indicate how many days you would like to buy ski passes for',
          mtError, [mbOK], 0)
      end
      else
      begin
        if seEntry.Value = 0 then
        begin
          Dialogs.MessageDlg(
            'Please indicate how for how many days you want entry to the resort'
              , mtError, [mbOK], 0)
        end
        else
        begin
          TabSheet5.TabVisible := True;
          PageControl1.TabIndex := 4;
          TabSheet2.TabVisible := False;
          TabSheet3.TabVisible := False;
          TabSheet4.TabVisible := False;
        end;
      end;
    end;
  end;

  cName := sFirst[1]; // want only first char of name otherwise risk of not fitting
  lbl23.Caption := 'Budget Planner for ' + cName + '. ' + sSur;
  iPasses := sePasses.Value;
  iSchool := seSchool.Value;
  iRFee := seEntry.Value;

  if chkEquip.Checked = True then
  begin
    rAtot := rAtot + (iPasses * 320 * (iAdl + iChl)); // Private Transport
  end;
  edtET.Text := FloatToStrF(rAtot, ffCurrency, 8, 2); // Public Transport

  if chkSchool.Checked = True then
  begin
    rAtot := rAtot + (iSchool * 350 * (iAdl + iChl)); // Ski school calculations
  end;
  edtEF.Text := FloatToStrF((iRFee * 100), ffCurrency, 8, 2); // Output
  rAtot := rAtot + (iRFee * 100);
  rGTOTAL := (rAtot + (rMTot + rAATot) + (rFTot * 2));
  rGTOTAL := rGTOTAL + (rGTOTAL * 0.15);
  pnlHCST.Caption := FloatToStrF(rAtot, ffCurrency, 8, 2);

  pnlGT.Caption := FloatToStrF((rGTOTAL), ffCurrency, 8, 2);
  if rgTransport.ItemIndex = 0 // if Public transport is selected
    then
    ShowMessage('Please consult your Transport organisor/method for prices');
end;

procedure TForm1.rgAMCClick(Sender: TObject);
begin
  iF rgAMC.ItemIndex = 4 then
  begin
    seOther.Enabled := True;
    lbl22.Enabled := True;
  end;

  iF rgAMC.ItemIndex <> 4 then
  begin
    seOther.Enabled := False;
    lbl22.Enabled := False;
    seOther.Value := 0;
  end;

end;

procedure TForm1.chkSchoolClick(Sender: TObject);
begin
  if chkSchool.Checked = True then
  begin
    seSchool.Enabled := True;
    lbl16.Enabled := True;
    seSchool.Value := 1;
    seSchool.MaxValue := seDaysV.Value;
  end;

  if chkSchool.Checked = False then
  begin
    seSchool.Enabled := False;
    lbl16.Enabled := False;
    seSchool.Value := 0;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if Dialogs.MessageDlg(
    'Are you sure you want to restart? All information already filled in will be lost.'
      , mtWarning, [mbYes, mbNo], 0) = mrYes
  // If you want to restart show message
    then
  begin
    ts1.TabVisible := False;
    TabSheet1.TabVisible := True;
    TabSheet2.TabVisible := False;
    TabSheet3.TabVisible := False;
    TabSheet4.TabVisible := False;
    TabSheet5.TabVisible := False;
    TabSheet1.TabVisible := True;
    PageControl1.TabIndex := 0;
    edtName.Clear;
    edtName.SetFocus; // Set focus to edtName again
    edtSName.Clear; // Clear and reset information
    seAdl.Value := 1;
    seChl.Value := 0;
    seDaysV.Value := 0;
    seDaysT.Value := 0;
    chkTC.Checked := False;
    rgTransport.ItemIndex := -1;
    edtFuel.Text := '13.56';
    edtMaint.Text := '0';
    chkToll.Checked := True;
    edtFuelecc.Clear;
    seDist.Value := 0;
    chkDetails.Checked := False;
    rgAMC.ItemIndex := -1;
    seOther.Value := 0;
    rgMP.ItemIndex := -1;
    chkEquip.Checked := False;
    chkSchool.Checked := False;
    rgSkit.ItemIndex := -1;
    seDisab.Value := 0;
    sePasses.Value := 0;
    seEntry.Value := 0;
    pnlTST.Caption := '';
    pnlAMST.Caption := '';
    pnlHCST.Caption := '';
    edtFT.Clear;
    edtAT.Clear;
    edtET.Clear;
    edtVMT.Clear;
    edtMT.Clear;
    edtEF.Clear;
    pnlGT.Caption := '';
    edtFuelecc.Text := '0';
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  TabSheet1.TabVisible := True;
  TabSheet2.TabVisible := False;
  TabSheet3.TabVisible := False;
  TabSheet4.TabVisible := False;
  TabSheet5.TabVisible := False;
  ts1.TabVisible := False;
  PageControl1.TabIndex := 0;
end;

procedure TForm1.btnTCClick(Sender: TObject);
begin
  ts1.TabVisible := True;
  TabSheet1.TabVisible := False;
  TabSheet2.TabVisible := False;
  TabSheet3.TabVisible := False;
  TabSheet4.TabVisible := False;
  TabSheet5.TabVisible := False;
  PageControl1.TabIndex := 5;
end;

procedure TForm1.btnDoneClick(Sender: TObject);
begin
  ts1.TabVisible := False;
  TabSheet1.TabVisible := True;
  TabSheet2.TabVisible := False;
  TabSheet3.TabVisible := False;
  TabSheet4.TabVisible := False;
  TabSheet5.TabVisible := False;
  TabSheet1.TabVisible := True;
  PageControl1.TabIndex := 0;
  edtName.Clear;
  edtName.SetFocus; // Set focus to edtName again
  edtSName.Clear; // Clear and reset information
  seAdl.Value := 1;
  seChl.Value := 0;
  seDaysV.Value := 0;
  seDaysT.Value := 0;
  chkTC.Checked := False;
  rgTransport.ItemIndex := -1;
  edtFuel.Text := '13.56';
  edtMaint.Text := '0';
  chkToll.Checked := True;
  edtFuelecc.Clear;
  seDist.Value := 0;
  chkDetails.Checked := False;
  rgAMC.ItemIndex := -1;
  seOther.Value := 0;
  rgMP.ItemIndex := -1;
  chkEquip.Checked := False;
  chkSchool.Checked := False;
  rgSkit.ItemIndex := -1;
  seDisab.Value := 0;
  sePasses.Value := 0;
  seEntry.Value := 0;
  pnlTST.Caption := '';
  pnlAMST.Caption := '';
  pnlHCST.Caption := '';
  edtFT.Clear;
  edtAT.Clear;
  edtET.Clear;
  edtVMT.Clear;
  edtMT.Clear;
  edtEF.Clear;
  pnlGT.Caption := '';
  edtFuelecc.Text := '0';

  rFTot := 0;
end;

procedure TForm1.btnResetDetailsClick(Sender: TObject);
begin
  edtFuel.Text := floattostr(13.56);
  rfuel := 0;
  edtMaint.Text := '';
  chkToll.Checked := True;
end;

procedure TForm1.rgTransportClick(Sender: TObject);
begin
  if rgTransport.ItemIndex = 0 then
  begin
    seDist.Value := 1;
  end;

end;

end.
