.class Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# static fields
.field protected static final DEBUG:Z = true

.field private static final MSG_START_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field protected final mNewUser:Landroid/content/pm/UserInfo;

.field protected final mOldUser:Landroid/content/pm/UserInfo;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mSwitchingFromSystemUserMessage:Ljava/lang/String;

.field private final mSwitchingToSystemUserMessage:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 67
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    iget p1, p4, Landroid/content/pm/UserInfo;->id:I

    iput p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    .line 72
    iput-object p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    .line 73
    iput-object p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    .line 74
    iput-object p6, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 75
    iput-object p7, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->inflateContent()V

    .line 79
    if-eqz p5, :cond_28

    .line 80
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7da

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 83
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 84
    const/16 p2, 0x110

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 86
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    return-void
.end method


# virtual methods
.method inflateContent()V
    .registers 7

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1090127

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 97
    nop

    .line 98
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_3a

    .line 99
    const v3, 0x104072b

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    .line 100
    :cond_3a
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 101
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 102
    const v0, 0x10401f6

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    .line 104
    :cond_52
    const v0, 0x10401f7

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    .line 107
    :cond_5a
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_63

    .line 108
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    goto :goto_6b

    .line 109
    :cond_63
    iget-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_6b

    .line 110
    iget-object v3, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 115
    :cond_6b
    :goto_6b
    if-nez v3, :cond_7d

    .line 116
    const v3, 0x104072e

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    .line 115
    :cond_7d
    move-object v0, v3

    .line 119
    :goto_7e
    const v1, 0x102000b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public onWindowShown()V
    .registers 3

    .line 139
    const-string v0, "ActivityManagerUserSwitchingDialog"

    const-string/jumbo v1, "onWindowShown called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    .line 141
    return-void
.end method

.method public show()V
    .registers 5

    .line 125
    const-string v0, "ActivityManagerUserSwitchingDialog"

    const-string/jumbo v1, "show called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_1c

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 133
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    return-void
.end method

.method startUser()V
    .registers 4

    .line 144
    monitor-enter p0

    .line 145
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    if-nez v0, :cond_44

    .line 146
    const-string v0, "ActivityManagerUserSwitchingDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_3e

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 154
    :cond_3e
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    goto :goto_62

    .line 156
    :cond_44
    const-string v0, "ActivityManagerUserSwitchingDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_62
    monitor-exit p0

    .line 159
    return-void

    .line 158
    :catchall_64
    move-exception v0

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_64

    throw v0
.end method
