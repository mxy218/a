.class Lcom/android/server/BatteryService$3;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Lorg/lineageos/internal/notification/LineageBatteryLights$LedUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)V

    .line 275
    return-void
.end method
