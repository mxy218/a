.class Lcom/android/server/am/ActivityManagerService$3;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
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

    .line 930
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    .line 933
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "activity_start_pss_defer"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->access$102(Lcom/android/server/am/ActivityManagerService;J)J

    .line 938
    return-void
.end method
