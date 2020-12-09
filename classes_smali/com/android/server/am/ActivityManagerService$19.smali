.class Lcom/android/server/am/ActivityManagerService$19;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->watchDeviceProvisioning(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .line 9155
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$19;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 9158
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$19;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/am/ActivityManagerService;->access$1300(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 9159
    const-string/jumbo p1, "persist.sys.device_provisioned"

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 9160
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$19;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 9162
    :cond_1b
    return-void
.end method
