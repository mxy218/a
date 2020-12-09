.class Lcom/android/server/autofill/AutofillManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 1

    .line 169
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyFinishedSessionsLocked()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 162
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_17

    const-string p1, "AutofillManagerService"

    const-string p2, "Close system dialogs"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_17
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 169
    :try_start_1e
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    sget-object v0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$1$1-WNu3tTkxodB_LsZ7dGIlvrPN0;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$1$1-WNu3tTkxodB_LsZ7dGIlvrPN0;

    invoke-static {p2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$200(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 170
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_31

    .line 171
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService;->access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    goto :goto_34

    .line 170
    :catchall_31
    move-exception p2

    :try_start_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p2

    .line 173
    :cond_34
    :goto_34
    return-void
.end method
