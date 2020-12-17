.class public Lcom/meizu/server/FlymePermissionDialog;
.super Landroid/app/AlertDialog;
.source "FlymePermissionDialog.java"


# static fields
.field private static final ALLOWED_REQ:I = 0x0

.field private static final IGNORED_REQ:I = 0x1

.field private static final IGNORED_REQ_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FlymePermission"

.field private static final TIMEOUT_WAIT:J = 0x3a98L


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mOpGroup:I

.field private final mOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

.field private final mUid:I

.field private final myHandle:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/meizu/server/FLymeAppOpsHandle;IILjava/lang/String;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "handle"  # Lcom/meizu/server/FLymeAppOpsHandle;
    .param p3, "opGroup"  # I
    .param p4, "uid"  # I
    .param p5, "pkg"  # Ljava/lang/String;

    .line 57
    const v0, 0xa110030

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 35
    new-instance v0, Lcom/meizu/server/FlymePermissionDialog$1;

    invoke-direct {v0, p0}, Lcom/meizu/server/FlymePermissionDialog$1;-><init>(Lcom/meizu/server/FlymePermissionDialog;)V

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionDialog;->myHandle:Landroid/os/Handler;

    .line 59
    iput-object p2, p0, Lcom/meizu/server/FlymePermissionDialog;->mOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

    .line 60
    iput p3, p0, Lcom/meizu/server/FlymePermissionDialog;->mOpGroup:I

    .line 61
    iput p4, p0, Lcom/meizu/server/FlymePermissionDialog;->mUid:I

    .line 63
    invoke-virtual {p0}, Lcom/meizu/server/FlymePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7e0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 64
    invoke-virtual {p0}, Lcom/meizu/server/FlymePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/server/FlymePermissionDialog;->setCancelable(Z)V

    .line 68
    invoke-direct {p0, p1, p5}, Lcom/meizu/server/FlymePermissionDialog;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/server/FlymePermissionDialog;->mLabel:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/meizu/server/FlymePermissionDialog;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 70
    invoke-virtual {p0}, Lcom/meizu/server/FlymePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 71
    .local v1, "paraDef":Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/server/FlymePermissionDialog;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x110

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 74
    invoke-virtual {p0}, Lcom/meizu/server/FlymePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    const/4 v2, -0x1

    const v3, 0xa100004

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/server/FlymePermissionDialog;->myHandle:Landroid/os/Handler;

    .line 77
    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 76
    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/server/FlymePermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 78
    const/4 v2, -0x2

    const v3, 0xa1000b4

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/server/FlymePermissionDialog;->myHandle:Landroid/os/Handler;

    .line 79
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 78
    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/server/FlymePermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 80
    new-instance v2, Lcom/meizu/server/-$$Lambda$FlymePermissionDialog$PGyHy85drr5FpUsRyU_9STk6Gy4;

    invoke-direct {v2, p0}, Lcom/meizu/server/-$$Lambda$FlymePermissionDialog$PGyHy85drr5FpUsRyU_9STk6Gy4;-><init>(Lcom/meizu/server/FlymePermissionDialog;)V

    invoke-virtual {p0, v2}, Lcom/meizu/server/FlymePermissionDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 82
    const v2, 0xa100046

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/meizu/server/FlymePermissionDialog;->mLabel:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 83
    invoke-direct {p0, p1, p3}, Lcom/meizu/server/FlymePermissionDialog;->getPermName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 82
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/server/FlymePermissionDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    .end local v1  # "paraDef":Landroid/view/WindowManager$LayoutParams;
    :cond_a0
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/server/FlymePermissionDialog;)I
    .registers 2
    .param p0, "x0"  # Lcom/meizu/server/FlymePermissionDialog;

    .line 22
    iget v0, p0, Lcom/meizu/server/FlymePermissionDialog;->mOpGroup:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/server/FlymePermissionDialog;)I
    .registers 2
    .param p0, "x0"  # Lcom/meizu/server/FlymePermissionDialog;

    .line 22
    iget v0, p0, Lcom/meizu/server/FlymePermissionDialog;->mUid:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/server/FlymePermissionDialog;)Lcom/meizu/server/FLymeAppOpsHandle;
    .registers 2
    .param p0, "x0"  # Lcom/meizu/server/FlymePermissionDialog;

    .line 22
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionDialog;->mOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

    return-object v0
.end method

.method private getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "pkg"  # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/meizu/server/FlymePermissionDialog;->isForegroundPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 98
    return-object v1

    .line 101
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    .local v0, "packMan":Landroid/content/pm/PackageManager;
    const/16 v2, 0x2200

    :try_start_e
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_12} :catch_1d

    .line 108
    .local v2, "runInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 109
    if-eqz v2, :cond_1c

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 112
    :cond_1c
    return-object v1

    .line 106
    .end local v2  # "runInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1d
    move-exception v2

    .line 107
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
.end method

.method private getPermName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "opGroup"  # I

    .line 156
    const/4 v0, 0x1

    if-eq p2, v0, :cond_58

    const/16 v0, 0x14

    if-eq p2, v0, :cond_54

    const/16 v0, 0x33

    if-eq p2, v0, :cond_50

    const/16 v0, 0x38

    if-eq p2, v0, :cond_4c

    const/16 v0, 0xd

    if-eq p2, v0, :cond_48

    const/16 v0, 0xe

    if-eq p2, v0, :cond_44

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_40

    const/16 v0, 0x1b

    if-eq p2, v0, :cond_3c

    packed-switch p2, :pswitch_data_66

    .line 214
    const/4 v0, -0x1

    .local v0, "res":I
    goto :goto_5c

    .line 162
    .end local v0  # "res":I
    :pswitch_24  #0x9
    const v0, 0xa1001c2

    .line 163
    .restart local v0  # "res":I
    goto :goto_5c

    .line 158
    .end local v0  # "res":I
    :pswitch_28  #0x8
    const v0, 0xa10011a

    .line 159
    .restart local v0  # "res":I
    goto :goto_5c

    .line 198
    .end local v0  # "res":I
    :pswitch_2c  #0x7
    const v0, 0xa1001ba

    .line 199
    .restart local v0  # "res":I
    goto :goto_5c

    .line 194
    .end local v0  # "res":I
    :pswitch_30  #0x6
    const v0, 0xa100019

    .line 195
    .restart local v0  # "res":I
    goto :goto_5c

    .line 174
    .end local v0  # "res":I
    :pswitch_34  #0x5
    const v0, 0xa1001bc

    .line 175
    .restart local v0  # "res":I
    goto :goto_5c

    .line 170
    .end local v0  # "res":I
    :pswitch_38  #0x4
    const v0, 0xa10002d

    .line 171
    .restart local v0  # "res":I
    goto :goto_5c

    .line 182
    .end local v0  # "res":I
    :cond_3c
    const v0, 0xa1000c0

    .line 183
    .restart local v0  # "res":I
    goto :goto_5c

    .line 166
    .end local v0  # "res":I
    :cond_40
    const v0, 0xa1000b8

    .line 167
    .restart local v0  # "res":I
    goto :goto_5c

    .line 210
    .end local v0  # "res":I
    :cond_44
    const v0, 0xa10011d

    .line 211
    .restart local v0  # "res":I
    goto :goto_5c

    .line 190
    .end local v0  # "res":I
    :cond_48
    const v0, 0xa100017

    .line 191
    .restart local v0  # "res":I
    goto :goto_5c

    .line 202
    .end local v0  # "res":I
    :cond_4c
    const v0, 0xa100013

    .line 203
    .restart local v0  # "res":I
    goto :goto_5c

    .line 186
    .end local v0  # "res":I
    :cond_50
    const v0, 0xa1000bc

    .line 187
    .restart local v0  # "res":I
    goto :goto_5c

    .line 206
    .end local v0  # "res":I
    :cond_54
    const v0, 0xa10013c

    .line 207
    .restart local v0  # "res":I
    goto :goto_5c

    .line 178
    .end local v0  # "res":I
    :cond_58
    const v0, 0xa10007b

    .line 179
    .restart local v0  # "res":I
    nop

    .line 217
    :goto_5c
    if-lez v0, :cond_63

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 220
    :cond_63
    const-string v1, " "

    return-object v1

    :pswitch_data_66
    .packed-switch 0x4
        :pswitch_38  #00000004
        :pswitch_34  #00000005
        :pswitch_30  #00000006
        :pswitch_2c  #00000007
        :pswitch_28  #00000008
        :pswitch_24  #00000009
    .end packed-switch
.end method

.method private isForegroundPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "pkg"  # Ljava/lang/String;

    .line 116
    const-string v0, "isFrontPackage: "

    const-string v1, "FlymePermission"

    const/4 v2, 0x0

    if-nez p2, :cond_8

    .line 117
    return v2

    .line 120
    :cond_8
    sget-boolean v3, Landroid/os/BuildExt;->IS_CTA:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_e

    .line 121
    return v4

    .line 125
    :cond_e
    :try_start_e
    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 126
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 127
    .local v3, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 128
    .local v5, "isTop":Z
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_34} :catch_3b

    .line 129
    .local v6, "isBase":Z
    if-nez v5, :cond_3a

    if-eqz v6, :cond_39

    goto :goto_3a

    .line 134
    .end local v3  # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v5  # "isTop":Z
    .end local v6  # "isBase":Z
    :cond_39
    goto :goto_4e

    .line 130
    .restart local v3  # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v5  # "isTop":Z
    .restart local v6  # "isBase":Z
    :cond_3a
    :goto_3a
    return v4

    .line 132
    .end local v3  # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v5  # "isTop":Z
    .end local v6  # "isBase":Z
    :catch_3b
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_4e
    :try_start_4e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "default_input_method"

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "curIMEId":Ljava/lang/String;
    if-eqz v3, :cond_93

    .line 140
    const-class v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 141
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 142
    .local v7, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 143
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_8e} :catch_94

    if-eqz v0, :cond_91

    move v2, v4

    :cond_91
    return v2

    .line 145
    .end local v7  # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_92
    goto :goto_6a

    .line 149
    .end local v3  # "curIMEId":Ljava/lang/String;
    .end local v5  # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_93
    goto :goto_a7

    .line 147
    :catch_94
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_a7
    return v2
.end method


# virtual methods
.method public synthetic lambda$new$0$FlymePermissionDialog(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"  # Landroid/content/DialogInterface;

    .line 80
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionDialog;->myHandle:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public show()V
    .registers 6

    .line 89
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionDialog;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 90
    .local v0, "isNotShow":Z
    :goto_7
    if-nez v0, :cond_c

    .line 91
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 93
    :cond_c
    iget-object v1, p0, Lcom/meizu/server/FlymePermissionDialog;->myHandle:Landroid/os/Handler;

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    const-wide/16 v3, 0x0

    goto :goto_16

    :cond_14
    const-wide/16 v3, 0x3a98

    :goto_16
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    return-void
.end method
