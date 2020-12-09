.class Lcom/android/server/notification/NotificationManagerService$9;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lorg/lineageos/internal/notification/LineageNotificationLights$LedUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 1893
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 1895
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1896
    return-void
.end method
