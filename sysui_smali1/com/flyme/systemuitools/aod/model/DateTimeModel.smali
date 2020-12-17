.class public Lcom/flyme/systemuitools/aod/model/DateTimeModel;
.super Ljava/lang/Object;
.source "DateTimeModel.java"


# instance fields
.field private m24HourFormat:Ljava/lang/String;

.field private mAmString:Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private mDateFormatString:Ljava/lang/String;

.field private mLastLocale:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;

.field private mWeekFormatString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mLastLocale:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get24HourFormat()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->m24HourFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getAmString()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mAmString:Ljava/lang/String;

    return-object p0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public getDateFormatString()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mDateFormatString:Ljava/lang/String;

    return-object p0
.end method

.method public getPmString()Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mPmString:Ljava/lang/String;

    return-object p0
.end method

.method public getWeekFormatString()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mWeekFormatString:Ljava/lang/String;

    return-object p0
.end method

.method public set24HourFormat(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->m24HourFormat:Ljava/lang/String;

    return-void
.end method

.method public setAmString(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mAmString:Ljava/lang/String;

    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public setDateFormatString(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mDateFormatString:Ljava/lang/String;

    return-void
.end method

.method public setPmString(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mPmString:Ljava/lang/String;

    return-void
.end method

.method public setWeekFormatString(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->mWeekFormatString:Ljava/lang/String;

    return-void
.end method
