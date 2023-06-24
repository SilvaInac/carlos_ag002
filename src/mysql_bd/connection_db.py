from sqlalchemy import create_engine
import pandas as pd


def get_data():
    frame = None
    try:
        sqlEngine       = create_engine('mysql+pymysql://root:190401@127.0.0.1', pool_recycle=3600)
        dbConnection    = sqlEngine.connect()
        frame           = pd.read_sql("select * from ag002.cancer", dbConnection);
        pd.set_option('display.expand_frame_repr', False)
    except:
        print("Error for connect data")
    else:
        dbConnection.close()
        return frame
