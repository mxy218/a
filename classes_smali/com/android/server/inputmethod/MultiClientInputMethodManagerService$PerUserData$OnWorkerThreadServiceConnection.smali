.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnWorkerThreadServiceConnection"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

.field private final mData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;)V
    .registers 3

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->mData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 822
    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->mCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    .line 823
    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 845
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->mCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    .line 841
    iget-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->mCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->mData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->onBindingDied(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V

    .line 842
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 828
    iget-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->mCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->mData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 829
    invoke-static {p2}, Lcom/android/internal/inputmethod/IMultiClientInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    move-result-object p2

    .line 828
    invoke-virtual {p1, v0, p2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->onServiceConnected(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;Lcom/android/internal/inputmethod/IMultiClientInputMethod;)V

    .line 830
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 835
    iget-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->mCallback:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$OnWorkerThreadServiceConnection;->mData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->onServiceDisconnected(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V

    .line 836
    return-void
.end method
