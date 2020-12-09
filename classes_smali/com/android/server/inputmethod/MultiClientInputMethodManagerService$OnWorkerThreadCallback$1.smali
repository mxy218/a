.class Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;)V
    .registers 2

    .line 480
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback$1;->this$0:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 483
    iget-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback$1;->this$0:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->onPackageAdded(Landroid/content/Intent;)V

    .line 484
    return-void
.end method
