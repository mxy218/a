.class Lcom/android/server/am/ActivityManagerService$18;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 9126
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$18;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitReached(I)V
    .registers 5

    .line 9129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sent too many Binders to uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9130
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9129
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 9131
    invoke-static {}, Landroid/os/BinderProxy;->dumpProxyDebugInfo()V

    .line 9132
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2f

    .line 9133
    const-string p1, "Skipping kill (uid is SYSTEM)"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 9135
    :cond_2f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$18;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string v2, "Too many Binders sent to SYSTEM"

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    .line 9138
    :goto_3e
    return-void
.end method
