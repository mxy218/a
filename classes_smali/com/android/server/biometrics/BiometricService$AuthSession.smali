.class final Lcom/android/server/biometrics/BiometricService$AuthSession;
.super Ljava/lang/Object;
.source "BiometricService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AuthSession"
.end annotation


# instance fields
.field private mAuthenticatedTimeMs:J

.field final mBundle:Landroid/os/Bundle;

.field final mCallingPid:I

.field final mCallingUid:I

.field final mCallingUserId:I

.field final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private mConfirmDeviceCredentialCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

.field final mModalitiesMatched:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mModalitiesWaiting:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mModality:I

.field final mOpPackageName:Ljava/lang/String;

.field final mRequireConfirmation:Z

.field final mSessionId:J

.field private mStartTimeMs:J

.field private mState:I

.field final mToken:Landroid/os/IBinder;

.field mTokenEscrow:[B

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;Ljava/util/HashMap;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIIZLandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/IBinder;",
            "JI",
            "Landroid/hardware/biometrics/IBiometricServiceReceiver;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "IIIIZ",
            "Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;",
            ")V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    .line 168
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 186
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    .line 187
    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    .line 188
    iput-wide p4, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    .line 189
    iput p6, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    .line 190
    iput-object p7, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 191
    iput-object p8, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    .line 192
    iput-object p9, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    .line 193
    iput p10, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    .line 194
    iput p11, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    .line 195
    iput p12, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    .line 196
    iput p13, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    .line 197
    iput-boolean p14, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    .line 198
    iput-object p15, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mConfirmDeviceCredentialCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 200
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isFromConfirmDeviceCredential()Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 202
    :try_start_2f
    invoke-interface {p3, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    .line 205
    goto :goto_3b

    .line 203
    :catch_33
    move-exception p1

    .line 204
    const-string p2, "BiometricService"

    const-string p3, "Unable to link to death"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_3b
    :goto_3b
    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/BiometricService$AuthSession;)J
    .registers 3

    .line 141
    iget-wide v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mAuthenticatedTimeMs:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J
    .registers 3

    .line 141
    iput-wide p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mAuthenticatedTimeMs:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)J
    .registers 3

    .line 141
    iget-wide v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J
    .registers 3

    .line 141
    iput-wide p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mStartTimeMs:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)I
    .registers 1

    .line 141
    iget p0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    return p0
.end method

.method static synthetic access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I
    .registers 2

    .line 141
    iput p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/BiometricService$AuthSession;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mConfirmDeviceCredentialCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/android/server/biometrics/BiometricService$AuthSession;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mConfirmDeviceCredentialCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    return-object p1
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricService$AuthSession$pTLzev-9zTLzcrAMmVYjbC4Dbjc;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$AuthSession$pTLzev-9zTLzcrAMmVYjbC4Dbjc;-><init>(Lcom/android/server/biometrics/BiometricService$AuthSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method

.method containsCookie(I)Z
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 219
    return v1

    .line 221
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    if-eqz v0, :cond_1f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 222
    return v1

    .line 224
    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method isCrypto()Z
    .registers 5

    .line 210
    iget-wide v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isFromConfirmDeviceCredential()Z
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    const-string v1, "from_confirm_device_credential"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$binderDied$0$BiometricService$AuthSession()V
    .registers 4

    .line 231
    const-string v0, "BiometricService"

    const-string v1, "Binder died, killing ConfirmDeviceCredential"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mConfirmDeviceCredentialCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    if-nez v1, :cond_11

    .line 233
    const-string v1, "Callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 238
    :cond_11
    :try_start_11
    invoke-interface {v1}, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;->cancel()V

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mConfirmDeviceCredentialCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    .line 242
    goto :goto_1e

    .line 240
    :catch_18
    move-exception v1

    .line 241
    const-string v2, "Unable to send cancel"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    :goto_1e
    return-void
.end method
