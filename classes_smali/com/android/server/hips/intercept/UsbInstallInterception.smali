.class public Lcom/android/server/hips/intercept/UsbInstallInterception;
.super Ljava/lang/Object;
.source "UsbInstallInterception.java"


# static fields
.field private static final ICON_SAVE_PATH:Ljava/lang/String; = "/data/system/usb_install"

.field public static final MODE_ALLOW:I = 0x1

.field public static final MODE_ASK:I = 0x0

.field public static final MODE_DELETE:I = -0x2

.field public static final MODE_DENY:I = -0x1

.field public static final MODE_ERROR:I = -0x3

.field private static final MSG_GET_APK_ACHIVE_INFO:I = 0x0

.field private static final MSG_RECEIVE_APK_ACHIVE_INFO:I = 0x1

.field private static final MSG_SHOW_ALERT_DIALOG:I = 0x2

.field private static final PREFIX:Ljava/lang/String; = "usb_install_item_"

.field private static final SWITCH:Ljava/lang/String; = "switch"

.field private static final SWITCH_OFF:I = -0x1

.field private static final SWITCH_ON:I = 0x1

.field public static final TAG:Ljava/lang/String; = "UsbInstallInterception"

.field private static final TYPE_DELETE:I = 0x2

.field private static final TYPE_UPDATE:I = 0x1

.field private static mIsUsbInstallSwitchOn:Z

.field private static volatile mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

.field private mCurrentApkName:Ljava/lang/String;

.field private mCurrentApkPath:Ljava/lang/String;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsDialogShowing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;

    .line 84
    invoke-static {}, Lcom/android/server/hips/intercept/UsbInstallInterception;->readUsbInstallSwitchState()I

    move-result v0

    .line 85
    .local v0, "state":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    const/4 v1, 0x1

    :goto_d
    sput-boolean v1, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsUsbInstallSwitchOn:Z

    .line 86
    .end local v0  # "state":I
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsDialogShowing:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkPath:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hips/intercept/UsbInstallInterception$1;-><init>(Lcom/android/server/hips/intercept/UsbInstallInterception;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hips/intercept/UsbInstallInterception;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/intercept/UsbInstallInterception;

    .line 46
    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/hips/intercept/UsbInstallInterception;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/intercept/UsbInstallInterception;

    .line 46
    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/hips/intercept/UsbInstallInterception;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/intercept/UsbInstallInterception;

    .line 46
    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/hips/intercept/UsbInstallInterception;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/intercept/UsbInstallInterception;

    .line 46
    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/hips/intercept/UsbInstallInterception;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Landroid/graphics/drawable/Drawable;
    .param p4, "x4"  # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/hips/intercept/UsbInstallInterception;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/intercept/UsbInstallInterception;
    .param p1, "x1"  # Z

    .line 46
    iput-boolean p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsDialogShowing:Z

    return p1
.end method

.method public static getInstance()Lcom/android/server/hips/intercept/UsbInstallInterception;
    .registers 2

    .line 107
    sget-object v0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;

    if-nez v0, :cond_17

    .line 108
    const-class v0, Lcom/android/server/hips/intercept/UsbInstallInterception;

    monitor-enter v0

    .line 109
    :try_start_7
    sget-object v1, Lcom/android/server/hips/intercept/UsbInstallInterception;->mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;

    if-nez v1, :cond_12

    .line 110
    new-instance v1, Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-direct {v1}, Lcom/android/server/hips/intercept/UsbInstallInterception;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/UsbInstallInterception;->mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;

    .line 112
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 115
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;

    return-object v0
.end method

.method private isStopUsbInstall(Ljava/lang/String;)I
    .registers 8
    .param p1, "apkPath"  # Ljava/lang/String;

    .line 138
    sget-boolean v0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsUsbInstallSwitchOn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 139
    const-string v0, "UsbInstallInterception"

    const-string/jumbo v2, "isStopUsbInstall, the mIsUsbInstallSwitchOn is false, return allow."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v1

    .line 144
    :cond_e
    iput-object p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkPath:Ljava/lang/String;

    .line 145
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    .line 146
    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    if-nez v0, :cond_23

    .line 147
    const-string v0, "UsbInstallInterception"

    const-string/jumbo v2, "isStopUsbInstall, the context is null, return allow."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v1

    .line 151
    :cond_23
    invoke-direct {p0, v0, p1}, Lcom/android/server/hips/intercept/UsbInstallInterception;->parseApkAchiveInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 153
    .local v0, "parseResult":Z
    if-nez v0, :cond_32

    .line 154
    const-string v2, "UsbInstallInterception"

    const-string/jumbo v3, "isStopUsbInstall, parseApkAchiveInfo failed, return allow."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v1

    .line 159
    :cond_32
    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v2, :cond_108

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3e

    goto/16 :goto_108

    .line 165
    :cond_3e
    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    if-eqz v2, :cond_ff

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4a

    goto/16 :goto_ff

    .line 171
    :cond_4a
    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/server/hips/utils/HipsUtils;->isCtsPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_77

    .line 172
    invoke-virtual {p0, v3}, Lcom/android/server/hips/intercept/UsbInstallInterception;->setUsbInstallSwitchState(Z)V

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isStopUsbInstall, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is ctsPackage, return allow."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbInstallInterception"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v1

    .line 177
    :cond_77
    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_85

    .line 178
    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->readApkIconFromStorage(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    .line 180
    :cond_85
    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_94

    .line 181
    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    const v4, 0x1080093

    .line 182
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_94
    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getUsbInstallItemState(Ljava/lang/String;)I

    move-result v2

    .line 186
    .local v2, "mode":I
    if-eq v2, v1, :cond_fe

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a0

    goto :goto_fe

    .line 189
    :cond_a0
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/server/hips/intercept/UsbInstallInterception;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    .line 191
    const/4 v2, 0x0

    .line 194
    monitor-enter p0

    .line 195
    :try_start_a9
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 196
    iput-boolean v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsDialogShowing:Z

    .line 197
    move v1, v3

    .line 198
    .local v1, "i":I
    :goto_b6
    iget-boolean v3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsDialogShowing:Z

    if-eqz v3, :cond_d9

    if-nez v2, :cond_d9

    const/16 v3, 0x4b

    if-ge v1, v3, :cond_d9

    .line 199
    iget-object v3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getUsbInstallItemState(Ljava/lang/String;)I

    move-result v3
    :try_end_c6
    .catchall {:try_start_a9 .. :try_end_c6} :catchall_fb

    move v2, v3

    .line 201
    const-wide/16 v3, 0xc8

    :try_start_c9
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cc} :catch_d0
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_fb

    .line 206
    nop

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    .line 202
    :catch_d0
    move-exception v3

    .line 203
    .local v3, "e":Ljava/lang/Exception;
    :try_start_d1
    const-string v4, "UsbInstallInterception"

    const-string/jumbo v5, "isStopUsbInstall, failed to hang up the process!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v1  # "i":I
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_d9
    monitor-exit p0
    :try_end_da
    .catchall {:try_start_d1 .. :try_end_da} :catchall_fb

    .line 211
    iget-boolean v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsDialogShowing:Z

    if-eqz v1, :cond_e5

    iget-object v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_e5

    .line 212
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 215
    :cond_e5
    iget-object v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getUsbInstallItemState(Ljava/lang/String;)I

    move-result v1

    .line 217
    .local v1, "realMode":I
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkPath:Ljava/lang/String;

    .line 218
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    .line 219
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    .line 220
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    .line 222
    return v1

    .line 209
    .end local v1  # "realMode":I
    :catchall_fb
    move-exception v1

    :try_start_fc
    monitor-exit p0
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw v1

    .line 187
    :cond_fe
    :goto_fe
    return v2

    .line 166
    .end local v2  # "mode":I
    :cond_ff
    :goto_ff
    const-string v2, "UsbInstallInterception"

    const-string/jumbo v3, "isStopUsbInstall, the mCurrentApkName is null or empty, return allow."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v1

    .line 160
    :cond_108
    :goto_108
    const-string v2, "UsbInstallInterception"

    const-string/jumbo v3, "isStopUsbInstall, the mCurrentPkgName is null or empty, return allow."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v1
.end method

.method private parseApkAchiveInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "apkPath"  # Ljava/lang/String;

    .line 226
    const-string v0, "UsbInstallInterception"

    const/4 v1, 0x0

    if-eqz p2, :cond_57

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_57

    .line 231
    :cond_c
    if-nez p1, :cond_14

    .line 232
    const-string v2, "getApkAchiveInfo, the context is null, return null."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v1

    .line 236
    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 237
    .local v2, "pkgManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_20

    .line 238
    const-string v3, "getApkAchiveInfo, the pkgManager is null, return null."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v1

    .line 242
    :cond_20
    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 243
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_2c

    .line 244
    const-string v4, "getApkAchiveInfo, the pkgInfo is null, return null."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return v1

    .line 248
    :cond_2c
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 249
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_36

    .line 250
    const-string v5, "getApkAchiveInfo, the appInfo is null, return null."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v1

    .line 254
    :cond_36
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 255
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, ""

    .line 256
    .local v1, "apkName":Ljava/lang/String;
    iput-object p2, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 257
    iput-object p2, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 258
    invoke-virtual {v4, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 259
    .local v5, "charSequence":Ljava/lang/CharSequence;
    if-eqz v5, :cond_48

    .line 260
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_48
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 264
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    iput-object v6, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-direct {p0, v0, v6}, Lcom/android/server/hips/intercept/UsbInstallInterception;->saveApkIconToStorage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 267
    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    .line 268
    iput-object v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    .line 269
    const/4 v7, 0x1

    return v7

    .line 227
    .end local v0  # "pkgName":Ljava/lang/String;
    .end local v1  # "apkName":Ljava/lang/String;
    .end local v2  # "pkgManager":Landroid/content/pm/PackageManager;
    .end local v3  # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5  # "charSequence":Ljava/lang/CharSequence;
    .end local v6  # "icon":Landroid/graphics/drawable/Drawable;
    :cond_57
    :goto_57
    const-string v2, "getApkAchiveInfo, the apkPath is null or empty, return null."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v1
.end method

.method private readApkIconFromStorage(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "context"  # Landroid/content/Context;

    .line 467
    if-nez p2, :cond_4

    .line 468
    const/4 v0, 0x0

    return-object v0

    .line 471
    :cond_4
    const/4 v0, 0x0

    .line 472
    .local v0, "apkIcon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/usb_install/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 474
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 475
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3a

    .line 476
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v3

    .line 480
    .end local v2  # "bitmap":Landroid/graphics/Bitmap;
    :cond_3a
    return-object v0
.end method

.method private static readUsbInstallSwitchState()I
    .registers 4

    .line 452
    const-string/jumbo v0, "usb_install_item_switch"

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->getValueFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11

    goto :goto_1d

    .line 459
    :cond_11
    const-string/jumbo v0, "switch:-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 460
    const/4 v0, -0x1

    return v0

    .line 463
    :cond_1c
    return v2

    .line 454
    :cond_1d
    :goto_1d
    const-string/jumbo v3, "switch:1"

    invoke-static {v0, v3}, Lcom/android/server/hips/utils/HipsUtils;->putValueIntoSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return v2
.end method

.method private saveApkIconToStorage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 12
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "drawable"  # Landroid/graphics/drawable/Drawable;

    .line 273
    const-string/jumbo v0, "saveApkIconToStorage, unable to close file output stream!"

    const-string v1, "UsbInstallInterception"

    if-eqz p1, :cond_9f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_9f

    .line 278
    :cond_f
    if-nez p2, :cond_18

    .line 279
    const-string/jumbo v0, "saveApkIconToStorage, the drawable is null, return."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 283
    :cond_18
    const/4 v2, 0x0

    .line 284
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    instance-of v3, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_20

    .line 285
    move-object v2, p2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 287
    :cond_20
    if-nez v2, :cond_29

    .line 288
    const-string/jumbo v0, "saveApkIconToStorage, the bitmapDrawable is null, return."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 292
    :cond_29
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 293
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_36

    .line 294
    const-string/jumbo v0, "saveApkIconToStorage, the bitmap is null, return."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 298
    :cond_36
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/usb_install"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v4, "filePath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_46

    .line 300
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 303
    :cond_46
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/usb_install/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v5, "fileIcon":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 305
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 308
    :cond_6a
    const/4 v6, 0x0

    .line 310
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_6b
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 311
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 312
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v3, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7f} :catch_8a
    .catchall {:try_start_6b .. :try_end_7f} :catchall_88

    .line 317
    :try_start_7f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_83

    .line 320
    :goto_82
    goto :goto_95

    .line 318
    :catch_83
    move-exception v7

    .line 319
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v7  # "e":Ljava/lang/Exception;
    goto :goto_95

    .line 316
    :catchall_88
    move-exception v7

    goto :goto_96

    .line 313
    :catch_8a
    move-exception v7

    .line 314
    .restart local v7  # "e":Ljava/lang/Exception;
    :try_start_8b
    const-string/jumbo v8, "saveApkIconToStorage, saved the apk icon to storage failed!"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_88

    .line 317
    .end local v7  # "e":Ljava/lang/Exception;
    :try_start_91
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_83

    goto :goto_82

    .line 322
    :goto_95
    return-void

    .line 317
    :goto_96
    :try_start_96
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a

    .line 320
    goto :goto_9e

    .line 318
    :catch_9a
    move-exception v8

    .line 319
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v8  # "e":Ljava/lang/Exception;
    :goto_9e
    throw v7

    .line 274
    .end local v2  # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3  # "bitmap":Landroid/graphics/Bitmap;
    .end local v4  # "filePath":Ljava/io/File;
    .end local v5  # "fileIcon":Ljava/io/File;
    .end local v6  # "fos":Ljava/io/FileOutputStream;
    :cond_9f
    :goto_9f
    const-string/jumbo v0, "saveApkIconToStorage, the pkgName is null or empty, return."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .registers 12
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "apkName"  # Ljava/lang/String;
    .param p3, "drawable"  # Landroid/graphics/drawable/Drawable;
    .param p4, "context"  # Landroid/content/Context;

    .line 485
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 487
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0xa0d0049

    const/4 v2, 0x0

    invoke-static {p4, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 489
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 491
    const v2, 0xa0a003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 492
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0xa1001ae

    invoke-virtual {p4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const v3, 0xa0a0037

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 495
    .local v3, "message":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    const v4, 0xa0a0038

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 498
    .local v4, "icon":Landroid/widget/ImageView;
    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 500
    nop

    .line 501
    const v5, 0xa1001ac

    invoke-virtual {p4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/hips/intercept/UsbInstallInterception$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/hips/intercept/UsbInstallInterception$2;-><init>(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 511
    nop

    .line 512
    const v5, 0xa1001ad

    invoke-virtual {p4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/hips/intercept/UsbInstallInterception$3;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/hips/intercept/UsbInstallInterception$3;-><init>(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    new-instance v5, Lcom/android/server/hips/intercept/UsbInstallInterception$4;

    invoke-direct {v5, p0}, Lcom/android/server/hips/intercept/UsbInstallInterception$4;-><init>(Lcom/android/server/hips/intercept/UsbInstallInterception;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDialog:Landroid/app/AlertDialog;

    .line 531
    iget-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7e0

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 532
    iget-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 533
    iget-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 534
    return-void
.end method


# virtual methods
.method public getAllUsbInstallItems()Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 378
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 379
    return-object v1

    .line 382
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 383
    .local v8, "resolver":Landroid/content/ContentResolver;
    if-nez v8, :cond_f

    .line 384
    return-object v1

    .line 387
    :cond_f
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v9, "value"

    const-string/jumbo v10, "name"

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 390
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_a0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_2d

    goto/16 :goto_a0

    .line 394
    :cond_2d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_32
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 397
    .local v4, "nameIndex":I
    nop

    .line 398
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 407
    .local v5, "valueIndex":I
    :cond_3b
    :goto_3b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 408
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "value":Ljava/lang/String;
    if-eqz v6, :cond_3b

    if-nez v7, :cond_4e

    .line 411
    goto :goto_3b

    .line 414
    :cond_4e
    const-string/jumbo v9, "usb_install_item_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 415
    goto :goto_3b

    .line 418
    :cond_58
    const-string/jumbo v9, "usb_install_item_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 419
    nop

    .line 420
    const-string v9, "\\:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 421
    .local v9, "valueArray":[Ljava/lang/String;
    if-eqz v9, :cond_3b

    array-length v10, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_6f

    .line 422
    goto :goto_3b

    .line 425
    :cond_6f
    const/4 v10, 0x1

    aget-object v10, v9, v10

    .line 426
    .local v10, "stateStr":Ljava/lang/String;
    if-eqz v10, :cond_3b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_7b

    .line 427
    goto :goto_3b

    .line 430
    :cond_7b
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 431
    .local v11, "state":I
    const/4 v12, -0x2

    if-ne v11, v12, :cond_83

    .line 432
    goto :goto_3b

    .line 435
    .end local v9  # "valueArray":[Ljava/lang/String;
    .end local v10  # "stateStr":Ljava/lang/String;
    .end local v11  # "state":I
    :cond_83
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_86} :catch_8f
    .catchall {:try_start_32 .. :try_end_86} :catchall_8d

    .line 437
    .end local v6  # "name":Ljava/lang/String;
    .end local v7  # "value":Ljava/lang/String;
    :cond_86
    goto :goto_3b

    .line 438
    :cond_87
    nop

    .line 443
    nop

    .line 444
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 438
    return-object v3

    .line 443
    .end local v4  # "nameIndex":I
    .end local v5  # "valueIndex":I
    :catchall_8d
    move-exception v1

    goto :goto_9c

    .line 439
    :catch_8f
    move-exception v4

    .line 440
    .local v4, "e":Ljava/lang/Exception;
    :try_start_90
    const-string v5, "UsbInstallInterception"

    const-string v6, "getAllUsbInstallItems, unable to get all usb install items!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_8d

    .line 443
    nop

    .line 444
    .end local v4  # "e":Ljava/lang/Exception;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 448
    return-object v1

    .line 444
    :goto_9c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 391
    .end local v3  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a0
    :goto_a0
    return-object v1
.end method

.method public getUsbInstallItemState(Ljava/lang/String;)I
    .registers 9
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usb_install_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->getValueFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "value":Ljava/lang/String;
    const/4 v1, -0x3

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_20

    goto :goto_4b

    .line 356
    :cond_20
    const-string v2, "\\:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "valueArray":[Ljava/lang/String;
    if-eqz v2, :cond_4a

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2d

    goto :goto_4a

    .line 361
    :cond_2d
    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 362
    .local v3, "stateStr":Ljava/lang/String;
    if-eqz v3, :cond_49

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_39

    goto :goto_49

    .line 366
    :cond_39
    const/4 v1, -0x3

    .line 368
    .local v1, "state":I
    :try_start_3a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_40

    move v1, v4

    .line 371
    goto :goto_48

    .line 369
    :catch_40
    move-exception v4

    .line 370
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "UsbInstallInterception"

    const-string v6, "getUsbInstallItemState, unable to parse string to int!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_48
    return v1

    .line 363
    .end local v1  # "state":I
    :cond_49
    :goto_49
    return v1

    .line 358
    .end local v3  # "stateStr":Ljava/lang/String;
    :cond_4a
    :goto_4a
    return v1

    .line 353
    .end local v2  # "valueArray":[Ljava/lang/String;
    :cond_4b
    :goto_4b
    return v1
.end method

.method public getUsbInstallSwitchState()I
    .registers 2

    .line 331
    sget-boolean v0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsUsbInstallSwitchOn:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, -0x1

    :goto_7
    return v0
.end method

.method public interceptForUsbInstall(Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;I)Z
    .registers 10
    .param p1, "stagedDir"  # Ljava/io/File;
    .param p2, "observer"  # Landroid/content/pm/IPackageInstallObserver2;
    .param p3, "installFlags"  # I

    .line 119
    if-eqz p1, :cond_2c

    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_2c

    .line 120
    new-instance v0, Ljava/io/File;

    const-string v1, "base.apk"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "originPath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/hips/intercept/UsbInstallInterception;->isStopUsbInstall(Ljava/lang/String;)I

    move-result v1

    .line 122
    .local v1, "isStopUsbInstall":I
    if-eqz p2, :cond_2c

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2c

    .line 124
    :try_start_1a
    const-string v3, ""

    const/16 v4, -0x6f

    const/4 v5, 0x0

    invoke-interface {p2, v3, v4, v5, v5}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    .line 129
    goto :goto_24

    .line 128
    :catch_23
    move-exception v3

    .line 130
    :goto_24
    const-string v3, "UsbInstallInterception"

    const-string v4, "Stop the application to install through adb!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v2

    .line 134
    .end local v0  # "originPath":Ljava/lang/String;
    .end local v1  # "isStopUsbInstall":I
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "type"  # I
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "apkName"  # Ljava/lang/String;
    .param p4, "mode"  # I

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usb_install_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "key":Ljava/lang/String;
    const-string v1, ""

    .line 338
    .local v1, "value":Ljava/lang/String;
    const-string v2, ":"

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2c

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_66

    .line 340
    :cond_2c
    const/4 v3, 0x2

    if-ne p1, v3, :cond_66

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/usb_install/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 344
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 347
    .end local v2  # "file":Ljava/io/File;
    :cond_66
    :goto_66
    invoke-static {v0, v1}, Lcom/android/server/hips/utils/HipsUtils;->putValueIntoSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public setUsbInstallSwitchState(Z)V
    .registers 4
    .param p1, "isOn"  # Z

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    if-eqz p1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, -0x1

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string/jumbo v1, "usb_install_item_switch"

    invoke-static {v1, v0}, Lcom/android/server/hips/utils/HipsUtils;->putValueIntoSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sput-boolean p1, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsUsbInstallSwitchOn:Z

    .line 328
    return-void
.end method
