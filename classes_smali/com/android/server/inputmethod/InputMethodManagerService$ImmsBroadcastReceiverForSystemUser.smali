.class final Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImmsBroadcastReceiverForSystemUser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 1029
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V
    .registers 3

    .line 1029
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1032
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1033
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 1034
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_50

    .line 1037
    :cond_15
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1038
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onActionLocaleChanged()V

    goto :goto_4f

    .line 1039
    :cond_23
    const-string v0, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1044
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1049
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4f

    .line 1051
    :cond_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected intent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputMethodManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :goto_4f
    return-void

    .line 1035
    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1036
    return-void
.end method
