from DBTables import *

class InsCalibrationResultHandler(object):
    """
    """
    def __init__(self):
        pass

    @staticmethod
    def fetch_unsent_items_from_InsCalibrationResult(cursor):
        unsent_ins_cal_results = []
        if cursor:
            cursor.execute("SELECT * FROM InsCalibrationResult WHERE Sent = 0")
            rows = cursor.fetchall()
            for row in rows:
                cal = ins_calibration_result()
                cal.Absorbance = int(row['Absorbance'])
                cal.Barcode = row['Barcode']
                cal.ExpireDate = DateTime.Parse(row['ExpireDate'])
                cal.LotNo = row['LotNo']
                cal.Name = row['Name']
                cal.OpenDate = DateTime.Parse(row['OpenDate'])
                #cal.OpenValidDays = row['OpenValidDays']
                cal.ReagentLotNo = row['ReagentLotNo']
                cal.ResultDate = DateTime.Now
                cal.ResultValue = float(row['ResultValue'])
                cal.TestCode = row['TestCode']
                #cal.Type = row['Type']
                cal.Unit = row['Unit']
                cal.Sent = row['Sent']
                cal.ID = row['ID']
                #cal.SentDate = row['SentDate']
                unsent_ins_cal_results.append(cal)
        return unsent_ins_cal_results

    @staticmethod
    def set_InsCalibrationResults_as_sent(ins_cal_results,cursor,connect):
        for cal_result in ins_cal_results:
            if cursor and connect and isinstance(cal_result,ins_calibration_result):
                cursor.execute("UPDATE InsCalibrationResult SET Sent = 1 WHERE ID = {0}".format(cal_result.ID))
                connect.commit()


