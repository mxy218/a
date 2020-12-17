.class public Lcom/android/server/hips/security/PasswordMode;
.super Ljava/lang/Object;
.source "PasswordMode.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final HIPS_EVENT_NAME:Ljava/lang/String; = "hips.event.cfg"

.field private static final NORMAL_MODE:I = 0x0

.field private static final NORMAL_PWD1:I = 0x80

.field private static final NORMAL_PWD2:I = 0x81

.field private static final NUM_PWD1:I = 0x10

.field private static final NUM_PWD2:I = 0x12

.field private static final PASSWORD_MODE:I = 0x1

.field private static final SECURITY_KEYBOARD_ON:I = 0x1

.field private static final SPECIAL_PWD:I = 0x20081

.field private static final STORAGE_PATH:Ljava/lang/String; = "/data/system"

.field private static final TAG:Ljava/lang/String; = "PasswordMode"

.field public static final TYPE_START_INPUT_METHOD:I = 0x1

.field public static final TYPE_WINDOW_FOCUS_CHANGED:I = 0x0

.field private static final VISIBLE_PWD1:I = 0x90

.field private static final VISIBLE_PWD2:I = 0x91

.field private static final WEB_PWD1:I = 0xe0

.field private static final WEB_PWD2:I = 0xe1

.field private static volatile mPasswordMode:Lcom/android/server/hips/security/PasswordMode;


# instance fields
.field private mCurFocusedPkg:Ljava/lang/String;

.field private mCurSecurityKBWindowToken:Landroid/os/IBinder;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mIsCurFocusedPkgInSecurityMargin:Z

.field private mIsInPasswordMode:Z

.field private mIsPasswordModeSwitchOn:Z

.field private mIsSecurityKBShowing:Z

.field private mSecurityKBSwitchObserver:Landroid/database/ContentObserver;

.field private mSecurityKBSwitchState:I

.field private mSystemUIUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/security/PasswordMode;->mPasswordMode:Lcom/android/server/hips/security/PasswordMode;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsPasswordModeSwitchOn:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsCurFocusedPkgInSecurityMargin:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsSecurityKBShowing:Z

    .line 62
    new-instance v1, Lcom/android/server/hips/security/PasswordMode$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/hips/security/PasswordMode$1;-><init>(Lcom/android/server/hips/security/PasswordMode;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/hips/security/PasswordMode;->mSecurityKBSwitchObserver:Landroid/database/ContentObserver;

    .line 79
    const-string v1, "com.android.systemui"

    invoke-static {v1}, Lcom/android/server/hips/utils/HipsUtils;->getUidByPkgName(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/hips/security/PasswordMode;->mSystemUIUid:I

    .line 80
    invoke-direct {p0}, Lcom/android/server/hips/security/PasswordMode;->readSecurityKBSwitchState()I

    move-result v1

    iput v1, p0, Lcom/android/server/hips/security/PasswordMode;->mSecurityKBSwitchState:I

    .line 82
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 83
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_2a

    .line 84
    return-void

    .line 87
    :cond_2a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 88
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    if-nez v2, :cond_31

    .line 89
    return-void

    .line 92
    :cond_31
    nop

    .line 93
    const-string/jumbo v3, "mz_safe_keyboard"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/hips/security/PasswordMode;->mSecurityKBSwitchObserver:Landroid/database/ContentObserver;

    .line 92
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    nop

    .line 96
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/hips/security/PasswordMode;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hips/security/PasswordMode;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/security/PasswordMode;

    .line 26
    iget v0, p0, Lcom/android/server/hips/security/PasswordMode;->mSecurityKBSwitchState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/hips/security/PasswordMode;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/security/PasswordMode;
    .param p1, "x1"  # I

    .line 26
    iput p1, p0, Lcom/android/server/hips/security/PasswordMode;->mSecurityKBSwitchState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/hips/security/PasswordMode;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/hips/security/PasswordMode;

    .line 26
    invoke-direct {p0}, Lcom/android/server/hips/security/PasswordMode;->readSecurityKBSwitchState()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/server/hips/security/PasswordMode;
    .registers 2

    .line 100
    sget-object v0, Lcom/android/server/hips/security/PasswordMode;->mPasswordMode:Lcom/android/server/hips/security/PasswordMode;

    if-nez v0, :cond_17

    .line 101
    const-class v0, Lcom/android/server/hips/security/PasswordMode;

    monitor-enter v0

    .line 102
    :try_start_7
    sget-object v1, Lcom/android/server/hips/security/PasswordMode;->mPasswordMode:Lcom/android/server/hips/security/PasswordMode;

    if-nez v1, :cond_12

    .line 103
    new-instance v1, Lcom/android/server/hips/security/PasswordMode;

    invoke-direct {v1}, Lcom/android/server/hips/security/PasswordMode;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/PasswordMode;->mPasswordMode:Lcom/android/server/hips/security/PasswordMode;

    .line 105
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 108
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/hips/security/PasswordMode;->mPasswordMode:Lcom/android/server/hips/security/PasswordMode;

    return-object v0
.end method

.method private isPasswordType(I)Z
    .registers 3
    .param p1, "inputType"  # I

    .line 202
    const/16 v0, 0x10

    if-eq p1, v0, :cond_28

    const/16 v0, 0x12

    if-eq p1, v0, :cond_28

    const/16 v0, 0x80

    if-eq p1, v0, :cond_28

    const/16 v0, 0x81

    if-eq p1, v0, :cond_28

    const/16 v0, 0x90

    if-eq p1, v0, :cond_28

    const/16 v0, 0x91

    if-eq p1, v0, :cond_28

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_28

    const/16 v0, 0xe1

    if-eq p1, v0, :cond_28

    const v0, 0x20081

    if-ne p1, v0, :cond_26

    goto :goto_28

    .line 210
    :cond_26
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_28
    :goto_28
    const/4 v0, 0x1

    return v0
.end method

.method private readSecurityKBSwitchState()I
    .registers 6

    .line 182
    const-string/jumbo v0, "mz_safe_keyboard"

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 183
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x1

    if-nez v1, :cond_b

    .line 184
    return v2

    .line 187
    :cond_b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 188
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    if-nez v3, :cond_12

    .line 189
    return v2

    .line 193
    :cond_12
    :try_start_12
    invoke-static {v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_17

    return v0

    .line 194
    :catch_17
    move-exception v4

    .line 195
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    .end local v4  # "e":Ljava/lang/Exception;
    return v2
.end method


# virtual methods
.method public getPasswordModeSwitchState()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsPasswordModeSwitchOn:Z

    return v0
.end method

.method public isInPasswordMode()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsPasswordModeSwitchOn:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsCurFocusedPkgInSecurityMargin:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isSecurityKBSwitchOn()Z
    .registers 3

    .line 124
    iget v0, p0, Lcom/android/server/hips/security/PasswordMode;->mSecurityKBSwitchState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public setPasswordModeSwitchState(Z)V
    .registers 2
    .param p1, "isOn"  # Z

    .line 112
    iput-boolean p1, p0, Lcom/android/server/hips/security/PasswordMode;->mIsPasswordModeSwitchOn:Z

    .line 113
    return-void
.end method

.method public updatePasswordModeState(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/IWindowManager;Landroid/view/inputmethod/EditorInfo;Landroid/os/IBinder;I)V
    .registers 12
    .param p1, "service"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "windowManager"  # Landroid/view/IWindowManager;
    .param p3, "attribute"  # Landroid/view/inputmethod/EditorInfo;
    .param p4, "token"  # Landroid/os/IBinder;
    .param p5, "type"  # I

    .line 129
    iget-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsPasswordModeSwitchOn:Z

    const-string v1, "PasswordMode"

    if-nez v0, :cond_d

    .line 130
    const-string/jumbo v0, "updatePasswordModeState, the switch of password mode is off, return!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_d
    if-eqz p1, :cond_95

    if-eqz p3, :cond_95

    if-nez p4, :cond_15

    goto/16 :goto_95

    .line 139
    :cond_15
    iget v0, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 140
    .local v0, "inputType":I
    invoke-direct {p0, v0}, Lcom/android/server/hips/security/PasswordMode;->isPasswordType(I)Z

    move-result v2

    .line 142
    .local v2, "isPasswordType":Z
    const/4 v3, 0x0

    if-nez v2, :cond_2f

    iget-boolean v4, p0, Lcom/android/server/hips/security/PasswordMode;->mIsSecurityKBShowing:Z

    if-eqz v4, :cond_2f

    if-nez p5, :cond_2f

    .line 144
    iget-object v4, p0, Lcom/android/server/hips/security/PasswordMode;->mCurSecurityKBWindowToken:Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->hideMySoftInput(I)V

    .line 145
    iput-boolean v3, p0, Lcom/android/server/hips/security/PasswordMode;->mIsSecurityKBShowing:Z

    .line 148
    :cond_2f
    iget-object v4, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/hips/security/PasswordMode;->mCurFocusedPkg:Ljava/lang/String;

    .line 149
    nop

    .line 150
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/hips/security/PasswordMode;->mCurFocusedPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/hips/security/SecurityMargin;->isPkgInSecurityMargin(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/hips/security/PasswordMode;->mIsCurFocusedPkgInSecurityMargin:Z

    .line 152
    if-eqz v2, :cond_4b

    iget-boolean v4, p0, Lcom/android/server/hips/security/PasswordMode;->mIsCurFocusedPkgInSecurityMargin:Z

    if-eqz v4, :cond_4b

    .line 153
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/hips/security/PasswordMode;->mIsSecurityKBShowing:Z

    .line 154
    iput-object p4, p0, Lcom/android/server/hips/security/PasswordMode;->mCurSecurityKBWindowToken:Landroid/os/IBinder;

    .line 158
    :cond_4b
    iget-boolean v4, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    if-ne v2, v4, :cond_50

    .line 159
    return-void

    .line 162
    :cond_50
    iput-boolean v2, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePasswordModeState, inputType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isInPasswordMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v4, p0, Lcom/android/server/hips/security/PasswordMode;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v4, :cond_7b

    .line 168
    const-string v3, "DevicePolicyManager is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 172
    :cond_7b
    iget-boolean v1, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    invoke-virtual {v4, v3, v1}, Landroid/app/admin/DevicePolicyManager;->setScreenCaptureAndRecordDisabled(IZ)V

    .line 173
    iget-object v1, p0, Lcom/android/server/hips/security/PasswordMode;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    invoke-virtual {v1, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setScreenCaptureAndRecordDisabled(IZ)V

    .line 176
    const-string v1, "/data/system/hips.event.cfg"

    .line 177
    .local v1, "filePath":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    .line 178
    .local v3, "state":I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 136
    .end local v0  # "inputType":I
    .end local v1  # "filePath":Ljava/lang/String;
    .end local v2  # "isPasswordType":Z
    .end local v3  # "state":I
    :cond_95
    :goto_95
    return-void
.end method
