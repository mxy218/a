.class public Lcom/meizu/settings/security/FlymeLockPasswordUtils;
.super Ljava/lang/Object;
.source "FlymeLockPasswordUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;,
        Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;
    }
.end annotation


# static fields
.field private static DISABLED_PACKAGES_ARRAY:[Ljava/lang/String;

.field private static mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const-string v0, "com.meizu.safe"

    const-string v1, "com.meizu.setup"

    const-string v2, "com.aliyun.SecurityCenter"

    const-string v3, "com.meizu.customizecenter"

    const-string v4, "com.meizu.voiceassistant"

    const-string v5, "com.mediatek.op09.plugin"

    const-string v6, "com.meizu.cloud"

    const-string v7, "com.android.meizu.audioprofiles"

    const-string v8, "com.meizu.flyme.childrenlauncher"

    const-string v9, "com.meizu.flyme.update"

    const-string v10, "com.meizu.feedback"

    const-string v11, "com.meizu.net.pedometer"

    const-string v12, "com.meizu.assistant"

    .line 164
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->DISABLED_PACKAGES_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    .line 202
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 203
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string p1, "lock_settings"

    .line 205
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 204
    invoke-static {p1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 206
    iput p2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    .line 207
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 208
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)Landroid/content/Context;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/security/FlymeLockPasswordUtils;Landroid/os/Bundle;Landroid/app/Fragment;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->startConfirmFlymePassword(Landroid/os/Bundle;Landroid/app/Fragment;)V

    return-void
.end method

.method private checkScreenPassword(Ljava/lang/String;Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;)V
    .registers 6

    .line 342
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    new-instance v2, Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;

    invoke-direct {v2, p0, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils$1;-><init>(Lcom/meizu/settings/security/FlymeLockPasswordUtils;Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;)V

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private clearSecretsModePassword()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x2

    .line 234
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearFlymePassword(I)Z

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setSecretsModeEnabled(Z)V

    return-void
.end method

.method private getGuestModePasword()Ljava/lang/String;
    .registers 2

    .line 316
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_guest_mode_password"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;
    .registers 3

    .line 189
    new-instance v0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 191
    sget-object p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/meizu/settings/security/FlymeLockPasswordUtils;
    .registers 3

    .line 195
    new-instance v0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 197
    sget-object p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mFlymeLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-object p0
.end method

.method private getLocksSettingsValue(Ljava/lang/String;I)I
    .registers 6

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    int-to-long v1, p2

    iget p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-interface {v0, p1, v1, v2, p0}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    long-to-int p2, p0

    goto :goto_f

    :catch_b
    move-exception p0

    .line 843
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_f
    return p2
.end method

.method private getScreenPasswordType()I
    .registers 4

    .line 714
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const-string v1, "lockscreen.password_type_mz_backup"

    const/4 v2, 0x0

    .line 715
    invoke-direct {p0, v1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getLocksSettingsValue(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_12

    move v0, v1

    .line 721
    :cond_12
    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isSimplePassword(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static registerSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 4

    const-string v0, "mz_private_mode_running"

    .line 580
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private saveAppLockPassword(ILjava/lang/String;)V
    .registers 5

    .line 300
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setFlymePassword(ILjava/lang/String;)Z

    .line 302
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_password_type_app_lock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 305
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "mz_password_length_applock"

    .line 304
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    .line 306
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setAppLockEnable(Z)V

    return-void
.end method

.method private saveDocumentPassword(ILjava/lang/String;)V
    .registers 6

    .line 290
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setFlymePassword(ILjava/lang/String;)Z

    .line 292
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mz_password_type_document"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 295
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "mz_password_length_document"

    .line 294
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setDocumentLockEnable(Z)V

    return-void
.end method

.method private saveGuestModePassword(Ljava/lang/String;)V
    .registers 3

    .line 310
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_guest_mode_password"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private saveScreenPassword(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 267
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    const/4 p4, 0x1

    if-ne p1, p4, :cond_b

    const/high16 p1, 0x40000

    goto :goto_d

    :cond_b
    const/high16 p1, 0x20000

    .line 272
    :goto_d
    iget-object p4, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {p4, p2, p3, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)Z

    .line 274
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p3, 0x0

    const/4 p4, 0x4

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string p4, "meizu_password_fronts_four"

    invoke-virtual {p0, p1, p3, p4}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->savePasswordFrontFour(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :try_start_21
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const-string p3, "meizu_password_length"

    .line 278
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v0, p2

    iget p2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    .line 277
    invoke-interface {p1, p3, v0, v1, p2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 279
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    const-string p2, "lockscreen.password_type_mz_backup"

    .line 280
    invoke-virtual {p0, p2, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setLockSettingsValue(Ljava/lang/String;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p1

    .line 282
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 285
    :goto_41
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "meizu.intent.action.UPDATE_NOTIFICATION_PAGE_INDEX"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private saveSecretModePassword(Ljava/lang/String;)V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setFlymePassword(ILjava/lang/String;)Z

    const/4 p1, 0x1

    .line 263
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setSecretsModeEnabled(Z)V

    return-void
.end method

.method private startBootFaceRecognitionService(Landroid/content/Context;)V
    .registers 5

    const-string p0, "FlymeLockPasswordUtils"

    const-string v0, "startFaceBootReceiverService"

    .line 1044
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 1046
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.meizu.facerecognition"

    const-string v2, "com.meizu.facerecognition.server.BootFaceRecognitionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "start_app"

    const-string v1, "com.android.settings"

    .line 1048
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startConfirmFlymePassword(Landroid/os/Bundle;Landroid/app/Fragment;)V
    .registers 4

    if-eqz p1, :cond_16

    const-string p0, "intent_key"

    .line 909
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_16

    .line 913
    :cond_b
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    const/16 p1, 0x64

    .line 914
    invoke-virtual {p2, p0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static startFPManagementFragment(Landroid/app/Fragment;I)V
    .registers 5

    .line 987
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/meizu/settings/MzSettingsActivity$MzFingerprintActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":settings:show_fragment_as_subsetting"

    const/4 v2, 0x1

    .line 988
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "password_confirmed"

    const/4 v2, 0x0

    .line 989
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    .line 990
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 991
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startFPManagementFragment(Landroid/app/Fragment;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 997
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/meizu/settings/MzSettingsActivity$MzFingerprintActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, ":settings:show_fragment_as_subsetting"

    .line 998
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "password_confirmed"

    const/4 v3, 0x0

    .line 999
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "need_show_finger_exist_dialog"

    .line 1000
    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p4, "finger_exist_dialog_title"

    .line 1001
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "finger_exist_dialog_msg"

    .line 1002
    invoke-virtual {v0, p4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "finger_exist_dialog_ltbtn"

    .line 1003
    invoke-virtual {v0, p4, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "finger_exist_dialog_rtbtn"

    .line 1004
    invoke-virtual {v0, p4, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "password_from"

    .line 1005
    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "create_fingerprint"

    .line 1006
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "bind_fingerprint_from"

    .line 1007
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "finger_exist_tips"

    .line 1008
    invoke-virtual {v0, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "verify_password_tips"

    .line 1009
    invoke-virtual {v0, p2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    invoke-virtual {p0, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startFlymeAccountVerify(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;)V
    .registers 4

    .line 904
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/FlymeAccountHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getFlymeAccountName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1, v1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->validatePassword(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 2

    .line 585
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateSecurityIndex()V
    .registers 3

    .line 676
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.UPDATE_SECURITY_PAGE_INDEX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkPassword(ILjava/lang/String;Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;)Z
    .registers 7

    .line 375
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-nez p1, :cond_e

    .line 380
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->checkScreenPassword(Ljava/lang/String;Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;)V

    return v1

    :cond_e
    const/4 v0, 0x4

    const/4 v2, 0x2

    if-ne p1, v0, :cond_25

    if-eqz p3, :cond_1e

    .line 384
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z

    move-result p0

    invoke-interface {p3, p0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;->onChecked(ZI)V

    return v1

    .line 388
    :cond_1e
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_25
    if-ne p1, v2, :cond_3a

    if-eqz p3, :cond_33

    .line 393
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z

    move-result p0

    invoke-interface {p3, p0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;->onChecked(ZI)V

    return v1

    .line 397
    :cond_33
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_3a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_50

    if-eqz p3, :cond_49

    .line 402
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z

    move-result p0

    invoke-interface {p3, p0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;->onChecked(ZI)V

    return v1

    .line 406
    :cond_49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_50
    return v1
.end method

.method public checkPasswordLegal(Ljava/lang/String;I)I
    .registers 9

    .line 421
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget v2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->legacyPasswordToHash([BI)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 423
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getGuestModePasword()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 425
    :try_start_17
    iget-object v3, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "meizu_password_fronts_four"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    const-string v4, "UTF-8"

    .line 428
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_28

    goto :goto_44

    :catch_28
    move-exception v3

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check _pwd_front_four exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FlymeLockPasswordUtils"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    move-object v3, v2

    :goto_44
    if-eqz v3, :cond_50

    .line 435
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_50

    if-eqz p2, :cond_50

    const/4 p0, 0x1

    return p0

    :cond_50
    const/4 v0, 0x3

    const/4 v3, 0x4

    if-eq p2, v3, :cond_5b

    .line 438
    invoke-virtual {p0, v3, p1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->checkPassword(ILjava/lang/String;Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;)Z

    move-result p0

    if-eqz p0, :cond_5b

    return v0

    :cond_5b
    if-eqz p1, :cond_67

    .line 440
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_67

    if-eq p2, v0, :cond_67

    const/4 p0, 0x2

    return p0

    :cond_67
    const/4 p0, 0x0

    return p0
.end method

.method public clearPassword(IZ)V
    .registers 4

    const/4 p2, 0x0

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 p2, 0x4

    if-eq p1, p2, :cond_d

    goto :goto_26

    .line 227
    :cond_d
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearSecretsModePassword()V

    goto :goto_26

    .line 222
    :cond_11
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 223
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->clearFlymePassword(I)Z

    .line 224
    invoke-virtual {p0, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setAppLockEnable(Z)V

    goto :goto_26

    .line 217
    :cond_1a
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 218
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearFlymePassword(I)Z

    .line 219
    invoke-virtual {p0, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setDocumentLockEnable(Z)V

    goto :goto_26

    .line 214
    :cond_23
    invoke-virtual {p0, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Z)V

    :goto_26
    return-void
.end method

.method public clearScreenPassword(Ljava/lang/String;Z)V
    .registers 6

    .line 325
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 326
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget v2, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 327
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    const/4 p1, 0x1

    .line 328
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getFindPhoneLeftTimes(Z)I

    .line 330
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "meizu.intent.action.UPDATE_NOTIFICATION_PAGE_INDEX"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    :cond_2d
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 334
    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setScreenLockEnableAndDisableSecretsModeIfNeed(Z)V

    return-void
.end method

.method public clearScreenPassword(Z)V
    .registers 3

    const-string v0, ""

    .line 321
    invoke-virtual {p0, v0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Ljava/lang/String;Z)V

    return-void
.end method

.method public createBusinessStateChangeListenner(Landroid/app/Fragment;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;
    .registers 3

    .line 918
    new-instance v0, Lcom/meizu/settings/security/FlymeLockPasswordUtils$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils$3;-><init>(Lcom/meizu/settings/security/FlymeLockPasswordUtils;Landroid/app/Fragment;)V

    return-object v0
.end method

.method public createGuestUserIfNeeded()V
    .registers 3

    .line 778
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isGuestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 779
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/settings/security/FlymeLockPasswordUtils$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils$2;-><init>(Lcom/meizu/settings/security/FlymeLockPasswordUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 801
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getFindPhoneLeftTimes(Z)I
    .registers 2

    .line 458
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {p0, p1}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    move-result p0

    return p0
.end method

.method public getGuestModeFingerprintId()Ljava/lang/String;
    .registers 2

    .line 963
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "mz_fp_id_guest_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGuestRestrictions(Landroid/os/UserManager;)Landroid/os/Bundle;
    .registers 3

    .line 805
    invoke-virtual {p1}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "no_sms"

    .line 806
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "no_outgoing_calls"

    .line 807
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "no_install_apps"

    .line 808
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    const-string v0, "no_install_unknown_sources"

    .line 809
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "no_config_credentials"

    .line 810
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .registers 2

    .line 620
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    return p0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    .line 754
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public getPasswordFromTitleResId(I)I
    .registers 3

    const p0, 0x7f120ff3

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    return p0

    :cond_f
    const p0, 0x7f120938

    return p0

    :cond_13
    const p0, 0x7f1201b9

    return p0

    :cond_17
    const p0, 0x7f120863

    :cond_1a
    return p0
.end method

.method public getPasswordLength(I)I
    .registers 4

    const/4 v0, 0x4

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    goto :goto_22

    .line 738
    :cond_a
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "mz_password_length_applock"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_22

    .line 742
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "mz_password_length_document"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_22

    :cond_1c
    const-string p1, "meizu_password_length"

    .line 734
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getLocksSettingsValue(Ljava/lang/String;I)I

    move-result v0

    :goto_22
    return v0
.end method

.method public getPasswordLockoutLeftTimeInMills()J
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPasswordType(I)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    const/4 p0, 0x4

    goto :goto_21

    .line 698
    :cond_b
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "mz_password_type_app_lock"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_21

    .line 702
    :cond_14
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "mz_password_type_document"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_21

    .line 695
    :cond_1d
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getScreenPasswordType()I

    move-result v0

    :goto_21
    return v0
.end method

.method public getScreenLockSummaryResId()I
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const p0, 0x7f120b29

    return p0

    .line 627
    :cond_e
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_34

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_30

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_30

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_30

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_30

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_30

    const p0, 0x7f120fa9

    return p0

    :cond_30
    const p0, 0x7f120ff3

    return p0

    :cond_34
    const p0, 0x7f120b46

    return p0
.end method

.method public getScreenPasswordVerifiedToken(Ljava/lang/String;JLcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;)V
    .registers 11

    .line 938
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "FlymeLockPasswordUtils"

    const-string p1, "password is empty or null"

    .line 939
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 943
    :cond_e
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    new-instance v5, Lcom/meizu/settings/security/FlymeLockPasswordUtils$4;

    invoke-direct {v5, p0, p4}, Lcom/meizu/settings/security/FlymeLockPasswordUtils$4;-><init>(Lcom/meizu/settings/security/FlymeLockPasswordUtils;Lcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;)V

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getSecreteModeFingerprintId()Ljava/lang/String;
    .registers 2

    .line 955
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "mz_fp_id_secrets_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleAssociateAccountClick(Landroid/app/Fragment;IZ)V
    .registers 5

    .line 891
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->isFlymeAccountLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 892
    invoke-virtual {p0, p2, p3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setAssociateFlymeAccountOpened(IZ)V

    goto :goto_13

    .line 895
    :cond_c
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->createBusinessStateChangeListenner(Landroid/app/Fragment;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->startFlymeAccountVerify(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;)V

    :goto_13
    return-void
.end method

.method public hasPassword()Z
    .registers 2

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 597
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isAppLockEnable()Z
    .registers 2

    .line 478
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    const-string v0, "access_control"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmeizu/security/AccessControlManager;

    .line 480
    invoke-virtual {p0}, Lmeizu/security/AccessControlManager;->getSwitchStatus()Z

    move-result p0

    return p0
.end method

.method public isAssociateFlymeAccountOpened(I)Z
    .registers 7

    .line 849
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->isFlymeAccountLogined(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p1, v0, :cond_18

    .line 855
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mz_applock_pwd_associate_account"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_2e

    :cond_18
    if-ne p1, v3, :cond_23

    .line 858
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mz_doc_pwd_associate_account"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_2e

    :cond_23
    const/4 v0, 0x4

    if-ne p1, v0, :cond_38

    .line 861
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mz_secrets_mode_password_associate_account"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_2e
    if-ne v0, v2, :cond_34

    .line 870
    invoke-virtual {p0, p1, v3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setAssociateFlymeAccountOpened(IZ)V

    return v3

    :cond_34
    if-ne v0, v3, :cond_37

    move v1, v3

    :cond_37
    return v1

    :cond_38
    if-nez p1, :cond_3b

    return v3

    :cond_3b
    return v1
.end method

.method public isDocumentLockEnable()Z
    .registers 3

    .line 682
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "mz_document_lock"

    .line 680
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public isFindPhoneOpened()Z
    .registers 3

    .line 462
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.meizu.account"

    .line 463
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 464
    array-length v0, v0

    if-nez v0, :cond_13

    goto :goto_20

    .line 468
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "com.meizu.flyme.FindPhone"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    :goto_20
    return v1
.end method

.method public isGuestModeEnabled()Z
    .registers 3

    .line 492
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_guard_mode"

    .line 490
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public isInSecretsMode()Z
    .registers 3

    .line 589
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "mz_private_mode_running"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_d

    move v0, v1

    :cond_d
    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .registers 2

    .line 616
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    return p0
.end method

.method public isPackageLockedByAppLock(Ljava/lang/String;)Z
    .registers 3

    .line 484
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    const-string v0, "access_control"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmeizu/security/AccessControlManager;

    .line 486
    invoke-virtual {p0, p1}, Lmeizu/security/AccessControlManager;->isAppProtected2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPasswordEnabled(I)Z
    .registers 3

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 536
    :cond_10
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isSecretsModeEnabled()Z

    move-result p0

    return p0

    .line 534
    :cond_15
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isGuestModeEnabled()Z

    move-result p0

    return p0

    .line 528
    :cond_1a
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAppLockEnable()Z

    move-result p0

    return p0

    .line 530
    :cond_1f
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isDocumentLockEnable()Z

    move-result p0

    return p0

    .line 532
    :cond_24
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result p0

    return p0
.end method

.method public isScreenLockEnabled()Z
    .registers 3

    .line 608
    iget v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isLockScreenDisabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 612
    :cond_a
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public isScreenPasswordEnalbed()Z
    .registers 2

    .line 604
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isSecretsModeEnabled()Z
    .registers 5

    .line 547
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "mz_private_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 549
    :goto_f
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternUtils;->hasFlymePassword(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    if-eqz v0, :cond_1b

    move v1, v2

    :cond_1b
    return v1
.end method

.method public isSecretsModePasswordFileExist()Z
    .registers 2

    .line 542
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x2

    .line 543
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->hasFlymePassword(I)Z

    move-result p0

    return p0
.end method

.method public isSimplePassword(I)Z
    .registers 2

    const/high16 p0, 0x20000

    if-eq p1, p0, :cond_b

    const/high16 p0, 0x30000

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public needFinishSecretsModeActivity()Z
    .registers 2

    const/4 v0, 0x4

    .line 1015
    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isPasswordEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isInSecretsMode()Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public saveBindFingerprintId(Ljava/lang/String;I)V
    .registers 7

    .line 971
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getGuestModeFingerprintId()Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getSecreteModeFingerprintId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1a

    .line 974
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 975
    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveSecreteModeFingerprintId(Ljava/lang/String;)V

    .line 977
    :cond_16
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveGuestModeFingerprintId(Ljava/lang/String;)V

    goto :goto_29

    :cond_1a
    const/4 v1, 0x1

    if-ne p2, v1, :cond_29

    .line 979
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 980
    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveGuestModeFingerprintId(Ljava/lang/String;)V

    .line 982
    :cond_26
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveSecreteModeFingerprintId(Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public saveGuestModeFingerprintId(Ljava/lang/String;)V
    .registers 3

    .line 967
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "mz_fp_id_guest_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public savePassword(IILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    if-eqz p1, :cond_1f

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1b

    const/4 p4, 0x2

    if-eq p1, p4, :cond_17

    const/4 p2, 0x3

    if-eq p1, p2, :cond_13

    const/4 p2, 0x4

    if-eq p1, p2, :cond_f

    goto :goto_22

    .line 255
    :cond_f
    invoke-direct {p0, p3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveSecretModePassword(Ljava/lang/String;)V

    goto :goto_22

    .line 252
    :cond_13
    invoke-direct {p0, p3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveGuestModePassword(Ljava/lang/String;)V

    goto :goto_22

    .line 248
    :cond_17
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveAppLockPassword(ILjava/lang/String;)V

    goto :goto_22

    .line 245
    :cond_1b
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveDocumentPassword(ILjava/lang/String;)V

    goto :goto_22

    .line 242
    :cond_1f
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->saveScreenPassword(ILjava/lang/String;Ljava/lang/String;Z)V

    :goto_22
    return-void
.end method

.method public savePasswordFrontFour(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iget p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-virtual {v0, p2, p0}, Lcom/android/internal/widget/LockPatternUtils;->legacyPasswordToHash([BI)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 451
    :try_start_12
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_38

    :catch_1d
    move-exception p0

    .line 453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "save _pwd_front_four exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlymeLockPasswordUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method public saveSecreteModeFingerprintId(Ljava/lang/String;)V
    .registers 3

    .line 959
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "mz_fp_id_secrets_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setAppLockEnable(Z)V
    .registers 2

    const-string p0, "access_control"

    .line 502
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 501
    invoke-static {p0}, Lmeizu/security/IAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/security/IAccessControlManager;

    move-result-object p0

    .line 504
    :try_start_a
    invoke-interface {p0, p1}, Lmeizu/security/IAccessControlManager;->setSwitchStatus(Z)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 506
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public setAssociateFlymeAccountOpened(IZ)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 879
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "mz_applock_pwd_associate_account"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_20

    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 882
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "mz_doc_pwd_associate_account"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_20

    :cond_16
    const/4 v0, 0x4

    if-ne p1, v0, :cond_20

    .line 885
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "mz_secrets_mode_password_associate_account"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_20
    :goto_20
    return-void
.end method

.method public setDocumentLockEnable(Z)V
    .registers 3

    .line 686
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "mz_document_lock"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setGuestModeEnalbed(Z)V
    .registers 3

    .line 496
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_guard_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setLockSettingsValue(Ljava/lang/String;I)V
    .registers 6

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    int-to-long v1, p2

    iget p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    invoke-interface {v0, p1, v1, v2, p0}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p0

    .line 829
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public setScreenLockEnable(Z)V
    .registers 7

    .line 651
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mUserId:I

    .line 652
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const-string v1, "lockscreen.password_type_mz_backup"

    const/4 v2, 0x0

    .line 653
    invoke-direct {p0, v1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getLocksSettingsValue(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "lockscreen.password_type"

    if-eqz p1, :cond_22

    if-nez v0, :cond_28

    if-eqz v3, :cond_1e

    .line 658
    invoke-virtual {p0, v4, v3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setLockSettingsValue(Ljava/lang/String;I)V

    .line 659
    invoke-virtual {p0, v1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setLockSettingsValue(Ljava/lang/String;I)V

    goto :goto_28

    .line 662
    :cond_1e
    invoke-virtual {p0, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Z)V

    goto :goto_28

    .line 667
    :cond_22
    invoke-virtual {p0, v1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setLockSettingsValue(Ljava/lang/String;I)V

    .line 668
    invoke-virtual {p0, v4, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setLockSettingsValue(Ljava/lang/String;I)V

    .line 672
    :cond_28
    :goto_28
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->updateSecurityIndex()V

    return-void
.end method

.method public setScreenLockEnableAndDisableSecretsModeIfNeed(Z)V
    .registers 2

    .line 643
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setScreenLockEnable(Z)V

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 646
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setSecretsModeEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setSecretsModeEnabled(Z)V
    .registers 5

    .line 554
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "private_mode_switch_reason"

    const-string v2, "settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 556
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_private_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 558
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setSecretsModeRunning(Z)V

    if-eqz p1, :cond_26

    .line 560
    new-instance p1, Landroid/content/Intent;

    const-string v0, "flyme.intent.action.START_PRIVACY_MODE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.meizu.privacy"

    .line 561
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 565
    :cond_26
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->updateSecurityIndex()V

    return-void
.end method

.method public setSecretsModeRunning(Z)V
    .registers 5

    .line 569
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "private_mode_switch_reason"

    const-string v2, "settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 571
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_private_mode_running"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.SWITCH_PRIVATE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_mode_on"

    .line 574
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 575
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 576
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public startFaceManagementFragment(Landroid/app/Fragment;I)V
    .registers 5

    .line 1035
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->startBootFaceRecognitionService(Landroid/content/Context;)V

    .line 1036
    new-instance p0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/meizu/settings/MzSettingsActivity$MzFaceActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, ":settings:show_fragment_as_subsetting"

    const/4 v1, 0x1

    .line 1037
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "password_confirmed"

    const/4 v1, 0x0

    .line 1038
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    .line 1039
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1040
    invoke-virtual {p1, p0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startFlymeAccountVerify(Landroid/app/Fragment;)V
    .registers 2

    .line 900
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->createBusinessStateChangeListenner(Landroid/app/Fragment;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->startFlymeAccountVerify(Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;)V

    return-void
.end method
