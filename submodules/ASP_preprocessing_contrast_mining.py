import traceback
import datetime
import pandas as pd
import re
import argparse
import sys


class Utils:

    @staticmethod
    def read_excel(path):
        return pd.read_excel(path, keep_default_na=False)

    @staticmethod
    def open_file(path):
        return open(path, mode='w')

    @staticmethod
    def map_type(s):
        type_dict = {
            'Redirect': 'redirect',
            'Outgoing SMS': 'out_sms(simple)',
            'Outgoing SMS (Ack)': 'out_sms(ack)',
            'Outgoing SMS (Foreign)': 'out_sms(foreign)',
            'Incoming SMS': 'in_sms(simple)',
            'Incoming SMS (Ack)': 'in_sms(ack)',
            'Incoming SMS (Foreign)': 'in_sms(foreign)',
            'Outgoing call': 'out_call(simple)',
            'Outgoing call (Ack)': 'out_call(ack)',
            'Outgoing call (Foreign)': 'out_call(foreign)',
            'Incoming call': 'in_call(simple)',
            'Incoming call (Ack)': 'in_call(ack)',
            'Incoming call (Foreign)': 'in_call(foreign)',
            'Configuration': 'config',
            'GPRS': 'gprs'
        }
        return type_dict[s]

    @staticmethod
    def replace_street(s):
        if s == '':
            return 'none'
        else:
            replacement = s.replace(' ', '_').lower()
            if re.search('&', replacement) is not None:
                replacement = re.sub('&', 'and', replacement)
            if replacement[0].isdigit():
                replacement = 'st_' + replacement
            return replacement

    @staticmethod
    def compute_duration(duration):
        duration_h_m_s = duration.split(':')
        duration_h_m_s.insert(2, duration_h_m_s[2].split('.')[0])
        return int(duration_h_m_s[2]) + (int(duration_h_m_s[1]) * 60) + (int(duration_h_m_s[0]) * 3600)

    @staticmethod
    def person(s):
        if s == '':
            return 'none'
        else:
            # shorter = s.split(' ')[0].lower()
            # shorter = s.replace(' ', '_').lower()
            shorter = s.lower()
            shorter = re.sub('[^A-Za-z0-9]+', '_', shorter)
            return shorter

    @staticmethod
    def parse_single_date(date):
        d_m_y = date.split('/')
        return datetime.datetime(int(d_m_y[2]), int(d_m_y[1]), int(d_m_y[0]))

    @staticmethod
    def parse_all_date(dates):
        list_of_dates = list()
        for date in dates:
            if re.search("^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$", date):
                list_of_dates.append(Utils.parse_single_date(date))
            else:
                return False, list_of_dates.clear()
        return True, list_of_dates

    @staticmethod
    def parse_single_month(month):
        m_y = month.split('/')
        return  datetime.datetime(int(m_y[1]), int(m_y[0]), 1)

    @staticmethod
    def parse_all_months(months):
        list_of_months = list()
        for month in months:
            if re.search("^(((0)[0-9])|((1)[0-2]))(\/)\d{4}$", month):
                list_of_months.append(Utils.parse_single_month(month))
            else:
                return False, list_of_months.clear()
        return True, list_of_months

    @staticmethod
    def parse_single_year(year):
        return datetime.datetime(int(year), 1, 1)

    @staticmethod
    def parse_all_years(years):
        list_of_years = list()
        for year in years:
            if re.search("\d{4}$", year):
                list_of_years.append(Utils.parse_single_year(year))
            else:
                return False, list_of_years.clear()
        return True, list_of_years

    @staticmethod
    def check_empty_dataframe(df):
        # False df not empty
        # True df empty
        return df.empty

    @staticmethod
    def check_empty_all_dataframe(dfs_list):
        df_status_list = list()
        # check if every df in empty or full
        for df in dfs_list:
            df_status_list.append(Utils.check_empty_dataframe(df))

        # If at the end of the loop the status var remains false it means that all the dfs are empty
        for s in df_status_list:
            # a df is full
            if not s:
                # there is a df full
                return True
        # al df are empty
        return False

    # check if a date (dd/mm/yyyy or mm/yyyy or yyyy) is same to another
    @staticmethod
    def is_same_date(dates):
        set_dates = set(dates)
        if len(set_dates) == len(dates):
            return False
        else:
            return True

    # convert a numeric time into a symbolic feature: morning(06:00:01-12:00:00), afternoon(12:00:01-18:00:00),
    # evening(18:00:01-23:59:59), night(00:00:00-06:00:00)
    @staticmethod
    def discretize_time(time):
        if datetime.time(6, 0, 0) <= time <= datetime.time(11, 59, 59):
            return 'morning'
        elif datetime.time(12, 0, 0) <= time <= datetime.time(17, 59, 59):
            return 'afternoon'
        elif datetime.time(18, 0, 0) <= time <= datetime.time(23, 59, 59):
            return 'evening'
        elif datetime.time(0, 0, 0) <= time <= datetime.time(5, 59, 59):
            return 'night'


class ParseDb:

    # mode=0 compare year, month, day
    # mode=1 compare year and month
    # mode=2 compare year
    @staticmethod
    def select_row_by_dates(df, mode, dates=None):
        if dates is None:
            dates = list()
        df_list = list()
        for date in dates:
            new_df = ParseDb.select_row_by_single_date(date, df, mode)
            df_list.append(new_df)
        return df_list

    # mode=0 compare year, month, day
    # mode=1 compare year and month
    # mode=2 compare year
    @staticmethod
    def select_row_by_single_date(date, df, mode):
        new_df = pd.DataFrame(columns=df.columns)
        j = 0  # index of new_df
        for row in df.itertuples():
            if mode == 0 and row.THEDATE.year == date.year and row.THEDATE.month == date.month \
                    and row.THEDATE.day == date.day:
                i = row.Index  # index row of df
                new_df.loc[j] = df.iloc[i]
                j += 1
            elif mode == 1 and row.THEDATE.year == date.year and row.THEDATE.month == date.month:
                i = row.Index  # index row of df
                new_df.loc[j] = df.iloc[i]
                j += 1
            elif mode == 2 and row.THEDATE.year == date.year:
                i = row.Index  # index row of df
                new_df.loc[j] = df.iloc[i]
                j += 1
        return new_df

    # sort by date
    @staticmethod
    def sort_row_by_date(df):
        df.sort_values(by='THEDATE', ascending=True, inplace=True)

    @staticmethod
    def change_to_time(df):
        for row in df.itertuples():
            i = row.Index
            time = row.THETIME.split('.')[0]
            date = str(row.THEDATE.year) + '-' + str(row.THEDATE.month) + '-' + str(row.THEDATE.day)
            timestamp = pd.to_datetime(date + ':' + time, format='%Y-%m-%d:%H:%M:%S')
            df.iloc[i, 5] = timestamp.time()

    # sort by time if the date is same
    @staticmethod
    def sort_row_by_time(df):
        # ParseDb.change_to_time(df)
        df.sort_values(by='THETIME', ascending=True, inplace=True)

    @staticmethod
    def sort_by_date_time(df):
        df.sort_values(by=['THEDATE', 'THETIME'], ascending=True, inplace=True)

    @staticmethod
    def sort_all_df(dfs_list):
        for df in dfs_list:
            ParseDb.change_to_time(df)
            ParseDb.sort_by_date_time(df)
            #  ParseDb.sort_row_by_date(df)
            #  ParseDb.sort_row_by_time(df)


class ToTransactionASPFacts:

    @staticmethod
    def write_transaction_facts(file, df, column_name):
        # define transaction ID
        i = 1
        for row in df.itertuples():
            t = 't' + str(i)

            # contrast by operation type
            if column_name == 'type':
                class_name = ToTransactionASPFacts.map_type(row.Type)
                file.write('class(' + t + ',' + class_name + '). ')
                caller = 'caller(' + Utils.person(row.caller) + ')'
                file.write('db(' + t + ',' + caller + '). ')
                callee = 'callee(' + Utils.person(row.callee) + ')'
                file.write('db(' + t + ',' + callee + '). ')

            # contrast by caller
            elif column_name == 'caller':
                class_name = Utils.person(row.caller)
                file.write('class(' + t + ',' + class_name + '). ')
                type_op = 'type(' + Utils.map_type(row.Type) + ')'
                file.write('db(' + t + ',' + type_op + '). ')
                callee = 'callee(' + Utils.person(row.callee) + ')'
                file.write('db(' + t + ',' + callee + '). ')

            # contrast by callee
            elif column_name == 'callee':
                class_name = Utils.person(row.callee)
                file.write('class(' + t + ',' + class_name + '). ')
                type_op = 'type(' + Utils.map_type(row.Type) + ')'
                file.write('db(' + t + ',' + type_op + '). ')
                caller = 'caller(' + Utils.person(row.caller) + ')'
                file.write('db(' + t + ',' + caller + '). ')

            street_a = 'street_a(' + Utils.replace_street(row.streeta) + ')'
            file.write('db(' + t + ',' + street_a + '). ')
            street_b = 'street_b(' + Utils.replace_street(row.streetb) + ')'
            file.write('db(' + t + ',' + street_b + '). ')
            # duration = str(Utils.compute_duration(row.THEDURATION))
            # file.write('db(' + t + ',' + duration + '). ')
            date = 'date' + '(' + str(row.THEDATE.day) + ',' + str(row.THEDATE.month) + ',' + str(row.THEDATE.year) \
                   + ')'
            file.write('db(' + t + ',' + date + '). ')
            # time = '(' + str(row.THETIME.hour) + ',' + str(row.THETIME.minute) + ',' + str(row.THETIME.second) + ')'
            time = 'time(' + Utils.discretize_time(row.THETIME) + ')'
            file.write('db(' + t + ',' + time + '). ')
            weekday = 'weekday(' + str(row.THEDATE.day_of_week) + ')'
            file.write('db(' + t + ',' + weekday + '). ')
            duration = 'duration(' + str(Utils.compute_duration(row.THEDURATION)) + ')'
            file.write('db(' + t + ',' + duration + ').\n')
            i += 1
        file.close()

    @staticmethod
    def map_type(s):
        type_dict = {
            'Redirect': 'redirect',
            'Outgoing SMS': 'out_sms',
            'Outgoing SMS (Ack)': 'out_sms',
            'Outgoing SMS (Foreign)': 'out_sms',
            'Incoming SMS': 'in_sms',
            'Incoming SMS (Ack)': 'in_sms',
            'Incoming SMS (Foreign)': 'in_sms',
            'Outgoing call': 'out_call',
            'Outgoing call (Ack)': 'out_call',
            'Outgoing call (Foreign)': 'out_call',
            'Incoming call': 'in_call',
            'Incoming call (Ack)': 'in_call',
            'Incoming call (Foreign)': 'in_call',
            'Configuration': 'config',
            'GPRS': 'gprs'
        }
        return type_dict[s]


def main():
    parser = argparse.ArgumentParser(description='Converts an input table to ASP facts for contrast mining.\n'
                                                 'If you want to filter by specific dates '
                                                 'enter the --day[-d] dd/mm/yyyy option '
                                                 'or the --month[-m] mm/yyyy option or the --year[-y] yyyy option'
                                                 '.\n If you want all dates '
                                                 'do not enter the --date[-d] and --month[-m] and --year[-y] options.')
    parser.add_argument('--xls', '-x', type=str, help='Read excel file (.xls/.xlsx) from a path', required=True)
    parser.add_argument('--output', '-o', type=str, help='Write output into a .lp file',
                        default=sys.stdout, required=True)
    parser.add_argument('--column', '-c', type=str, help='Column name to be used as a contrast class. \'type\' '
                                                         'or \'caller\' or \'callee\' ',
                        required=True, choices=['type', 'caller', 'callee'])
    group = parser.add_mutually_exclusive_group()
    group.add_argument('--day', '-d', type=str, action='append', help='Insert date (dd/mm/yyyy)', required=False)
    group.add_argument('--month', '-m', type=str, action='append', help='Insert month of year (mm/yyyy)',
                        required=False)
    group.add_argument('--year', '-y', type=str, action='append', help='Insert year (yyyy)', required=False)
    args = parser.parse_args()
    xls_file = args.xls
    column = args.column
    lp_output_file = args.output
    list_of_days = args.day
    list_of_months = args.month
    list_of_years = args.year

    # no input date
    if list_of_days is None and list_of_months is None and list_of_years is None:
        try:
            print('Read excel file...')
            df = Utils.read_excel(xls_file)
            print('Create .lp file with transaction...')
            ParseDb.change_to_time(df)
            ParseDb.sort_by_date_time(df)
            f = Utils.open_file(lp_output_file)
            # class_name = input('Please enter the name (lowercase) of the subject to be analyzed (e.g. eudokia).\n'
            #                   '> ')
            ToTransactionASPFacts.write_transaction_facts(f, df, column)
            print('Done.')
            return 0
        except Exception as e:
            traceback.print_exception(*sys.exc_info())
            return 1

    # with input date
    else:
        new_df_list = list()
        # search by day
        if list_of_months is None and list_of_years is None:
            try:
                done, list_of_days = Utils.parse_all_date(list_of_days)
                if not done:
                    print('Wrong date format.')
                    return 1
                if Utils.is_same_date(list_of_days):
                    print('There are duplicate days.')
                    return 1
                print('Read excel file...')
                df = Utils.read_excel(xls_file)
                print('Search for input dates...')
                new_df_list = ParseDb.select_row_by_dates(df, mode=0, dates=list_of_days)  # search by day
                if not Utils.check_empty_all_dataframe(new_df_list):
                    print('No date found.')
                    return 1
            except Exception as e:
                traceback.print_exception(*sys.exc_info())
                return 1

        # search by month
        elif list_of_days is None and list_of_years is None:
            try:
                done, list_of_months = Utils.parse_all_months(list_of_months)
                if not done:
                    print('Wrong date format.')
                    return 1
                if Utils.is_same_date(list_of_months):
                    print('There are duplicate months.')
                    return 1
                print('Read excel file...')
                df = Utils.read_excel(xls_file)
                print('search for input dates...')
                new_df_list = ParseDb.select_row_by_dates(df, mode=1, dates=list_of_months)  # search by month
                if not Utils.check_empty_all_dataframe(new_df_list):
                    print('No date found.')
                    return 1
            except Exception as e:
                traceback.print_exception(*sys.exc_info())
                return 1

        # search by year
        elif list_of_days is None and list_of_months is None:
            try:
                done, list_of_years = Utils.parse_all_years(list_of_years)
                if not done:
                    print('Wrong date format.')
                    return 1
                if Utils.is_same_date(list_of_years):
                    print('There are duplicate years.')
                    return 1
                print('Read excel file...')
                df = Utils.read_excel(xls_file)
                print('Search for input dates...')
                new_df_list = ParseDb.select_row_by_dates(df, mode=2, dates=list_of_years)  # search by year
                if not Utils.check_empty_all_dataframe(new_df_list):
                    print('No date found.')
                    return 1
            except Exception as e:
                traceback.print_exception(*sys.exc_info())
                return 1

        print('Create .lp file with transaction...')
        df = pd.concat(new_df_list, ignore_index=True)
        del new_df_list
        ParseDb.change_to_time(df)
        ParseDb.sort_by_date_time(df)
        f = Utils.open_file(lp_output_file)
        # class_name = input('Please enter the name (lowercase) of the subject to be analyzed (e.g. eudokia).\n'
        #                   '> ')
        ToTransactionASPFacts.write_transaction_facts(f, df, column)
        print('Done.')
        return 0


if __name__ == '__main__':
    sys.exit(main())
