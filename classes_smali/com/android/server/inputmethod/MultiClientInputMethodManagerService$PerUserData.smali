.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PerUserData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;
    }
.end annotation


# instance fields
.field private mClientIdToClientMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private final mOnWorkerThreadServiceConnection:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;

.field mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method constructor <init>(ILandroid/view/inputmethod/InputMethodInfo;ILcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "inputMethodInfo"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "initialState"  # I
    .param p4, "callback"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    .line 799
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    .line 802
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    .line 805
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    .line 851
    iput p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mUserId:I

    .line 852
    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 853
    iput p3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    .line 854
    new-instance v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;

    invoke-direct {v0, p0, p4}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mOnWorkerThreadServiceConnection:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;

    .line 856
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 762
    iget v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mUserId:I

    return v0
.end method


# virtual methods
.method addClientLocked(IILcom/android/internal/view/IInputMethodClient;I)V
    .registers 12
    .param p1, "uid"  # I
    .param p2, "pid"  # I
    .param p3, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p4, "selfReportedDisplayId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 907
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 908
    const-string v0, "MultiClientInputMethodManagerService"

    const-string v1, "The same client is added multiple times"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-void

    .line 911
    :cond_e
    new-instance v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;

    invoke-direct {v0, p0, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;-><init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;Lcom/android/internal/view/IInputMethodClient;)V

    .line 913
    .local v0, "deathRecipient":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;
    :try_start_13
    invoke-interface {p3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_4d

    .line 916
    nop

    .line 917
    new-instance v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    invoke-direct {v1, p3, p1, p2, p4}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;-><init>(Lcom/android/internal/view/IInputMethodClient;III)V

    .line 919
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 920
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClientId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 922
    iget v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3a

    goto :goto_4c

    .line 925
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    iget v3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClientId:I

    iget v4, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mPid:I

    iget v5, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    iget v6, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mSelfReportedDisplayId:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/inputmethod/IMultiClientInputMethod;->addClient(IIII)V

    .line 928
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4a} :catch_4b

    .line 931
    goto :goto_4c

    .line 929
    :catch_4b
    move-exception v2

    .line 934
    :goto_4c
    return-void

    .line 914
    .end local v1  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catch_4d
    move-exception v1

    .line 915
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method bindServiceLocked(Landroid/content/Context;I)Z
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 860
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.inputmethodservice.MultiClientInputMethodService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 862
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 863
    const-string v1, "android.intent.extra.client_label"

    const v2, 0x104030b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "android.intent.extra.client_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 872
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mOnWorkerThreadServiceConnection:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;

    .line 874
    invoke-virtual {v5}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 872
    const v6, 0x44000005  # 512.0003f

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "ipw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1001
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentInputMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentInputMethodInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    if-eqz v1, :cond_5e

    .line 1008
    const-string v1, ">>Dump CurrentInputMethod>>"

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_15e

    .line 1011
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IMultiClientInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_43} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_43} :catch_44
    .catchall {:try_start_3a .. :try_end_43} :catchall_15e

    .line 1014
    goto :goto_59

    .line 1012
    :catch_44
    move-exception v1

    .line 1013
    .local v1, "e":Ljava/lang/Exception;
    :try_start_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_59
    const-string v1, "<<Dump CurrentInputMethod<<"

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    :cond_5e
    const-string/jumbo v1, "mDisplayIdToImeWindowTokenMap="

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 1020
    .local v2, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    .end local v2  # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    goto :goto_6a

    .line 1023
    :cond_97
    const-string/jumbo v1, "mClientMap="

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1025
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_a2
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_df

    .line 1027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    const-string v3, " InputMethodClientInfo="

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    .line 1030
    .local v3, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-eqz v3, :cond_dc

    .line 1031
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1032
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->dumpLocked(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1025
    .end local v3  # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_dc
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    .line 1036
    .end local v2  # "i":I
    :cond_df
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1037
    const-string/jumbo v2, "mClientIdToClientMap="

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1039
    nop

    .local v1, "i":I
    :goto_ec
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_159

    .line 1040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    const-string v2, " InputMethodClientInfo="

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    .line 1043
    .local v2, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-eqz v2, :cond_126

    .line 1044
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1045
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->dumpLocked(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1048
    :cond_126
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v3, :cond_156

    .line 1050
    const-string v3, ">>DumpClientStart>>"

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_132
    .catchall {:try_start_45 .. :try_end_132} :catchall_15e

    .line 1053
    :try_start_132
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_13b} :catch_13c
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_13b} :catch_13c
    .catchall {:try_start_132 .. :try_end_13b} :catchall_15e

    .line 1056
    goto :goto_151

    .line 1054
    :catch_13c
    move-exception v3

    .line 1055
    .local v3, "e":Ljava/lang/Exception;
    :try_start_13d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Failed to dump client:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_151
    const-string v3, "<<DumpClientEnd<<"

    invoke-virtual {p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    .end local v2  # "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_156
    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    .line 1060
    .end local v1  # "i":I
    :cond_159
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1061
    monitor-exit v0

    .line 1062
    return-void

    .line 1061
    :catchall_15e
    move-exception v1

    monitor-exit v0
    :try_end_160
    .catchall {:try_start_13d .. :try_end_160} :catchall_15e

    throw v1
.end method

.method getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .registers 3
    .param p1, "clientId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    return-object v0
.end method

.method getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .registers 4
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    return-object v0
.end method

.method onInputMethodConnectedLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 939
    .local v0, "numClients":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_45

    .line 940
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    .line 941
    .local v2, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    iget v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MultiClientInputMethodManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    return-void

    .line 944
    :cond_2f
    nop

    .line 950
    :try_start_30
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClientId:I

    iget v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    iget v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mPid:I

    iget v7, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mSelfReportedDisplayId:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/internal/inputmethod/IMultiClientInputMethod;->addClient(IIII)V

    .line 953
    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_40} :catch_41

    .line 955
    goto :goto_42

    .line 954
    :catch_41
    move-exception v3

    .line 939
    .end local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 957
    .end local v1  # "i":I
    :cond_45
    return-void
.end method

.method onInputMethodDisconnectedLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 962
    .local v0, "numClients":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_55

    .line 963
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    .line 964
    .local v2, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    iget v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_51

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4e

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3c

    const/4 v7, 0x4

    if-eq v3, v7, :cond_21

    goto :goto_52

    .line 983
    :cond_21
    :try_start_21
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    iget v7, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    invoke-interface {v3, v7, v5}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29

    .line 986
    goto :goto_2a

    .line 985
    :catch_29
    move-exception v3

    .line 987
    :goto_2a
    iput v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 988
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    .line 989
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    .line 990
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_52

    .line 991
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    .line 992
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    goto :goto_52

    .line 973
    :cond_3c
    iput v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 974
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    .line 975
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    .line 976
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_52

    .line 977
    iget-object v3, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    .line 978
    iput-object v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    goto :goto_52

    .line 970
    :cond_4e
    iput v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 971
    goto :goto_52

    .line 967
    :cond_51
    nop

    .line 962
    .end local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_52
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 997
    .end local v1  # "i":I
    :cond_55
    return-void
.end method

.method removeClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .registers 5
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientMap:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    .line 898
    .local v0, "info":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-eqz v0, :cond_15

    .line 899
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mClientIdToClientMap:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClientId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 901
    :cond_15
    return-object v0
.end method

.method unbindServiceLocked(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 879
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mOnWorkerThreadServiceConnection:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 880
    return-void
.end method
