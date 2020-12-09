.class final Lcom/android/server/timezone/RulesManagerServiceHelperImpl;
.super Ljava/lang/Object;
.source "RulesManagerServiceHelperImpl.java"

# interfaces
.implements Lcom/android/server/timezone/PermissionHelper;
.implements Ljava/util/concurrent/Executor;
.implements Lcom/android/server/timezone/RulesManagerIntentHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private sendOperationIntent(Z)V
    .registers 4

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.timezone.RULES_UPDATE_OPERATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "staged"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    iget-object p1, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 72
    return-void
.end method


# virtual methods
.method public checkDumpPermission(Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    return p1
.end method

.method public enforceCallerHasPermission(Ljava/lang/String;)V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 54
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public sendTimeZoneOperationStaged()V
    .registers 2

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->sendOperationIntent(Z)V

    .line 60
    return-void
.end method

.method public sendTimeZoneOperationUnstaged()V
    .registers 2

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;->sendOperationIntent(Z)V

    .line 65
    return-void
.end method