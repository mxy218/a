.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrorDialog$Data;
    }
.end annotation


# static fields
.field static ALREADY_SHOWING:I = 0x0

.field static final APP_INFO:I = 0x8

.field static BACKGROUND_USER:I = 0x0

.field static final CANCEL:I = 0x7

.field static CANT_SHOW:I = 0x0

.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x1

.field static final FORCE_QUIT_AND_REPORT:I = 0x2

.field static final MUTE:I = 0x5

.field static final RESTART:I = 0x3

.field static final TIMEOUT:I = 0x6


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsRestartable:Z

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    .line 46
    const/4 v0, -0x2

    sput v0, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    .line 47
    const/4 v0, -0x3

    sput v0, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V
    .registers 8

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/android/server/am/AppErrorDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 66
    iget-object p2, p3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 67
    iget-object p2, p3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 68
    iget p2, p3, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_2a

    iget-boolean p2, p3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    if-eqz p2, :cond_39

    .line 69
    :cond_2a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v3, "show_restart_in_crash_dialog"

    invoke-static {p2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_39

    move p2, v2

    goto :goto_3a

    :cond_39
    move p2, v1

    :goto_3a
    iput-boolean p2, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    .line 71
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p2

    .line 74
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    if-ne v3, v2, :cond_85

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 76
    nop

    .line 77
    iget-boolean p3, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz p3, :cond_61

    const p3, 0x1040072

    goto :goto_64

    .line 78
    :cond_61
    const p3, 0x1040071

    :goto_64
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 79
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 80
    invoke-virtual {p2, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 76
    invoke-virtual {v0, p3, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_a8

    .line 82
    :cond_85
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 83
    nop

    .line 84
    iget-boolean p3, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz p3, :cond_92

    const p3, 0x1040077

    goto :goto_95

    .line 85
    :cond_92
    const p3, 0x1040076

    :goto_95
    new-array v3, v2, [Ljava/lang/Object;

    .line 86
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    .line 83
    invoke-virtual {v0, p3, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    :goto_a8
    invoke-virtual {p0, v2}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 90
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p2, p2, 0x110

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 96
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 97
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_f5

    .line 98
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7da

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 102
    :cond_f5
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    .line 103
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/32 v0, 0x493e0

    .line 102
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;I)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    return-void
.end method

.method private setResult(I)V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 170
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-ne v1, p0, :cond_15

    .line 171
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 173
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 174
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 177
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    return-void

    .line 173
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    if-nez v0, :cond_a

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/AppErrorDialog;->setResult(I)V

    .line 165
    :cond_a
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->dismiss()V

    .line 166
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_42

    goto :goto_40

    .line 184
    :pswitch_8  #0x10201a3
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 185
    goto :goto_40

    .line 187
    :pswitch_13  #0x10201a2
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 188
    goto :goto_40

    .line 196
    :pswitch_1e  #0x10201a1
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 197
    goto :goto_40

    .line 190
    :pswitch_29  #0x10201a0
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 191
    goto :goto_40

    .line 193
    :pswitch_34  #0x102019f
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 194
    nop

    .line 201
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x102019f
        :pswitch_34  #0102019f
        :pswitch_29  #010201a0
        :pswitch_1e  #010201a1
        :pswitch_13  #010201a2
        :pswitch_8  #010201a3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 109
    invoke-super {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const p1, 0x102002b

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x1090035

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz p1, :cond_24

    move p1, v2

    goto :goto_25

    :cond_24
    move p1, v1

    .line 117
    :goto_25
    const v3, 0x10201a3

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 118
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-boolean v4, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_39

    move v4, v1

    goto :goto_3a

    :cond_39
    move v4, v5

    :goto_3a
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    const v3, 0x10201a2

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 121
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    if-eqz p1, :cond_4d

    move p1, v1

    goto :goto_4e

    :cond_4d
    move p1, v5

    :goto_4e
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    const p1, 0x10201a0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 124
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const p1, 0x102019f

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 126
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget-boolean p1, Landroid/os/Build;->IS_USER:Z

    if-nez p1, :cond_87

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "development_settings_enabled"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_87

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "show_mute_in_crash_dialog"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_87

    goto :goto_88

    :cond_87
    move v2, v1

    .line 132
    :goto_88
    const p1, 0x10201a1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 133
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    if-eqz v2, :cond_97

    move v5, v1

    :cond_97
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    const p1, 0x1020236

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 141
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->onStart()V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 148
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->onStop()V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    return-void
.end method
