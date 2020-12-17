.class final Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImmsBroadcastReceiverForAllUsers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 1061
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "x1"  # Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1064
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    .line 1067
    .local v1, "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    if-nez v1, :cond_13

    .line 1068
    return-void

    .line 1071
    :cond_13
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->getSendingUserId()I

    move-result v2

    .line 1072
    .local v2, "senderUserId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    .line 1073
    sget-boolean v3, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-eqz v3, :cond_20

    .line 1074
    move v3, v2

    goto :goto_2a

    :cond_20
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$200(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    .line 1075
    .local v3, "resolvedUserId":I
    :goto_2a
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    if-eq v3, v4, :cond_35

    .line 1077
    return-void

    .line 1080
    .end local v3  # "resolvedUserId":I
    :cond_35
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenu()V

    .line 1081
    .end local v1  # "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    .end local v2  # "senderUserId":I
    goto :goto_51

    .line 1082
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :goto_51
    return-void
.end method
