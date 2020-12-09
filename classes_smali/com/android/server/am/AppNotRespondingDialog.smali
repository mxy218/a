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
    .registers 11

    .line 53
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Lcom/android/server/am/AppNotRespondingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 56
    iget-object p1, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    .line 62
    iget-object v1, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 63
    iget-object v1, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_29

    .line 64
    :cond_28
    move-object v1, v2

    .line 65
    :goto_29
    nop

    .line 66
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_56

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 68
    if-eqz v1, :cond_49

    .line 69
    const p2, 0x104008c

    goto :goto_67

    .line 71
    :cond_49
    nop

    .line 72
    iget-object p2, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 73
    const v1, 0x104008e

    move-object v6, v2

    move-object v2, p2

    move p2, v1

    move-object v1, v6

    goto :goto_67

    .line 76
    :cond_56
    if-eqz v1, :cond_60

    .line 77
    iget-object p2, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 78
    const p2, 0x104008d

    goto :goto_67

    .line 80
    :cond_60
    iget-object p2, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 81
    const p2, 0x104008f

    .line 85
    :goto_67
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    .line 87
    if-eqz v2, :cond_89

    .line 88
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {p1, p2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_99

    .line 89
    :cond_89
    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 87
    :goto_99
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-boolean p1, p3, Lcom/android/server/am/AppNotRespondingDialog$Data;->aboveSystem:Z

    if-eqz p1, :cond_a9

    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7da

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 94
    :cond_a9
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application Not Responding: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    const/16 p2, 0x110

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 98
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x10201a0

    if-eq p1, v0, :cond_2a

    const v0, 0x10201a2

    if-eq p1, v0, :cond_1f

    const v0, 0x10201a4

    if-eq p1, v0, :cond_14

    goto :goto_35

    .line 131
    :cond_14
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 132
    goto :goto_35

    .line 125
    :cond_1f
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 126
    goto :goto_35

    .line 128
    :cond_2a
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 129
    nop

    .line 136
    :goto_35
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 103
    invoke-super {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const p1, 0x102002b

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 105
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x1090034

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    const p1, 0x10201a2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 110
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    .line 112
    :goto_30
    if-eqz v1, :cond_34

    move v0, v2

    goto :goto_36

    :cond_34
    const/16 v0, 0x8

    :goto_36
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    const p1, 0x10201a0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 114
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const p1, 0x10201a4

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 116
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const p1, 0x1020236

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-void
.end method
