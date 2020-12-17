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

    .line 3192
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/locksettings/LockSettingsService;
    .param p2, "x1"  # Lcom/android/server/locksettings/LockSettingsService$1;

    .line 3192
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 6
    .param p1, "token"  # [B
    .param p2, "userId"  # I
    .param p3, "callback"  # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 3198
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$1200(Lcom/android/server/locksettings/LockSettingsService;[BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 3199
    :catch_7
    move-exception v0

    .line 3200
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 5
    .param p1, "handle"  # J
    .param p3, "userId"  # I

    .line 3211
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$1400(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result v0

    return v0
.end method

.method public removeEscrowToken(JI)Z
    .registers 5
    .param p1, "handle"  # J
    .param p3, "userId"  # I

    .line 3206
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result v0

    return v0
.end method

.method public setLockCredentialWithToken([BIJ[BII)Z
    .registers 18
    .param p1, "credential"  # [B
    .param p2, "type"  # I
    .param p3, "tokenHandle"  # J
    .param p5, "token"  # [B
    .param p6, "requestedQuality"  # I
    .param p7, "userId"  # I

    .line 3217
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1500(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3222
    :try_start_d
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->access$1600(Lcom/android/server/locksettings/LockSettingsService;[BIJ[BII)Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1c

    return v0

    .line 3224
    :catch_1c
    move-exception v0

    .line 3225
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3218
    .end local v0  # "re":Landroid/os/RemoteException;
    :cond_22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This operation requires secure lock screen feature."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unlockUserWithToken(J[BI)Z
    .registers 7
    .param p1, "tokenHandle"  # J
    .param p3, "token"  # [B
    .param p4, "userId"  # I

    .line 3232
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->access$1700(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3233
    :catch_7
    move-exception v0

    .line 3234
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
