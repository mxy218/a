.class public final Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;
.super Ljava/lang/Object;
.source "DateTimePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;,
        Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mCallbacks:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$1;-><init>(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mContext:Landroid/content/Context;

    .line 40
    new-instance p1, Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    invoke-direct {p1}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mHandler:Landroid/os/Handler;

    .line 43
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->setCalendar()V

    .line 44
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->setDateFormat()V

    .line 45
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->set24HourFormat()V

    .line 47
    new-instance p1, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$FormatChangeObserver;

    invoke-direct {p1, p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$FormatChangeObserver;-><init>(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;)V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 48
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->updateDateTime()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->set24HourFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->setCalendar()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;)Landroid/os/Handler;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getBestDateTimeFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 3

    .line 113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 114
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;
    .registers 3

    const-class v0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-object v1, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->sInstance:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    if-nez v1, :cond_e

    .line 61
    new-instance v1, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->sInstance:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    .line 64
    :cond_e
    sget-object p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->sInstance:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private set24HourFormat()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "kk:mm"

    goto :goto_d

    :cond_b
    const-string v0, "hh:mm"

    .line 122
    :goto_d
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->set24HourFormat(Ljava/lang/String;)V

    return-void
.end method

.method private setCalendar()V
    .registers 2

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 127
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->setCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method private setDateFormat()V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->lock_month_day:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->setDateFormatString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->lock_week:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->setWeekFormatString(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->setAmString(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->setPmString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;)V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 172
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public updateDateTime()V
    .registers 8

    .line 141
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    invoke-virtual {v1}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->get24HourFormat()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 144
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 147
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    invoke-virtual {v3}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->getDateFormatString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->getBestDateTimeFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    .line 148
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 150
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    invoke-virtual {v4}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->getWeekFormatString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 151
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "("

    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, ")"

    .line 153
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 152
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "kk:mm"

    .line 156
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    const/4 v0, 0x0

    goto :goto_6e

    :cond_59
    const/16 v1, 0x9

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->getAmString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    .line 158
    :cond_68
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mDateTimeModel:Lcom/flyme/systemuitools/aod/model/DateTimeModel;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/model/DateTimeModel;->getPmString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_6e
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_74
    :goto_74
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;

    if-eqz v1, :cond_74

    .line 162
    invoke-interface {v1, v3, v4}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;->updateDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-interface {v1, v2}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;->updateTime(Ljava/lang/CharSequence;)V

    .line 164
    invoke-interface {v1, v0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;->updateAmPm(Ljava/lang/String;)V

    goto :goto_74

    :cond_8c
    return-void
.end method
