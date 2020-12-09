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

    .line 1059
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V
    .registers 3

    .line 1059
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1062
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1063
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 1065
    if-nez p1, :cond_13

    .line 1066
    return-void

    .line 1069
    :cond_13
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->getSendingUserId()I

    move-result p1

    .line 1070
    const/4 p2, -0x1

    if-eq p1, p2, :cond_34

    .line 1071
    sget-boolean p2, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-eqz p2, :cond_1f

    .line 1072
    goto :goto_29

    :cond_1f
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$500(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/UserManagerInternal;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    .line 1073
    :goto_29
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result p2

    if-eq p1, p2, :cond_34

    .line 1075
    return-void

    .line 1078
    :cond_34
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenu()V

    .line 1079
    goto :goto_50

    .line 1080
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected intent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputMethodManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :goto_50
    return-void
.end method
