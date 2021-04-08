unit Request;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RzLabel, RzDBLbl, DBCtrls, RzDBEdit, Mask, RzDBLnEd, RzDBCmbo,
  RzBmpBtn, ExtCtrls, RzPanel, Db, Buttons, RzCmboBx, RzEdit, RzButton,
  RzRadChk, RzDBChk, RzLstBox, RzDBList, Grids, DBGrids, RzStatus, RzDBStat,
  wwdbdatetimepicker, ComCtrls, wwriched, DBTables;

type
  cTaskID = class
    ID: Int64;
  end;

  TfmRequest = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    dsRequest: TDataSource;
    dsUsers: TDataSource;
    dsPC: TDataSource;
    Splitter1: TSplitter;
    dsTask: TDataSource;
    dsIspolniteli: TDataSource;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label5: TLabel;
    RzDBLabel2: TRzDBLabel;
    Label6: TLabel;
    RzDBLabel3: TRzDBLabel;
    Label7: TLabel;
    RzDBLabel4: TRzDBLabel;
    Label9: TLabel;
    RzDBLabel5: TRzDBLabel;
    RzBmpButton1: TRzBmpButton;
    Edit1: TEdit;
    Panel3: TPanel;
    RzDBCheckBox4: TRzDBCheckBox;
    RzDBCheckBox3: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    Label18: TLabel;
    RzDBLineEdit3: TRzDBLineEdit;
    Label19: TLabel;
    Label21: TLabel;
    RzDBMemo4: TRzDBMemo;
    lbxTaskKode: TRzListBox;
    Label20: TLabel;
    RzDBMemo3: TRzDBMemo;
    Label17: TLabel;
    RzDBMemo2: TRzDBMemo;
    Label15: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label14: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    RzDBLineEdit5: TRzDBLineEdit;
    Label16: TLabel;
    RzDBCheckBox1: TRzDBCheckBox;
    Shape1: TShape;
    Shape2: TShape;
    Panel4: TPanel;
    Label12: TLabel;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    RzDBLabel7: TRzDBLabel;
    RzDBLabel8: TRzDBLabel;
    RzDBLabel9: TRzDBLabel;
    Label13: TLabel;
    RzDBLineEdit4: TRzDBLineEdit;
    Label22: TLabel;
    RzDBLabel6: TRzDBLabel;
    Panel6: TPanel;
    Label3: TLabel;
    RzDBMemo1: TRzDBMemo;
    dsUser: TDataSource;
    BitBtn4: TBitBtn;
    RzBmpButton2: TRzBmpButton;
    RzBmpButton3: TRzBmpButton;
    RzBmpButton4: TRzBmpButton;
    Edit2: TEdit;
    BitBtn6: TBitBtn;
    Panel7: TPanel;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzDBCheckBox5: TRzDBCheckBox;
    RzBmpButton5: TRzBmpButton;
    qTmpQuery: TQuery;
    qRequest: TQuery;
    qRequestTIME: TDateTimeField;
    qRequestTBEGIN: TDateTimeField;
    qRequestTEND: TDateTimeField;
    qRequestTASKTEXT: TMemoField;
    qRequestTMC_IN: TStringField;
    qRequestTMC_OUT: TStringField;
    UpdateSQL1: TUpdateSQL;
    qUsers: TQuery;
    qIspolniteli: TQuery;
    qUser: TQuery;
    qRequest_OperatorName: TStringField;
    qUserKOMN: TStringField;
    qUserVIDDIL: TStringField;
    qUserIND: TStringField;
    qPC: TQuery;
    qPCHDD1: TFloatField;
    qPCHDD2: TFloatField;
    qPCHDD3: TFloatField;
    qPCPCNAME: TStringField;
    qPCPROCNAME: TStringField;
    qPC_Hdd: TStringField;
    qTask: TQuery;
    qTaskNAME: TStringField;
    qTaskID: TIntegerField;
    qTaskARH: TSmallintField;
    qPCID: TIntegerField;
    qPCFREQ: TFloatField;
    qPCRAM: TIntegerField;
    qRequestWORKTEXT: TMemoField;
    qRequestID: TIntegerField;
    qRequestUSER_ID: TIntegerField;
    qRequestEMP_ID: TIntegerField;
    qRequestOK: TSmallintField;
    qRequestFIN: TSmallintField;
    qRequestUSER_PROBLEM: TSmallintField;
    qRequestSIGN: TSmallintField;
    qRequestPSP_OK: TSmallintField;
    qRequestARH: TSmallintField;
    qRequestFINCOST: TFloatField;
    qRequestTASK_CODE: TIntegerField;
    qRequestPC_ID: TIntegerField;
    qRequestWORK_TIME: TFloatField;
    qRequestOPERATOR_ID: TIntegerField;
    qRequestPROSMOTR: TSmallintField;
    qRequestATTENTION: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RzDBLookupComboBox2Click(Sender: TObject);
    procedure qPCCalcFields(DataSet: TDataSet);
    procedure qTaskAfterOpen(DataSet: TDataSet);
    procedure GroupBox2DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RzDBLineEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBCheckBox4Click(Sender: TObject);
    procedure RzBmpButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RzDBLineEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure qRequestAfterEdit(DataSet: TDataSet);
    procedure qRequestAfterPost(DataSet: TDataSet);
    procedure qRequestAfterCancel(DataSet: TDataSet);
    procedure Panel2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbxTaskKodeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qPCAfterOpen(DataSet: TDataSet);
    procedure GroupBox1DblClick(Sender: TObject);
    procedure wwDBDateTimePicker1DropDown(Sender: TObject);
    procedure wwDBDateTimePicker2DropDown(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RzBmpButton2Click(Sender: TObject);
    procedure RzBmpButton3Click(Sender: TObject);
    procedure RzBmpButton4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure qRequestAfterInsert(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure RzDBMemo1Exit(Sender: TObject);
    procedure RzDBMemo1Enter(Sender: TObject);
    procedure RzDBMemo2Enter(Sender: TObject);
    procedure RzDBMemo2Exit(Sender: TObject);
    procedure RzBmpButton5Click(Sender: TObject);
    procedure qRequestAfterDelete(DataSet: TDataSet);
  private
    Nomer: integer;
    Request_ID: integer;
    RequestExternal_ID: integer;
    PasportPC_Nomer: integer;
    Prosmotreno: Boolean;
  public
    class function Execute(ID: Int64; newRequest: boolean; id_ext: integer = 0): integer;
    procedure Nedostupnost;
  end;

implementation

uses main_oblik, PasportPC, SearchPC, Users, ReportRequest, ReportPC, Request_Ext;

{$R *.DFM}

class function TfmRequest.Execute(ID: Int64; newRequest: boolean; id_ext: integer = 0): integer;
var
  tNomer: integer;
  i: integer;
  Kode: Int64;
  tForm: TfmRequest;
begin
  // Если уже заявка кже открыта, то показать её.
  if ID > 0 then
     for i := 0 to High(fmMain_Oblik.Requests) do
       if (fmMain_Oblik.Requests[i] <> nil) and
          (fmMain_Oblik.Requests[i].Request_ID = ID) then
       begin
         fmMain_Oblik.Requests[i].Show;
         Execute := -1;
         Exit;
       end;
  // Создание формы.
  tNomer := Length(fmMain_Oblik.Requests);
  SetLength(fmMain_Oblik.Requests, tNomer+1);
  tForm := TfmRequest.Create(nil);
  fmMain_Oblik.Requests[tNomer] := tForm;
  tForm.Nomer := tNomer;
  if newRequest then  // Добавление новой заявки.
  begin
    // Создать новую заявку.
    with tForm.qRequest do begin
      ParamByName('ID').AsInteger := 0;
      Active := true;
      Insert;
      FieldByName('Operator_ID').AsFloat := fmMain_Oblik.UserID;
      FieldByName('Time').AsString := FormatDateTime('dd.mm.yyyy hh:nn:ss', Now);
      FieldByName('Arh').AsInteger := 0;
      FieldByName('Ok').AsInteger := 0;
      FieldByName('USER_PROBLEM').AsInteger := 0;
      FieldByName('PSP_OK').AsInteger := 0;
      FieldByName('FIN').AsInteger := 0;
      FieldByName('ATTENTION').AsInteger := 0;
    end;
    // Если заявка из Internet.
    if id_ext > 0 then
    begin
       tForm.RequestExternal_ID := id_ext;
       tForm.qRequest.FieldByName('TaskText').AsString := fmRequest_Ext.qRequestExt.FieldByName('Text').AsString;
       tForm.qRequest.FieldByName('User_ID').AsString := fmRequest_Ext.qRequestExt.FieldByName('UsrID').AsString;
       // Отобразить ПК.
       tForm.qPC.ParamByName('Us_ID').AsFloat := tForm.qRequest.FieldByName('User_ID').AsFloat;
       tForm.qPC.Active := false; tForm.qPC.Active := true;
    end;
    tForm.Label1.Caption := ' Нова заявка ';
  end else begin  // Отображение существующей заявки.
    tForm.Request_ID := ID;
    tForm.qRequest.ParamByName('ID').AsInteger := ID; //tForm.qRequest.SQL[2] := 'WHERE ID = ' + IntToStr(tForm.Request_ID);
    try
      tForm.qRequest.Active := true;
    except
      on E: Exception do
         if E.Message = 'OCI_ERROR'#$D#$A'ORA-00054: указан занятый ресурс и его получение с опцией NOWAIT'#$A then
         begin
           Application.MessageBox('Вибрана заявка відкрита іншим користувачем. Відкрити її неможливо',
             'Увага', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
           tForm.Close;
         end else begin
           raise;
           tForm.Close;
         end;
    end;
    // Подтвердить просмотр.
    if (tForm.qRequest.FieldByName('Prosmotr').AsInteger = 0) and
       (tForm.qRequest.FieldByName('Emp_ID').AsInteger = fmMain_Oblik.UserID) then
    begin
       tForm.qTmpQuery.SQL.Text := 'UPDATE Control SET Prosmotr = 1 WHERE ID = ' + IntToStr(tForm.Request_ID);
       tForm.qTmpQuery.ExecSQL;
       tForm.Prosmotreno := true;
    end;
    // Номер заявки.
    tForm.Label1.Caption := TForm.Label1.Caption + IntToStr(TForm.Request_ID) + ' ';
    // Выделить выполненные работы в списке.
    Kode := tForm.qRequest.FieldByName('Task_Code').AsInteger;
    tForm.qTask.Active := true;
    for i := 0 to tForm.lbxTaskKode.Count - 1 do
      if (cTaskID(tForm.lbxTaskKode.Items.Objects[i]).ID)and(Kode) <> 0 then
         tForm.lbxTaskKode.Selected[i] := true;
    // Отобразиьт ПК.
    tForm.qPC.ParamByName('PK_ID').AsFloat := tForm.qRequest.FieldByName('PC_ID').AsFloat;
    if tForm.qPC.ParamByName('PK_ID').AsFloat = 0 then
       tForm.qPC.ParamByName('Us_ID').AsFloat := tForm.qRequest.FieldByName('User_ID').AsFloat
    else
       tForm.qPC.ParamByName('Us_ID').AsFloat := 0;
    tForm.qPC.Active := false; tForm.qPC.Active := true;
  end;
  if fmMain_Oblik.UserLev = 2 then tForm.Nedostupnost;
  tForm.PasportPC_Nomer := -1;
  Execute := tForm.Nomer;
  tForm.qUsers.Active := true;
  tForm.qUser.Active := true;
  tForm.qPC.Active := true;
  tForm.qTask.Active := true;
  tForm.qIspolniteli.Active := true;
  tForm.Panel1.Visible := true;
  tForm.Panel2.Visible := true;
  tForm.Panel3.Visible := true;
end;

procedure TfmRequest.Nedostupnost;
begin
  RzBmpButton1.Enabled := false;  // Поиск компьютеров.
  Panel4.Enabled := false;  // Исполнитель работ.
  Panel7.Enabled := false;  // Пользователь.
  RzDBLineEdit4.ReadOnly := true;  // Дата приема заявки.
  Panel6.Enabled := false;  // Текст заявки.
  BitBtn6.Enabled := false;  // Удалить.
  RzDBCheckBox5.ReadOnly := true;  // Внимание!.
end;

procedure TfmRequest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Убрать форму запроса из списка активных форм.
  fmMain_Oblik.Requests[Nomer] := nil;
  // Непросмотренные заявки.
  fmMain_Oblik.ZayavkiTimerTimer(nil);
  Action := caFree;
end;

procedure TfmRequest.BitBtn1Click(Sender: TObject);  // Подтвердить.
var
  Code: Int64;
  i: integer;
  //s: String;
  f: TField;
  pr: boolean;
begin
  if qRequest.FieldByName('ID').AsInteger = 0 then // Получить ID для новой записи.
  begin
    qTmpQuery.SQL.Text := 'SELECT GEN_ID(Gen_Control,1) ID FROM rdb$DataBase';//'SELECT Seq_Control.NextVal ID FROM DUAL';
    qTmpQuery.Open;
    Request_ID := qTmpQuery.FieldByName('ID').AsInteger;
    qTmpQuery.Close;
    qRequest.FieldByName('ID').AsInteger := Request_ID;
    qRequest.ParamByName('ID').AsInteger := Request_ID;
    Label1.Caption := ' Заявка № ' + qRequest.FieldByName('ID').AsString + ' ';
    pr := true;
  end else begin
    pr := false;
  end;
  Code := 0;
  for i := 0 to lbxTaskKode.Count - 1 do
    if lbxTaskKode.Selected[i] then
       code := (cTaskID(lbxTaskKode.Items.Objects[i]).ID)or(Code);
  qRequest.FieldByName('Task_Code').AsInteger := Code;
  qRequest.FieldByName('PC_ID').AsString := qPC.FieldByName('ID').AsString;
  // Просмотр.
  if (fmMain_Oblik.UserLev < 2)and(fmMain_Oblik.UserID <> qRequest.FieldByName('Emp_ID').AsInteger) then
     qRequest.FieldByName('Prosmotr').AsInteger := 0;
  if Prosmotreno then
  begin
    qRequest.FieldByName('Prosmotr').AsInteger := 1;
    Prosmotreno := false;
  end;
  // Проверка на изменение записи с заявкой.
  try
    {
    if pr then
       UpdateSQL1.ModifySQL[27] := ''
    else
    with qRequest do
    begin
      s := 'and USER_ID ';
      if FieldByName('USER_ID').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_USER_ID';
      //s := s + ' and ';
      //if FieldByName('Time').OldValue = null then s :=  s + 'Time IS NULL' else s := s + 'TO_CHAR(Time, ''dd.mm.yyyy hh.mm.ss'') = ''' + DateTimeToStr(FieldByName('Time').OldValue) + '''';
      s := s + ' and  EMP_ID ';
      if FieldByName('EMP_ID').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_EMP_ID';
      //s := s + ' and  TBEGIN ';
      //if FieldByName('TBEGIN').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_TBEGIN';
      //s := s + ' and  TEND ';
      //if FieldByName('TEND').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_TEND';
      s := s + ' and  OK ';
      if FieldByName('OK').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_OK';
      s := s + ' and  FIN ';
      if FieldByName('FIN').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_FIN';
      s := s + ' and  USER_PROBLEM ';
      if FieldByName('USER_PROBLEM').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_USER_PROBLEM';
      s := s + ' and TASKTEXT ';
      if (FieldByName('TASKTEXT').OldValue = null)or(FieldByName('TASKTEXT').OldValue = '') then s :=  s + 'IS NULL' else s := s + '= :OLD_TASKTEXT';
      s := s + ' and  WORK ';
      if (FieldByName('WORK').OldValue = null)or(FieldByName('WORK').OldValue = '') then s :=  s + 'IS NULL' else s := s + '= :OLD_WORK';
      s := s + ' and  SIGN ';
      if FieldByName('SIGN').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_SIGN';
      s := s + ' and  TMC_IN ';
      if (FieldByName('TMC_IN').OldValue = null)or(FieldByName('TMC_IN').OldValue = '') then s :=  s + 'IS NULL' else s := s + '= :OLD_TMC_IN';
      s := s + ' and  TMC_OUT ';
      if (FieldByName('TMC_OUT').OldValue = null)or(FieldByName('TMC_OUT').OldValue = '') then s :=  s + 'IS NULL' else s := s + '= :OLD_TMC_OUT';
      s := s + ' and  PSP_OK ';
      if FieldByName('PSP_OK').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_PSP_OK';
      s := s + ' and FINCOST ';
      if FieldByName('FINCOST').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_FINCOST';
      s := s + ' and  TASK_CODE ';
      if FieldByName('TASK_CODE').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_TASK_CODE';
      s := s + ' and PC_ID ';
      if FieldByName('PC_ID').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_PC_ID';
      s := s + ' and  WORK_TIME ';
      if FieldByName('WORK_TIME').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_WORK_TIME';
      s := s + ' and OPERATOR_ID ';
      if FieldByName('OPERATOR_ID').OldValue = null then s :=  s + 'IS NULL' else s := s + '= :OLD_OPERATOR_ID';
      UpdateSQL1.ModifySQL[27] := s;
    end;
    }
    qRequest.Post;
    // Первое сохранение заявки из Internet.
    if pr and (RequestExternal_ID > 0) then
    begin
      fmRequest_Ext.qRequestExt.Edit;
      f := fmRequest_Ext.qRequestExt.FieldByName('Data_Ucheta');
      f.ReadOnly := false;
      f.AsString := qRequest.FieldByName('Time').AsString; //FormatDateTime('dd.mm.yyyy hh.nn.ss', Now);
      f.ReadOnly := true;
      f := fmRequest_Ext.qRequestExt.FieldByName('EmpName');
      f.ReadOnly := false;
      f.AsString := fmMain_Oblik.UserName;
      f.ReadOnly := true;
      f := fmRequest_Ext.qRequestExt.FieldByName('Control_ID');
      f.ReadOnly := false;
      f.AsInteger := Request_ID;
      f.ReadOnly := true;
      fmRequest_Ext.qRequestExt.FieldByName('Emp_ID').AsInteger := fmMain_Oblik.UserID;
      fmRequest_Ext.qRequestExt.Post;
    end;
  except
    on E: Exception do
       if E.Message = 'NOE171/UPS - Запись была удалена другим пользователем' then
          if Application.MessageBox('Заявка була змінена іншим користувачем. Записати зміни?','Увага', MB_OKCANCEL + MB_DEFBUTTON2 + MB_ICONQUESTION) = IDOK then
          begin
             UpdateSQL1.ModifySQL[27] := '';
             qRequest.Post;
          end else begin
             BitBtn2Click(nil);
          end;
       else raise;
  end;
  //qRequest.SQL[2] := 'WHERE ID = ' + IntToStr(Request_ID);
  //qRequest.Active := true;
end;

procedure TfmRequest.BitBtn2Click(Sender: TObject);  // Отменить.
var
  i: integer;
  Kode: int64;
begin
  qRequest.Cancel;
  if qRequest.FieldByName('PC_ID').AsFloat = 0 then
  begin
     qPC.ParamByName('Us_ID').AsFloat := qRequest.FieldByName('User_ID').AsFloat;
     qPC.ParamByName('PK_ID').AsFloat := 0;
  end else begin
     qPC.ParamByName('Us_ID').AsFloat := 0;
     qPC.ParamByName('PK_ID').AsFloat := qRequest.FieldByName('PC_ID').AsFloat;
  end;
  qPC.Active := false; qPC.Active := true;
  qUser.Active := false; qUser.Active := true;
  if qRequest.FieldByName('ID').AsInteger = 0 then Close;
  // Выделить выполненные работы в списке.
  Kode := qRequest.FieldByName('Task_Code').AsInteger;
  for i := 0 to lbxTaskKode.Count - 1 do
  begin
    lbxTaskKode.Selected[i] := false;
    if (cTaskID(lbxTaskKode.Items.Objects[i]).ID)and(Kode) <> 0 then
       lbxTaskKode.Selected[i] := true;
  end;
end;

procedure TfmRequest.BitBtn3Click(Sender: TObject);  // Закрыть.
begin
  if (qRequest.State = dsEdit)or(qRequest.State = dsInsert) then
     if Application.MessageBox('Заявка була змінена. Зберегти зміни?','Увага',
        MB_ICONQUESTION + MB_OKCANCEL + MB_DEFBUTTON1) = IDOK then
        BitBtn1Click(Sender);  // Подтвердить.
  Close;
end;

procedure TfmRequest.RzDBLookupComboBox2Click(Sender: TObject);
begin
  qPC.ParamByName('Us_ID').AsFloat := qUsers.FieldByName('ID').AsFloat;
  qPC.ParamByName('PK_ID').AsFloat := 0;
  qPC.Active := false; qPC.Active := true;
  qUser.Active := false; qUser.Active := true;
end;

procedure TfmRequest.qPCCalcFields(DataSet: TDataSet);
var
  s, z: string;
begin
  z := DataSet.FieldByName('Hdd1').AsString;
  s := DataSet.FieldByName('Hdd2').AsString;
  if z = '' then
     z := s
  else
     if s <> '' then
        z := z + ' + ' + s;
  s := DataSet.FieldByName('Hdd3').AsString;
  if z = '' then
     z := s
  else
     if s <> '' then
        z := z + ' + ' + s;
  DataSet.FieldByName('_Hdd').AsString := z;
end;

procedure TfmRequest.qTaskAfterOpen(DataSet: TDataSet);
var
  p: cTaskID;
begin
  lbxTaskKode.Items.Clear;
  DataSet.First;
  while not DataSet.Eof do
  begin
    p := cTaskID.Create;
    p.ID := DataSet.FieldByName('ID').AsInteger;
    lbxTaskKode.Items.AddObject(DataSet.FieldByName('Name').AsString, p);
    DataSet.Next;
  end;
end;

procedure TfmRequest.GroupBox2DblClick(Sender: TObject);
begin
  if (qPC.Active) and (qPC.FieldByName('ID').AsString <> '') then  // Если есть паспорт ПК.
     if (PasportPC_Nomer < 0) then  // Паспорт ПК показывается первый раз.
        PasportPC_Nomer := TfmPasportPC.Execute(qPC.FieldByName('ID').AsInteger, false)
     else  // Паспорт ПК уже показывался.
        if (fmMain_Oblik.PasportsPC[PasportPC_Nomer] <> nil) then  // Паспорт ПК еще не закрыт.
           TfmPasportPC(fmMain_Oblik.PasportsPC[PasportPC_Nomer]).Show
        else
           PasportPC_Nomer := TfmPasportPC.Execute(qPC.FieldByName('ID').AsInteger, false);
end;

procedure TfmRequest.RzDBLineEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0' .. '9', ',', #08]) then
  begin
     key := #0;
     beep;
  end;
end;

procedure TfmRequest.RzDBCheckBox4Click(Sender: TObject);
begin
  RzDBLineEdit3.Enabled := RzDBCheckBox4.Checked;
end;

procedure TfmRequest.RzBmpButton1Click(Sender: TObject);  // Поиск ПК.
begin
  TfmSearchPC.Execute(Self, 0);
end;

procedure TfmRequest.Edit1Change(Sender: TObject);
begin
  if not((qRequest.State = dsEdit)or(qRequest.State = dsInsert)) then
     qRequest.Edit;
  qPC.ParamByName('Us_ID').AsFloat := 0;
  qPC.ParamByName('PK_ID').AsFloat := StrToInt(Edit1.Text);
  qPC.Active := false; qPC.Active := true;
  Show;
end;

procedure TfmRequest.RzDBLineEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0' .. '9', #08]) then
  begin
     key := #0;
     beep;
  end;
end;

procedure TfmRequest.qRequestAfterEdit(DataSet: TDataSet);
begin
  BitBtn1.Enabled := true;
  BitBtn2.Enabled := true;
  BitBtn4.Enabled := false;
  BitBtn6.Enabled := false;
end;

procedure TfmRequest.qRequestAfterPost(DataSet: TDataSet);
begin
  fmMain_Oblik.CachedCommit(qRequest);
  BitBtn1.Enabled := false;
  BitBtn2.Enabled := false;
  BitBtn4.Enabled := true;
  if fmMain_Oblik.UserLev < 2 then
     BitBtn6.Enabled := true;  
end;

procedure TfmRequest.qRequestAfterCancel(DataSet: TDataSet);
begin
  BitBtn1.Enabled := false;
  BitBtn2.Enabled := false;
  BitBtn4.Enabled := true;
  if fmMain_Oblik.UserLev < 2 then
     BitBtn6.Enabled := true;  
end;

procedure TfmRequest.Panel2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel2.SetFocus;
end;

procedure TfmRequest.Panel3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel3.SetFocus;
end;

procedure TfmRequest.lbxTaskKodeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  point: TPoint;
  index: integer;
  code: int64;
begin
  point.X := X;
  point.Y := Y;
  index := lbxTaskKode.ItemAtPos(point, true);
  {
  if not((oQuRequest.State = dsEdit)or(oQuRequest.State = dsInsert)) then
  begin
    Code := oQuRequest.FieldByName('Task_Code').AsInteger;
    for i := 0 to lbxTaskKode.Count - 1 do
    begin
      lbxTaskKode.Selected[i] := false;
      if (cTaskID(lbxTaskKode.Items.Objects[i]).ID)and(Code) <> 0 then
         lbxTaskKode.Selected[i] := true
      else
         lbxTaskKode.Selected[i] := false;
    end;
    Exit;
  end;}
  if index >= 0 then
  begin
    if not((qRequest.State = dsEdit)or(qRequest.State = dsInsert)) then
       qRequest.Edit;
    code := qRequest.FieldByName('Task_Code').AsInteger;
    if lbxTaskKode.Selected[index] then
       Code := Code or cTaskID(lbxTaskKode.Items.Objects[index]).ID
    else
       Code := Code xor cTaskID(lbxTaskKode.Items.Objects[index]).ID;
    qRequest.FieldByName('Task_Code').AsInteger := code;
  end;
end;

procedure TfmRequest.qPCAfterOpen(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ID').AsInteger <> 0 then
     GroupBox2.Caption := '  ПК № ' + DataSet.FieldByName('ID').AsString + '  '
  else
     GroupBox2.Caption := '  ПК  ';
end;

procedure TfmRequest.GroupBox1DblClick(Sender: TObject);
var
  //f: boolean;
  id: Integer;
begin
  {
  if (qRequest.State = dsEdit)or(qRequest.State = dsInsert) then
     f := true
  else
     f := false;
  }   
  id := qRequest.FieldByName('User_ID').AsInteger;
  if id > 0 then
     fmUsers.Execute(Self, id{, f})
end;

procedure TfmRequest.wwDBDateTimePicker1DropDown(Sender: TObject);
begin
  wwDBDateTimePicker1.Time := Time;
end;

procedure TfmRequest.wwDBDateTimePicker2DropDown(Sender: TObject);
begin
  wwDBDateTimePicker2.Time := Time;
end;

procedure TfmRequest.BitBtn4Click(Sender: TObject);  // Печать
begin
  if fmReportRequest = nil then
     try
       fmReportRequest := TfmReportRequest.Create(nil); 
       fmReportRequest.qRequest.ParamByName('ID').AsInteger := Request_ID;
       fmReportRequest.qRequest.Active := false; fmReportRequest.qRequest.Active := true;
       fmReportRequest.QuickRep1.Preview;//Print; 
     except
       on E: Exception do
          Application.MessageBox(PChar('Печать неможлива:'#13#10 + E.Message), 'Помилка', MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
     end
  else
     Exit;
  fmReportRequest.Free;
  fmReportRequest := nil;
end;

procedure TfmRequest.RzBmpButton2Click(Sender: TObject);
begin
  qUsers.Active := false; qUsers.Active := true;
  qUser.Active := false; qUser.Active := true;
end;

procedure TfmRequest.RzBmpButton3Click(Sender: TObject);
begin
  GroupBox1DblClick(Sender);
end;

procedure TfmRequest.RzBmpButton4Click(Sender: TObject);
begin
  GroupBox2DblClick(Sender);
end;

procedure TfmRequest.Edit2Change(Sender: TObject);
begin
  if Edit2.Text = '' then Exit;
  if (qRequest.State = dsEdit)or(qRequest.State = dsInsert) then
  begin
     qRequest.FieldByName('User_ID').AsString := Edit2.Text;
     qPC.ParamByName('Us_ID').AsFloat := qRequest.FieldByName('User_ID').AsFloat;
     qPC.ParamByName('PK_ID').AsFloat := 0;
     qPC.Active := false; qPC.Active := true;
  end;
  qUsers.Active := false; qUsers.Active := true;
  qUser.Active := false; qUser.Active := true;
  Show;
end;

procedure TfmRequest.qRequestAfterInsert(DataSet: TDataSet);
begin
  BitBtn1.Enabled := true;
  BitBtn2.Enabled := true;
  BitBtn4.Enabled := false;
  BitBtn6.Enabled := false;
end;

procedure TfmRequest.BitBtn6Click(Sender: TObject);
begin
  qRequest.SQL[3] := ''; ////oQuRequest.SQL[3] := 'FOR UPDATE NOWAIT';
  try
    qRequest.Active := true;
    if qRequest.RecordCount = 0 then
       Application.MessageBox('Заявка вже видалена іншим користувачем.', 'Увага', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1)
    else
       qRequest.Delete;
    Close;
  except
    on E: Exception do
       if E.Message = 'OCI_ERROR'#$D#$A'ORA-00054: указан занятый ресурс и его получение с опцией NOWAIT'#$A then
         Application.MessageBox('Заявка редактується іншим користувачем. Видалити її неможливо. Попробуйте піздніше.',
           'Увага', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1)
       else
         raise;
  end;
end;

procedure TfmRequest.RzDBMemo1Exit(Sender: TObject);
begin
  if RzDBMemo1.Text = '' then RzDBMemo1.Text := ' ';
end;

procedure TfmRequest.RzDBMemo1Enter(Sender: TObject);
begin
  if RzDBMemo1.Text = ' ' then RzDBMemo1.Text := '';
end;

procedure TfmRequest.RzDBMemo2Enter(Sender: TObject);
begin
  if RzDBMemo2.Text = ' ' then RzDBMemo2.Text := '';
end;

procedure TfmRequest.RzDBMemo2Exit(Sender: TObject);
begin
  if RzDBMemo2.Text = '' then RzDBMemo2.Text := ' ';
end;

procedure TfmRequest.RzBmpButton5Click(Sender: TObject);
begin
  if qPC.FieldByName('ID').AsString = '' then  // Если нет паспорта ПК.
  begin
    Application.MessageBox('Немає вибраного ПК!     ', 'Увага', MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
    Exit;
  end;
  if fmReportPC = nil then
     try
       fmReportPC := TfmReportPC.Create(self);
       fmReportPC.qPC.ParamByName('ID').AsInteger := qPC.FieldByName('ID').AsInteger;
       fmReportPC.qPC.Active := true;
       fmReportPC.QuickRep1.PreviewModeless;
     except
       on E: Exception do
          Application.MessageBox(PChar('Печать неможлива:'#13#10 + E.Message), 'Помилка', MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
     end
  else
     Exit;
end;

procedure TfmRequest.qRequestAfterDelete(DataSet: TDataSet);
begin
  fmMain_Oblik.CachedCommit(qRequest);
end;

end.
