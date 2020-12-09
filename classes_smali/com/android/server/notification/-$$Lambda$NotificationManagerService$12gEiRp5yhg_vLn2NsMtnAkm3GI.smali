.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12gEiRp5yhg_vLn2NsMtnAkm3GI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12gEiRp5yhg_vLn2NsMtnAkm3GI;->f$0:Lcom/android/server/notification/NotificationManagerService;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$12gEiRp5yhg_vLn2NsMtnAkm3GI;->f$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$registerDeviceConfigChange$0$NotificationManagerService(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
