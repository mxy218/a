.class public Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "MzDonotDisturbScheduleList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;,
        Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;,
        Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;,
        Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;
    }
.end annotation


# static fields
.field private static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionModeCallback:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

.field private mActivity:Landroid/app/Activity;

.field private mAddScheduleTextView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mInMultipeChooseMode:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mLinearLayoutManager:Lflyme/support/v7/widget/LinearLayoutManager;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mMultiChoiceView:Lflyme/support/v7/widget/MultiChoiceView;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRuleToBeDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

.field private mScheduleListAdapter:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

.field private mTwoStateTextView:Lflyme/support/v7/widget/TwoStateTextView;

.field private mWeekDaysShortStrings:[Ljava/lang/String;

.field private mWeekDaysStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$1;

    invoke-direct {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->RULE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mRuleToBeDelete:Ljava/util/List;

    .line 596
    new-instance v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$5;

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$5;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mLinearLayoutManager:Lflyme/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->buildTimeSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->buildRepeatDaysSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mInMultipeChooseMode:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Z)Z
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mInMultipeChooseMode:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleListAdapter:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MultiChoiceView;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mMultiChoiceView:Lflyme/support/v7/widget/MultiChoiceView;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Lflyme/support/v7/widget/MultiChoiceView;)Lflyme/support/v7/widget/MultiChoiceView;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mMultiChoiceView:Lflyme/support/v7/widget/MultiChoiceView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/TwoStateTextView;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mTwoStateTextView:Lflyme/support/v7/widget/TwoStateTextView;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Lflyme/support/v7/widget/TwoStateTextView;)Lflyme/support/v7/widget/TwoStateTextView;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mTwoStateTextView:Lflyme/support/v7/widget/TwoStateTextView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/view/MenuItem;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mMenuDelete:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mMenuDelete:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/app/Activity;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Ljava/util/List;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mRuleToBeDelete:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/app/NotificationManager;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MzRecyclerView;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->updateScheduleList()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/view/View;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/view/LayoutInflater;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private buildRepeatDaysSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 11

    .line 315
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->repeatDayToBinary([I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v5, v2

    move v3, v1

    move v4, v3

    move v6, v4

    :goto_d
    const/4 v7, 0x7

    const/4 v8, 0x1

    if-ge v2, v7, :cond_25

    shr-int v7, p1, v2

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_1b

    if-ne v3, v1, :cond_1a

    move v3, v2

    move v6, v8

    :cond_1a
    move v4, v2

    :cond_1b
    if-eq v3, v1, :cond_22

    if-eq v6, v7, :cond_21

    add-int/lit8 v5, v5, 0x1

    :cond_21
    move v6, v7

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 339
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v3, v1, :cond_31

    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    if-ne v3, v4, :cond_43

    .line 346
    invoke-static {v3}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->getCalendarDayFromBitIndex(I)I

    move-result p1

    .line 347
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mWeekDaysStrings:[Ljava/lang/String;

    aget-object p0, p0, p1

    .line 348
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_43
    const/4 v1, 0x2

    if-ge v5, v1, :cond_48

    move v5, v8

    goto :goto_49

    :cond_48
    move v5, v0

    :goto_49
    if-nez v5, :cond_7f

    move v1, v0

    move v3, v8

    :goto_4d
    if-ge v1, v7, :cond_9f

    shr-int v4, p1, v1

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_7c

    .line 358
    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->getCalendarDayFromBitIndex(I)I

    move-result v4

    .line 359
    iget-object v5, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mWeekDaysShortStrings:[Ljava/lang/String;

    aget-object v4, v5, v4

    if-eqz v3, :cond_60

    move v3, v0

    goto :goto_74

    .line 363
    :cond_60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 364
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 367
    :cond_74
    :goto_74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    .line 368
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 373
    :cond_7f
    invoke-static {v3}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->getCalendarDayFromBitIndex(I)I

    move-result p1

    .line 374
    iget-object v3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mWeekDaysShortStrings:[Ljava/lang/String;

    aget-object p1, v3, p1

    .line 375
    invoke-static {v4}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->getCalendarDayFromBitIndex(I)I

    move-result v3

    .line 376
    iget-object v4, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mWeekDaysShortStrings:[Ljava/lang/String;

    aget-object v3, v4, v3

    const v4, 0x7f120757

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object v3, v1, v8

    .line 377
    invoke-virtual {p0, v4, v1}, Landroid/preference/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 379
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_9f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildTimeSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 12

    .line 295
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 296
    iget v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 297
    iget v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 298
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 300
    iget v4, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    iget v8, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    int-to-long v8, v8

    add-long/2addr v4, v8

    iget v8, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    int-to-long v8, v8

    mul-long/2addr v8, v6

    iget v6, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    int-to-long v6, v6

    add-long/2addr v8, v6

    cmp-long v4, v4, v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_3a

    move v4, v5

    goto :goto_3b

    :cond_3a
    move v4, v6

    .line 303
    :goto_3b
    iget v7, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v0, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 304
    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 305
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz v4, :cond_6f

    const v2, 0x7f121a80

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    .line 307
    invoke-virtual {p0, v2, v3}, Landroid/preference/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f12075a

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v6

    aput-object p1, v0, v5

    .line 308
    invoke-virtual {p0, v2, v0}, Landroid/preference/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6f
    const v2, 0x7f120759

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v6

    aput-object p1, v0, v5

    .line 311
    invoke-virtual {p0, v2, v0}, Landroid/preference/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDeleteCountSummary(I)Ljava/lang/String;
    .registers 4

    .line 285
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f120742

    .line 285
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initRecylerView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a060a

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/MzRecyclerView;

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    .line 230
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mLinearLayoutManager:Lflyme/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 231
    new-instance p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$1;)V

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleListAdapter:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    .line 232
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleListAdapter:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 234
    new-instance p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$1;)V

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mActionModeCallback:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    .line 235
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mActionModeCallback:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setMultiChoiceModeListener(Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;)V

    .line 237
    new-instance p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator;

    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p1, v0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    .line 238
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView;->setItemAnimator(Lflyme/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 240
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setChoiceMode(I)V

    .line 241
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setEnableDragSelection(Z)V

    .line 242
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setEnableHoldPress(Z)V

    .line 243
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleList:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$3;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setOnItemClickListener(Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;)V

    return-void
.end method

.method public static loadScheduleRules(Landroid/app/NotificationManager;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    const-string v1, "MzDonotDisturbScheduleList"

    if-nez p0, :cond_13

    const-string p0, "loadScheduleRules null"

    .line 156
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 159
    :cond_13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 163
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {p0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 165
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_26
    if-ge v4, v2, :cond_7f

    aget-object v5, p0, v4

    .line 166
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AutomaticZenRule;

    .line 167
    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.settings"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    goto :goto_7c

    .line 171
    :cond_3d
    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v7

    .line 170
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_48

    goto :goto_7c

    .line 175
    :cond_48
    new-instance v7, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    invoke-direct {v7}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;-><init>()V

    .line 176
    iput-object v6, v7, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    .line 177
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v7, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->id:Ljava/lang/String;

    .line 178
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadScheduleRules rule = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " id = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 181
    :cond_7f
    sget-object p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private showDeleteDialog()V
    .registers 7

    .line 263
    new-instance v0, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 264
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->setNavigationBarColor(I)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/content/res/ColorStateList;

    .line 265
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06028c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 266
    iget-object v3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mRuleToBeDelete:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 267
    invoke-direct {p0, v3}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->getDeleteCountSummary(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/CharSequence;

    aput-object v3, v5, v4

    .line 269
    new-instance v3, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$4;

    invoke-direct {v3, p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$4;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V

    invoke-virtual {v0, v5, v3, v1, v2}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z[Landroid/content/res/ColorStateList;)Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    .line 281
    invoke-virtual {v0}, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->create()Lflyme/support/v7/app/ShowAtBottomAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateScheduleList()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->loadScheduleRules(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    .line 146
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mScheduleListAdapter:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    if-eqz p0, :cond_d

    .line 147
    invoke-virtual {p0, v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->updateSortedRules(Ljava/util/List;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    .line 114
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MzDonotDisturbScheduleList"

    const/4 v0, 0x0

    const-string v1, "onCreate"

    .line 115
    invoke-static {p1, v0, v1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 p1, 0x1

    .line 116
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->setHasWhiteNavigationbar(Z)V

    .line 117
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    .line 118
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mActivity:Landroid/app/Activity;

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 120
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mNotificationManager:Landroid/app/NotificationManager;

    .line 122
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 123
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mWeekDaysStrings:[Ljava/lang/String;

    .line 124
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mWeekDaysShortStrings:[Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->loadScheduleRules(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 129
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_add_schedule"

    .line 130
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 132
    const-class p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0d01cf

    const/4 p3, 0x0

    .line 206
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .registers 1

    .line 291
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 193
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    const-string p0, "MzDonotDisturbScheduleList"

    const/4 v0, 0x0

    const-string v1, "onPause"

    .line 194
    invoke-static {p0, v0, v1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 187
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    const-string p0, "MzDonotDisturbScheduleList"

    const/4 v0, 0x0

    const-string v1, "onResume"

    .line 188
    invoke-static {p0, v0, v1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 139
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    const-string v0, "MzDonotDisturbScheduleList"

    const/4 v1, 0x0

    const-string v2, "onStart"

    .line 140
    invoke-static {v0, v1, v2}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->updateScheduleList()V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 199
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    const-string p0, "MzDonotDisturbScheduleList"

    const/4 v0, 0x0

    const-string v1, "onStop"

    .line 200
    invoke-static {p0, v0, v1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 211
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->initRecylerView(Landroid/view/View;)V

    const p2, 0x7f0a04f0

    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mEmptyView:Landroid/view/View;

    const p2, 0x7f0a006c

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mAddScheduleTextView:Landroid/widget/TextView;

    .line 215
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->mAddScheduleTextView:Landroid/widget/TextView;

    new-instance p2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$2;

    invoke-direct {p2, p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$2;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
