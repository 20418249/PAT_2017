object Form1: TForm1
  Left = 188
  Top = 141
  Caption = 'AfiSki Budget Planner'
  ClientHeight = 452
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -40
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 48
  object Label1: TLabel
    Left = 56
    Top = 8
    Width = 540
    Height = 73
    Caption = 'AfriSki Budget Planner'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -53
    Font.Name = 'Gill Sans Ultra Bold Condensed'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object img2: TImage
    Left = 600
    Top = 8
    Width = 73
    Height = 25
    Stretch = True
  end
  object img3: TImage
    Left = 8
    Top = 8
    Width = 49
    Height = 65
    Stretch = True
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 81
    Width = 675
    Height = 368
    ActivePage = TabSheet4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Registration'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      object img1: TImage
        Left = 16
        Top = 192
        Width = 305
        Height = 129
        Stretch = True
      end
      object btnNext1: TButton
        Left = 576
        Top = 296
        Width = 75
        Height = 25
        HelpType = htKeyword
        Caption = 'Next'
        TabOrder = 0
        OnClick = btnNext1Click
      end
      object btnBack1: TButton
        Left = 496
        Top = 296
        Width = 75
        Height = 25
        Caption = 'Back'
        TabOrder = 1
      end
      object chkTC: TCheckBox
        Left = 344
        Top = 272
        Width = 297
        Height = 17
        Caption = 'I have read and accept the terms and conditions'
        TabOrder = 2
      end
      object pnl1: TPanel
        Left = 16
        Top = 16
        Width = 305
        Height = 153
        Color = clScrollBar
        TabOrder = 3
        object Label5: TLabel
          Left = 37
          Top = 16
          Width = 212
          Height = 30
          Caption = 'Personal Details'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Gill Sans Ultra Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 24
          Top = 64
          Width = 61
          Height = 13
          Caption = 'First Name'
        end
        object Label3: TLabel
          Left = 24
          Top = 96
          Width = 61
          Height = 13
          Caption = 'Last Name'
        end
        object edtName: TEdit
          Left = 104
          Top = 56
          Width = 153
          Height = 21
          TabOrder = 0
        end
        object edtSName: TEdit
          Left = 104
          Top = 88
          Width = 153
          Height = 21
          TabOrder = 1
        end
      end
      object pnl2: TPanel
        Left = 344
        Top = 16
        Width = 305
        Height = 249
        Color = clScrollBar
        TabOrder = 4
        object lbl1: TLabel
          Left = 58
          Top = 64
          Width = 63
          Height = 13
          Caption = '# of Adults'
        end
        object lbl2: TLabel
          Left = 16
          Top = 96
          Width = 105
          Height = 13
          Caption = '# of Children 0/12'
        end
        object lbl3: TLabel
          Left = 10
          Top = 132
          Width = 287
          Height = 13
          Caption = 'How may days do you plan to be away from home?'
        end
        object lbl4: TLabel
          Left = 8
          Top = 176
          Width = 217
          Height = 13
          Caption = 'How many days do you plan to travel?'
        end
        object lbl5: TLabel
          Left = 56
          Top = 16
          Width = 199
          Height = 30
          Caption = 'General Details'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Gill Sans Ultra Bold'
          Font.Style = []
          ParentFont = False
        end
        object seAdl: TSpinEdit
          Left = 136
          Top = 56
          Width = 121
          Height = 22
          Hint = 'Adults are considdered to be older than 12 years'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Value = 1
          OnChange = seAdlChange
        end
        object seChl: TSpinEdit
          Left = 136
          Top = 91
          Width = 121
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
          OnChange = seChlChange
        end
        object seDaysV: TSpinEdit
          Left = 136
          Top = 147
          Width = 121
          Height = 22
          Hint = 
            'This is the total amount of days you plan to be away from home, ' +
            'including traveling days.'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Value = 0
          OnChange = seDaysVChange
        end
        object seDaysT: TSpinEdit
          Left = 136
          Top = 192
          Width = 121
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 3
          Value = 0
          OnChange = seDaysTChange
          OnEnter = seDaysTEnter
        end
      end
      object btnTC: TBitBtn
        Left = 344
        Top = 296
        Width = 139
        Height = 25
        Caption = '&Terms && Conditions'
        DoubleBuffered = True
        Kind = bkAll
        ParentDoubleBuffered = False
        TabOrder = 5
        OnClick = btnTCClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Transport'
      ImageIndex = 1
      object btnNext2: TButton
        Left = 576
        Top = 296
        Width = 75
        Height = 25
        Caption = 'Next'
        TabOrder = 0
        OnClick = btnNext2Click
      end
      object btnBack2: TButton
        Left = 496
        Top = 296
        Width = 75
        Height = 25
        Caption = 'Back'
        TabOrder = 1
        OnClick = btnBack2Click
      end
      object pnl3: TPanel
        Left = 16
        Top = 16
        Width = 305
        Height = 137
        Color = clScrollBar
        TabOrder = 2
        object lbl6: TLabel
          Left = 40
          Top = 16
          Width = 202
          Height = 30
          Caption = 'Transport Type'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Gill Sans Ultra Bold'
          Font.Style = []
          ParentFont = False
        end
        object rgTransport: TRadioGroup
          Left = 32
          Top = 56
          Width = 225
          Height = 65
          Caption = 'What type of Transport do you prefer? '
          Items.Strings = (
            'Public'
            'Private')
          TabOrder = 0
          OnClick = rgTransportClick
        end
      end
      object pnl4: TPanel
        Left = 344
        Top = 16
        Width = 305
        Height = 249
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object lbl7: TLabel
          Left = 16
          Top = 16
          Width = 268
          Height = 30
          Caption = 'General Information'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Gill Sans Ultra Bold'
          Font.Style = []
          ParentFont = False
        end
        object lbl8: TLabel
          Left = 16
          Top = 96
          Width = 135
          Height = 13
          Caption = 'Distance to AfriSki (km)'
        end
        object img4: TImage
          Left = 16
          Top = 120
          Width = 273
          Height = 113
          Stretch = True
        end
        object txt1: TStaticText
          Left = 16
          Top = 64
          Width = 148
          Height = 17
          Caption = 'Fuel economy  (l/100 km)'
          TabOrder = 0
        end
        object edtFuelecc: TEdit
          Left = 160
          Top = 56
          Width = 113
          Height = 21
          TabOrder = 1
        end
        object seDist: TSpinEdit
          Left = 160
          Top = 88
          Width = 113
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 0
        end
      end
      object chkDetails: TCheckBox
        Left = 344
        Top = 272
        Width = 177
        Height = 17
        Caption = 'Make finer details editable'
        TabOrder = 4
        OnClick = chkDetailsClick
      end
      object pnl5: TPanel
        Left = 16
        Top = 168
        Width = 305
        Height = 153
        Color = clScrollBar
        TabOrder = 5
        object lbl9: TLabel
          Left = 56
          Top = 16
          Width = 165
          Height = 30
          Caption = 'Finer Details'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Gill Sans Ultra Bold'
          Font.Style = []
          ParentFont = False
        end
        object lbl10: TLabel
          Left = 48
          Top = 64
          Width = 83
          Height = 13
          Caption = 'Fuel cost (R/l)'
        end
        object lbl11: TLabel
          Left = 16
          Top = 96
          Width = 119
          Height = 13
          Caption = 'Vehicle maintenance'
        end
        object edtFuel: TEdit
          Left = 144
          Top = 56
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object chkToll: TCheckBox
          Left = 144
          Top = 120
          Width = 121
          Height = 17
          Caption = 'toll gates/e-tolls?'
          TabOrder = 1
        end
        object edtMaint: TEdit
          Left = 144
          Top = 88
          Width = 121
          Height = 21
          TabOrder = 2
        end
      end
      object btnResetDetails: TButton
        Left = 344
        Top = 296
        Width = 137
        Height = 25
        Caption = 'Reset '#39'Finer Details'#39' '
        TabOrder = 6
        OnClick = btnResetDetailsClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Accomodation && Meals'
      ImageIndex = 2
      object btnNext3: TButton
        Left = 576
        Top = 296
        Width = 75
        Height = 25
        Caption = 'Next'
        TabOrder = 0
        OnClick = btnNext3Click
      end
      object btnBack3: TButton
        Left = 496
        Top = 296
        Width = 75
        Height = 25
        Caption = 'Back'
        TabOrder = 1
        OnClick = btnBack3Click
      end
      object pnl6: TPanel
        Left = 16
        Top = 16
        Width = 305
        Height = 305
        Color = clScrollBar
        TabOrder = 2
        object lbl12: TLabel
          Left = 48
          Top = 16
          Width = 188
          Height = 30
          Caption = 'Accomodation'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Gill Sans Ultra Bold'
          Font.Style = []
          ParentFont = False
        end
        object lbl22: TLabel
          Left = 32
          Top = 200
          Width = 125
          Height = 13
          Caption = 'If '#39'Other'#39', Price pp/pn'
        end
        object rgAMC: TRadioGroup
          Left = 32
          Top = 56
          Width = 241
          Height = 129
          Hint = 
            'Budget: R 155 pp/pn - R 320 pp/pn'#13#10'Lodges: R 480 pp/pn - R 895 p' +
            'p/pn'#13#10'Mountain: Charlets: R 565 pp/pn - R 1100 pp/pn'#13#10'Apartments' +
            ': R 485 pp/pn - R 910 pp/pn|R 155 pp/pn - R 320 pp/pn'#13#10'R 480 pp/' +
            'pn - R 895 pp/pn'#13#10'R 565 pp/pn - R 1100 pp/pn'#13#10'R 485 pp/pn - R 91' +
            '0 pp/pn'
          Caption = 'Accomodation && Meal Class'
          Items.Strings = (
            'Budget Accomodation'
            'Lodges'
            'Mountain Charlets'
            'Apartments'
            'Other')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = rgAMCClick
        end
        object redtPrices: TRichEdit
          Left = 32
          Top = 224
          Width = 241
          Height = 65
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Lines.Strings = (
            'redt1')
          ParentFont = False
          TabOrder = 1
        end
        object seOther: TSpinEdit
          Left = 168
          Top = 192
          Width = 105
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 0
        end
      end
      object pnl7: TPanel
        Left = 344
        Top = 16
        Width = 305
        Height = 265
        Color = clScrollBar
        TabOrder = 3
        object lbl13: TLabel
          Left = 112
          Top = 16
          Width = 73
          Height = 30
          Caption = 'Meals'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Gill Sans Ultra Bold'
          Font.Style = []
          ParentFont = False
        end
        object img5: TImage
          Left = 16
          Top = 128
          Width = 273
          Height = 121
          Stretch = True
        end
        object rgMP: TRadioGroup
          Left = 16
          Top = 48
          Width = 273
          Height = 73
          Caption = 'Meal Preference'
          Items.Strings = (
            'Catering'
            'Self-Catering')
          TabOrder = 0
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Hidden Costs'
      ImageIndex = 3
      object btnFinish: TBitBtn
        Left = 576
        Top = 296
        Width = 75
        Height = 25
        Caption = '&Finish'
        DoubleBuffered = True
        Kind = bkYes
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = btnFinishClick
      end
      object btnBack4: TButton
        Left = 496
        Top = 296
        Width = 75
        Height = 25
        Caption = 'Back'
        TabOrder = 1
        OnClick = btnBack4Click
      end
      object pnl9: TPanel
        Left = 16
        Top = 16
        Width = 305
        Height = 297
        Color = clScrollBar
        TabOrder = 3
        object lbl15: TLabel
          Left = 64
          Top = 16
          Width = 143
          Height = 30
          Caption = 'Equipment'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Gill Sans Ultra Bold'
          Font.Style = []
          ParentFont = False
        end
        object lbl20: TLabel
          Left = 40
          Top = 232
          Width = 211
          Height = 26
          Caption = '# of people with a physical disability:'#13#10'eg. legs or arms'
        end
        object lbl16: TLabel
          Left = 32
          Top = 104
          Width = 143
          Height = 26
          Caption = '# of days you would'#13#10'like to attend ski School:'
        end
        object chkEquip: TCheckBox
          Left = 32
          Top = 56
          Width = 161
          Height = 17
          Caption = 'Hire Skiing Equipment'
          TabOrder = 0
        end
        object rgSkit: TRadioGroup
          Left = 32
          Top = 144
          Width = 233
          Height = 73
          Caption = 'What type of skiing do you prefer?'
          Items.Strings = (
            'Ski'
            'Snowboarding')
          TabOrder = 1
        end
        object seDisab: TSpinEdit
          Left = 144
          Top = 248
          Width = 121
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 0
        end
        object chkSchool: TCheckBox
          Left = 32
          Top = 80
          Width = 241
          Height = 17
          Caption = 'Ski School (Compulsory if first time)'
          TabOrder = 3
          OnClick = chkSchoolClick
        end
        object seSchool: TSpinEdit
          Left = 184
          Top = 112
          Width = 81
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 4
          Value = 0
        end
      end
      object pnl8: TPanel
        Left = 344
        Top = 16
        Width = 305
        Height = 265
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object lbl14: TLabel
          Left = 80
          Top = 16
          Width = 144
          Height = 30
          Caption = 'Entry Fee'#39's'
          Color = clScrollBar
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Gill Sans Ultra Bold'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbl17: TLabel
          Left = 24
          Top = 56
          Width = 104
          Height = 13
          Caption = 'Buy ski passes for'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl18: TLabel
          Left = 216
          Top = 56
          Width = 31
          Height = 13
          Caption = 'days.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl19: TLabel
          Left = 24
          Top = 88
          Width = 147
          Height = 13
          Caption = 'AfriSki resort entry fee for'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl21: TLabel
          Left = 256
          Top = 88
          Width = 31
          Height = 13
          Caption = 'days.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object img6: TImage
          Left = 16
          Top = 128
          Width = 273
          Height = 121
          Stretch = True
        end
        object sePasses: TSpinEdit
          Left = 144
          Top = 48
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 0
          Value = 0
        end
        object seEntry: TSpinEdit
          Left = 184
          Top = 80
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 1
          Value = 0
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Results'
      ImageIndex = 4
      object Label4: TLabel
        Left = 136
        Top = 64
        Width = 77
        Height = 13
        Caption = 'TRANSPORT'
      end
      object Label6: TLabel
        Left = 288
        Top = 64
        Width = 166
        Height = 13
        Caption = 'ACCOMMODATION && MEALS'
      end
      object Label7: TLabel
        Left = 512
        Top = 64
        Width = 94
        Height = 13
        Caption = 'HIDDEN COSTS'
      end
      object Label8: TLabel
        Left = 8
        Top = 104
        Width = 70
        Height = 13
        Caption = 'SUB-TOTAL'
      end
      object Label9: TLabel
        Left = 136
        Top = 144
        Width = 58
        Height = 13
        Caption = 'Fuel Total'
      end
      object Label10: TLabel
        Left = 304
        Top = 144
        Width = 123
        Height = 13
        Caption = 'Accommodation Total'
      end
      object Label11: TLabel
        Left = 520
        Top = 144
        Width = 93
        Height = 13
        Caption = 'Equipment Total'
      end
      object Label12: TLabel
        Left = 112
        Top = 192
        Width = 120
        Height = 13
        Caption = 'Vehicle Maintenance'
      end
      object Label13: TLabel
        Left = 328
        Top = 192
        Width = 67
        Height = 13
        Caption = 'Meals Total'
      end
      object Label14: TLabel
        Left = 536
        Top = 192
        Width = 64
        Height = 13
        Caption = 'Entry Fee'#39's'
      end
      object Label15: TLabel
        Left = 104
        Top = 280
        Width = 174
        Height = 26
        Caption = 'GRAND TOTAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Gill Sans Ultra Bold'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 112
        Top = 304
        Width = 155
        Height = 13
        Caption = 'this includes a 15% markup'
      end
      object lbl23: TLabel
        Left = 8
        Top = 16
        Width = 644
        Height = 39
        Caption = 'Budget Planner for ?????????? ??????????'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Gill Sans Ultra Bold'
        Font.Style = []
        ParentFont = False
      end
      object btnDone: TButton
        Left = 544
        Top = 296
        Width = 105
        Height = 25
        Caption = 'Done'
        TabOrder = 0
        OnClick = btnDoneClick
      end
      object pnlTST: TPanel
        Left = 96
        Top = 88
        Width = 161
        Height = 41
        TabOrder = 1
      end
      object pnlAMST: TPanel
        Left = 288
        Top = 88
        Width = 161
        Height = 41
        TabOrder = 2
      end
      object pnlHCST: TPanel
        Left = 480
        Top = 88
        Width = 161
        Height = 41
        TabOrder = 3
      end
      object edtFT: TEdit
        Left = 112
        Top = 160
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object edtAT: TEdit
        Left = 304
        Top = 160
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object edtET: TEdit
        Left = 504
        Top = 160
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object edtVMT: TEdit
        Left = 112
        Top = 208
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object edtMT: TEdit
        Left = 304
        Top = 208
        Width = 121
        Height = 21
        TabOrder = 8
      end
      object edtEF: TEdit
        Left = 504
        Top = 208
        Width = 121
        Height = 21
        TabOrder = 9
      end
      object pnlGT: TPanel
        Left = 280
        Top = 256
        Width = 233
        Height = 57
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
    end
    object ts1: TTabSheet
      Caption = 'Terms && Conditions'
      ImageIndex = 5
      object pnl10: TPanel
        Left = 35
        Top = 17
        Width = 593
        Height = 297
        Color = clScrollBar
        TabOrder = 0
        object lbl24: TLabel
          Left = 156
          Top = 32
          Width = 283
          Height = 30
          Caption = 'Terms and Conditions'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Gill Sans Ultra Bold'
          Font.Style = []
          ParentFont = False
        end
        object mmo1: TMemo
          Left = 48
          Top = 72
          Width = 497
          Height = 137
          Lines.Strings = (
            'mmo1')
          TabOrder = 0
        end
        object btn2: TButton
          Left = 217
          Top = 232
          Width = 161
          Height = 41
          Caption = 'Done'
          TabOrder = 1
          OnClick = btn2Click
        end
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 600
    Top = 32
    Width = 75
    Height = 25
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkClose
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
  end
  object btn1: TBitBtn
    Left = 600
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Restart'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkRetry
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
  end
end
