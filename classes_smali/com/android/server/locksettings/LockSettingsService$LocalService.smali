.class final Lcom/android/server/locksettings/LockSettingsService$LocalService;
.super Lcom/android/internal/widget/LockSettingsInternal;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 3207
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V
    .registers 3

    .line 3207
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 5

    .line 3213
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;[BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p1

    .line 3214
    :catch_7
    move-exception p1

    .line 3215
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 5

    .line 3226
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result p1

    return p1
.end method

.method public removeEscrowToken(JI)Z
    .registers 5

    .line 3221
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$1200(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result p1

    return p1
.end method

.method public setLockCredentialWithToken([BIJ[BII)Z
    .registers 18

    .line 3232
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1400(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3237
    :try_start_d
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->access$1500(Lcom/android/server/locksettings/LockSettingsService;[BIJ[BII)Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1c

    return v0

    .line 3239
    :catch_1c
    move-exception v0

    .line 3240
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3233
    :cond_22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unlockUserWithToken(J[BI)Z
    .registers 6

    .line 3247
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->access$1600(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 3248
    :catch_7
    move-exception p1

    .line 3249
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
