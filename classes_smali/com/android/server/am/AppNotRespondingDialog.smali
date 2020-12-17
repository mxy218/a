.class final Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppNotRespondingDialog$Data;
    }
.end annotation


# static fields
.field public static final ALREADY_SHOWING:I = -0x2

.field public static final CANT_SHOW:I = -0x1

.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .registers 13
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "data"  # Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 53
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Lcom/android/server/am/AppNotRespondingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 56
    iget-object v0, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iput-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    .line 62
    iget-object v2, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_27

    .line 63
    iget-object v2, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_28

    .line 64
    :cond_27
    const/4 v2, 0x0

    :goto_28
    nop

    .line 65
    .local v2, "name1":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 66
    .local v3, "name2":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_53

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_53

    .line 68
    if-eqz v2, :cond_4a

    .line 69
    const v4, 0x1040089

    .local v4, "resid":I
    goto :goto_64

    .line 71
    .end local v4  # "resid":I
    :cond_4a
    move-object v2, v3

    .line 72
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 73
    const v4, 0x104008b

    .restart local v4  # "resid":I
    goto :goto_64

    .line 76
    .end local v4  # "resid":I
    :cond_53
    if-eqz v2, :cond_5d

    .line 77
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 78
    const v4, 0x104008a

    .restart local v4  # "resid":I
    goto :goto_64

    .line 80
    .end local v4  # "resid":I
    :cond_5d
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 81
    const v4, 0x104008c

    .line 85
    .restart local v4  # "resid":I
    :goto_64
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v6

    .line 87
    .local v6, "bidi":Landroid/text/BidiFormatter;
    if-eqz v3, :cond_86

    .line 88
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-virtual {v0, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_96

    .line 89
    :cond_86
    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    :goto_96
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-boolean v1, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->aboveSystem:Z

    if-eqz v1, :cond_a6

    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v5, 0x7da

    invoke-virtual {v1, v5}, Landroid/view/Window;->setType(I)V

    .line 94
    :cond_a6
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 95
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application Not Responding: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    const/16 v5, 0x110

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 98
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/am/AppNotRespondingDialog;

    .line 38
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/am/AppNotRespondingDialog;

    .line 38
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"  # Landroid/view/View;

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10201a0

    if-eq v0, v1, :cond_2a

    const v1, 0x10201a2

    if-eq v0, v1, :cond_1f

    const v1, 0x10201a4

    if-eq v0, v1, :cond_14

    goto :goto_35

    .line 131
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    goto :goto_35

    .line 125
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    goto :goto_35

    .line 128
    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 129
    nop

    .line 136
    :goto_35
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"  # Landroid/os/Bundle;

    .line 103
    invoke-super {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x102002b

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 105
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x1090034

    invoke-virtual {v2, v4, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    const v2, 0x10201a2

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    .local v2, "report":Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v5, 0x0

    if-eqz v4, :cond_2f

    goto :goto_30

    :cond_2f
    move v3, v5

    .line 112
    .local v3, "hasReceiver":Z
    :goto_30
    if-eqz v3, :cond_34

    move v4, v5

    goto :goto_36

    :cond_34
    const/16 v4, 0x8

    :goto_36
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    const v4, 0x10201a0

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 114
    .local v4, "close":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v6, 0x10201a4

    invoke-virtual {p0, v6}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 116
    .local v6, "wait":Landroid/widget/TextView;
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v7, 0x1020235

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-void
.end method
